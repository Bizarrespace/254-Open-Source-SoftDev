# Quiz 1

What does the acronym "GNU" stand for in the context of free software?

The operating system's memory is divided into two main spaces: 
___ and space.

Linux is exact same as UNIX? T/F

Is GNU General Public License (GPL) is a copyleft license? T/F

Under which license can software derived from GPL (GNU General Public License) be published?

What type of software license is the Apache License?

The Apache License allows for the use of software in proprietary, closed-source projects without requiring the release of the source code.
T/F

Under the Apache License, what is typically required when redistributing modified versions of the software?

What is the name of the Unix variant developed at the University of California, Berkeley, known for its contributions to the open-source community?

Who developed the first version of the Unix file system and the concept of hierarchical directory structures?

How can you enter insert mode in vi?

How do you save changes in vi without exiting the editor?

# Quiz 2
From what I remembered:
* '>>' to append, '>' to add to a file
* cd - goes back to the previous directory you were at
* cd . is just referring to the current directory, cd .. goes one up

# Lecture 1
* Who built linux and why:
  * Linus Torvalds, wanted free operating system kernal because Unix was too expensive for private users
* Unix Architecture
  * Hardware, Kernel, Shell, Application Program
    * Hardware: Physical components of the computer
    * Kernel: System's master control program, manages subsystems like file handling, memory etc.
      * Interface between users and hardware, complemented by shell for user-command interactions
    * Shell: command-line interface allowing users to interact with OS with commands
    * Application Programs: Software programs made by users to perform specific tasks, extending system's capabilites
* What is Linux?
  * Linux is derived from Unix
  * Only a kernel, Unix is a complete OS
  * BSD also example of a Unix derivative
* Linux Architecture:
  * Memory div into two main spaces: User space and Kernel space
  * User Space: Applications and user-level processes run
  * Kernel space: Reserved for core operating system and privileged operations
  * User space interacts with kernel through system calls, to maintain separation for security and stability
* UC Berkeley early adopters of Unix, distributed Unix tools called BSD to other unis
* GNU: Stands for GNU's Not Unix, made by Richard stallman, began with a compiler, GCC that would later combined with Linux to be a full OS
* CopyLeft: Everyone can run, copy and modify the program, but can not add restrictions of their own, keep the original restrictions

# Lecture 2
* 
