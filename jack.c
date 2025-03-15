#include <linux/delay.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/kthread.h>
#include <linux/list.h>
#include <linux/mm.h>
#include <linux/module.h>
#include <linux/sched.h>
#include <linux/slab.h>
#include <linux/kmod.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Amogh");
MODULE_DESCRIPTION("Kernel module to create a sorted linked list of child "
                   "processes based on birthdays and display memory segments");

struct birthday {
  int day;
  int month;
  int year;
  int level;
  pid_t pid;
  struct birthday *next;
};

static struct birthday *head = NULL;

void execute_pmap(pid_t pid) {
  char pid_str[10];
  char *argv[] = {"/usr/bin/pmap", pid_str, NULL};
  char *envp[] = {"HOME=/", "PATH=/sbin:/bin:/usr/sbin:/usr/bin", NULL};

  snprintf(pid_str, sizeof(pid_str), "%d", pid);

  printk(KERN_INFO "Executing pmap for PID: %s\n", pid_str);
  call_usermodehelper(argv[0], argv, envp, UMH_WAIT_EXEC);
}

static int birthday_thread(void *data) {
  struct birthday *node = (struct birthday *)data;
  node->pid = current->pid;
  printk(KERN_INFO
         "Kernel thread started for Birthday: %02d/%02d/%04d (PID %d)\n",
         node->day, node->month, node->year, node->pid);
  execute_pmap(node->pid);
  return 0;
}

static struct birthday *insert(int day, int month, int year, int level) {
  struct birthday *node = kmalloc(sizeof(struct birthday), GFP_KERNEL);
  if (!node) {
    printk(KERN_ERR "jackfruit: Memory allocation failed\n");
    return NULL;
  }
  node->day = day;
  node->month = month;
  node->year = year;
  node->level = level;
  node->pid = -1;
  node->next = NULL;

  if (!head ||
      (year < head->year ||
       (year == head->year &&
        (month < head->month || (month == head->month && day < head->day))))) {
    node->next = head;
    head = node;
  } else {
    struct birthday *temp = head;
    while (temp->next &&
           (temp->next->year < year ||
            (temp->next->year == year &&
             (temp->next->month < month ||
              (temp->next->month == month && temp->next->day < day))))) {
      temp = temp->next;
    }
    node->next = temp->next;
    temp->next = node;
  }

  kthread_run(birthday_thread, node, "birthday_thread_%d", level);
  return node;
}

static void assign_levels(void) {
  struct birthday *temp = head;
  int level = 0;
  while (temp) {
    temp->level = level++;
    temp = temp->next;
  }
}

static void print_birthdays(void) {
  struct birthday *temp = head;
  msleep(100);
  printk(KERN_INFO "\nBirthday Tree:\n");
  while (temp) {
    int indent = temp->level * 4;
    printk(KERN_INFO "%*s|- Birthday: %02d/%02d/%04d (Level %d, PID %d)\n",
           indent, "", temp->day, temp->month, temp->year, temp->level,
           temp->pid);
    temp = temp->next;
  }
}

static int __init jack_init(void) {
  int dates[7][3] = {{15, 1, 2000},  {10, 4, 1998}, {5, 6, 1995}, {12, 9, 1992},
                     {30, 12, 1990}, {22, 3, 1988}, {17, 7, 1985}};

  printk(KERN_INFO "JACKFRUIT Kernel Module Inserted: Creating Process List\n");

  for (int i = 0; i < 7; i++) {
    insert(dates[i][0], dates[i][1], dates[i][2], i);
  }

  assign_levels();
  print_birthdays();
  printk(KERN_INFO "\n");
  return 0;
}

static void free_list(void) {
  struct birthday *temp;
  while (head) {
    temp = head;
    head = head->next;
    printk(KERN_INFO "Freeing memory at: %px\n", temp);
    kfree(temp);
  }
}

static void __exit jack_exit(void) {
  free_list();
  printk(KERN_INFO "Code Segment: %px\n", (void *)jack_init);
  printk(KERN_INFO "Removed all child processes and freed memory\n");
}

module_init(jack_init);
module_exit(jack_exit);
