#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/sched.h>
#include <linux/mm.h>
#include <linux/kthread.h>
#include <linux/slab.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("AMOGH RATHOD");
MODULE_DESCRIPTION("Jackfruit Problem");

static struct task_struct *task;

struct task_data{
  struct task_struct *parent;
  int depth;
}

static void print_mmtree(struct task_struct *task, int depth){
  struct task_struct *child;
  struct vm_area_struct *vma;
  
  for (int i = 0; i < depth; i++) {
    printk(KERN_INFO"   | ");
  }

  printk(KERN_INFO"=> PID: %d , ParentPID: %d , MEMORY HEAP: %d", task->pid,task->real_parent_pid);

  //Memory Map 
  for (vma=task->mm->mmap;vma;vma->vm->next) {
    printk(KERN_INFO"%*cStart: %lx End: %lx Flags: %lx\n",depth*2," ",vma->vm_start,vma->vm_end,vma->vm_flags);
  }
  list_for_each_entry(child,&task->children,sibling){
    print_mmtree(child,depth+1);
  }
}
static int child_proc(void){
  struct task_struct *child;
  child = (*task_struct)kmalloc(sizeof(task_struct),GFP_KERNEL);
  if(!child){
    printk(KERN_INFO"Memeory allocation for child process failed!\n")
      return -ENOMEM;
}
int i;
  for (i =0;i<5;i++) {
    pid_t pid = kernel_thread((int(*)(void*))child,NULL,CLONE_FS,CLONE_FILES,CLONE_SIGHAND);
    if(pid<0){
      printk(KERN_INFO"Fork Failed!\n");
      kfree(child);
    }else {
      printk(KERN_INFO"Child process %d with PID: %d created.\n",i ,pid);

    }
  }
  return 0;
}




static int __init jack_init(void){
  printk(KERN_INFO"Hello JACK\n");
  child_proc();
  printk(KERN_INFO"Printing Process Tree\n");
  print_mmtree(&init_task,0);
  return 0;
};

static void __exit jack_exit(void){
  printk(KERN_INFO"Exiting Kernel: JACK.\n");
};


module_init(jack_init);
module_exit(jack_exit);
