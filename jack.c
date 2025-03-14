#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/slab.h>
#include <linux/list.h>
#include <linux/kthread.h>
#include <linux/delay.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Amogh");
MODULE_DESCRIPTION("Kernel module to create a binary tree of child processes based on birthdays");

struct birthday {
    int day;
    int month;
    int year;
    struct birthday *next_level;
    struct birthday *same_level;
};

static struct birthday *root = NULL;

static struct birthday* insert(struct birthday *parent, int day, int month, int year) {
    struct birthday *node = kmalloc(sizeof(struct birthday), GFP_KERNEL);
    if (!node) {
        printk(KERN_ERR "jackfruit: Memory allocation failed\n");
        return NULL;
    }
    node->day = day;
    node->month = month;
    node->year = year;
    node->next_level = NULL;
    node->same_level = NULL;
    
    if (!parent) return node;
    
    struct birthday *temp = parent;
    while (temp->same_level)
        temp = temp->same_level;
    temp->same_level = node;
    
    return node;
}

static void print_levels(struct birthday *node) {
    int level = 0;
    int node_count = 0;
    struct birthday *current_level = node;

    while (current_level) {
        struct birthday *temp = current_level;
        printk(KERN_INFO "\nLevel %d:\n", level);
        while (temp) {
            printk(KERN_INFO "%02d/%02d/%04d ", temp->day, temp->month, temp->year);
            temp = temp->same_level;
            node_count++;
        }
        printk(KERN_INFO "\n");
        current_level = current_level->next_level;
        if (node_count == 1 || node_count == 3 || node_count == 7) {
            level++;
        }
    }
}

static int __init jack_init(void) {
    int dates[7][3] = {
        {15, 1, 2000}, {10, 4, 1998}, {5, 6, 1995}, {12, 9, 1992}, {30, 12, 1990}, {22, 3, 1988}, {17, 7, 1985}
    };
    
    printk(KERN_INFO "JACKFRUIT Kernel Module Inserted: Creating Level-Based Structure\n");
    
    root = insert(NULL, dates[0][0], dates[0][1], dates[0][2]);
    struct birthday *parent = root;
    struct birthday *current_level = root;
    
    for (int i = 1; i < 7; i++) {
        if (dates[i][2] > parent->year) {
            parent->next_level = insert(NULL, dates[i][0], dates[i][1], dates[i][2]);
            parent = parent->next_level;
            current_level = parent;
        } else {
            insert(current_level, dates[i][0], dates[i][1], dates[i][2]);
        }
    }
    
    print_levels(root);
    printk(KERN_INFO "\n");
    return 0;
}

static void free_tree(struct birthday *node) {
    while (node) {
        struct birthday *next_level = node->next_level;
        while (node) {
            struct birthday *temp = node;
            node = node->same_level;
            kfree(temp);
        }
        node = next_level;
    }
}

static void __exit jack_exit(void) {
    free_tree(root);
    printk(KERN_INFO "Removed all child processes and freed memory\n");
}

module_init(jack_init);
module_exit(jack_exit);
