#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/kthread.h>
#include <linux/mm.h>
#include <linux/module.h>
#include <linux/sched.h>
#include <linux/slab.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("AMOGH RATHOD");
MODULE_DESCRIPTION("Jackfruit Problem");

static struct task_struct *task;

// Function to print process tree with memory mappings
void print_mmtree(struct task_struct *task, int depth) {
    struct task_struct *child;
    struct vm_area_struct *vma;

    for (int i = 0; i < depth; i++) {
        printk(KERN_INFO "   | ");
    }

    printk(KERN_INFO "=> PID: %d, Parent PID: %d", task->pid,
           task->real_parent ? task->real_parent->pid : -1);

    // Memory Map (only if task->mm is not NULL)
    if (task->mm) {
        for (vma = task->mm->mmap; vma; vma = vma->vm_next) {
            printk(KERN_INFO "%*cStart: %lx End: %lx Flags: %lx\n", depth * 2, ' ',
                   vma->vm_start, vma->vm_end, vma->vm_flags);
        }
    } else {
        printk(KERN_INFO "No memory map available for this process.");
    }

    list_for_each_entry(child, &task->children, sibling) {
        print_mmtree(child, depth + 1);
    }
}

// Child process function
int child_proc(void *data) {
    printk(KERN_INFO "Child process created!\n");
    return 0;
}

// Function to create multiple child processes
int create_children(void) {
    int i;
    for (i = 0; i < 5; i++) {
        struct task_struct *child = kthread_run(child_proc, NULL, "child_thread_%d", i);
        if (IS_ERR(child)) {
            printk(KERN_ERR "Failed to create child process %d\n", i);
        } else {
            printk(KERN_INFO "Child process %d created successfully\n", i);
        }
    }
    return 0;
}

// Kernel module initialization
static int __init jack_init(void) {
    printk(KERN_INFO "Hello JACK\n");
    create_children();
    printk(KERN_INFO "Printing Process Tree\n");
    print_mmtree(current, 0);
    return 0;
}

// Kernel module cleanup
static void __exit jack_exit(void) {
    printk(KERN_INFO "Exiting Kernel: JACK.\n");
}

module_init(jack_init);
module_exit(jack_exit);
