#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/slab.h>
#include <linux/list.h>
#include <linux/sched/signal.h>
#include <linux/kthread.h>
#include <linux/delay.h>
#include <linux/sched/task.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("amogh");
MODULE_DESCRIPTION("Kernel module to create a tree of child processes based on birthdays");

struct birthday {
    int day;
    int month;
    int year;
    struct list_head list;  
    struct task_struct *task;
};

static LIST_HEAD(task_list);

static struct birthday *b = NULL;

static int child_fn(void *data) {
    b = (struct birthday *)kmalloc(sizeof(struct birthday), GFP_KERNEL);
    if (!b) {
        printk(KERN_ERR "jackfruit: Memory allocation failed\n");
        return -ENOMEM;
    }
    b->day = ((int *)data)[0];
    b->month = ((int *)data)[1];
    INIT_LIST_HEAD(&b->list);
    list_add_tail(&b->list, &task_list);

    kthread_stop(current);
    return 0;
}

static int __init jack_init(void) {
    struct birthday *bday;
    int dates[5][2] = {
        {15, 1}, {10, 4}, {5, 6}, {12, 9}, {30, 12}
    };
    
    printk(KERN_INFO "JACKFRUIT Kernel Module Inserted: Creating Child Processes\n");
    INIT_LIST_HEAD(&task_list);

    for (int i = 0; i < 5; i++) {
        bday = kmalloc(sizeof(struct birthday), GFP_KERNEL);
        if (!bday) {
            printk(KERN_ALERT "Memory allocation failed!\n");
            return -ENOMEM;
        }
        bday->day = dates[i][0];
        bday->month = dates[i][1];
        INIT_LIST_HEAD(&bday->list); 
        list_add_tail(&bday->list, &task_list);
        kthread_run(child_fn, (void *)dates[i], "child_thread_%d", i);
    }

    list_for_each_entry(bday, &task_list, list) {  // Traverse the list
        printk(KERN_INFO "Birthday: %02d/%02d\n", bday->day, bday->month);
    }

    return 0;
}

static void __exit jack_exit(void) {
    struct birthday *temp, *next;
    list_for_each_entry_safe(temp, next, &task_list, list) {
        list_del(&temp->list);
        kfree(temp);
    }
    printk(KERN_INFO "Removed all child processes and freed memory\n");
}
module_init(jack_init);
module_exit(jack_exit);
