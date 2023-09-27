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
* GPL License
  * Four Freedoms:
    * Use software for any purpose
    * Change SW to suit needs
    * Share SW with others
    * Share changes you make
  * SW released under GNU GPL, will be free and stay free, no matter who changes or distributes the program
  * CopyLeft: Requires derivated works or modified versions to be released under the same license, but not adding more restrictions
* Apache Software Foundation
  * Freely use, modify, distribute and sell software licensed under apache without worrying about the use of software: personal, internal or commerical
  * Not considered copyleft, rather permissive. Lets you release modified parts of the code under any license of you choice, but required to release all unmod parts under same license (Apache)
  * Dif between Apache and GNU GPL?
    * GNU GPL is copyleft, have to relesae full source code and all rights to mod and distribute entire code
    * Apache, you are not forced to release mod versions, and you can choose to release mod versions under dif license.

# Lecture 3
* File structure:
  * Root directory "/": Top level directory in linux, starting point for all other directories
  * Sub-directories:
    * /bin: essential user command binaries, usually contains shells like bash, and commonly used commands like cp, mv, rm etc.
    * /boot: Has files of the kernel and boot image
    * /etc: contains core config files of the system used by admin like password file and networking files
      * passwd file: General user info, like user ID, group ID, home directories and shell
      * shadow file: Stores actual password encrypted, along with info about when the password expires, has the password been changed
        * Only readable by the root account
  * Special directories:
    * /proc: info about running processes
    * /sys: info about system hardware and devices
    * /root: Home directory of the root user
    * /opt: Has optinoal software packages
    * /srv: Data for services provided by the system
* Basic commands:
  * Take a look at Quiz Prep for list of what the commands do

# Lecture 4
* What is vi?
  * default editor that comes with Unix OS visual editor
  * Two modes, command mode, insert mode
    * Command mode: Commands which action to be taken on the file
    * Insert mode: Text is inserted into the file
  * :x vs :wq
    * Both save the file and quit, slight difference is that :x only writes the buffer to disk only if it has been mod and then quit.
    * :wq changes the mod time no matter what, :x does not change mod time if buffer hasn't changed
    * :q would just quit without saving
* What is ENV and environment variables?
  * Env is a shell command for linux, and unix. Used to print list of current environment variables if used Env without argument
  * Can also use to run a program in a custom environment
    * Example: If you had two python versions, 3.8 and 2.1, and you wanted to run 3.8, you would do env python3.8 script.py
      * What this does is that env looks through the $PATH environment variable to look for the first occurrence of python3.8, and then use that exe to run the program at hand
  * environment  Variables:
    * Named object that contains data used by one or more apps. Variable with name and value
    * Provides a simple way to share config settings between multiple apps and processes in linux
      * Ex: 'USER' environment variable that stores the name of the current user
      * Or PATH, list of directories that OS searches when you run a command or program such as ls
    * Defined for the current shell and inherited by any child shells or processes, used to pass info into processes that are spawned from the shell
    * *Shell Variables* are contained exclusively within the shell in which they were set, used to keep track of ephemeral data, like the current working directory

# Lab 1
* Need a hypervisor like Virutal Box, and then an ISO of ubuntu, then go through virtual box's new button and then go through those steps
* Steps for using vi to make a hello world:
  * touch hw.c, then vi hw.c
  * hit "i" to start inserting, then type this basic c command
  * ![image](https://github.com/Bizarrespace/254-Open-Source-SoftDev/assets/78052960/79889344-9200-4ac4-9346-19dd254b6006)
  * then esc, :wq to save the file
  * Then gcc hw.c to compile the file to get a a.out, run that a.out
* Steps to printing out the date
  * Use date command, and then format using "+%H:%M:%S    %d/%m/%y"
  * ![image](https://github.com/Bizarrespace/254-Open-Source-SoftDev/assets/78052960/5bb39d63-18ba-48aa-af92-280e08e30887)
* How to fix not being in sudoers problem:
  * su root, then go and edit /etc/sudoers, look for root followed by ALL = ...
  * Under that do Bizarrespace ALL = (ALL:ALL) ALL
  * That command gives the user Bizarrespace all permissions, this solves the problem or not being able to install packages at first

# Lab 3
* Module 3 Focus:
  * ~ represents your home directory
    * If you wanted to copy a file called "Jokes" from home to /tmp do this:
      * cp ~/jokes /tmp, rather than cp /home/keeper/jokes /tmp
    * If you do ~UserID, it refers to their userID rather than yours, dont even have to know where that person's home is, ~ takes care of it
  * Manual pages
    * Under synopsis, if there is a "[]" around a arugment that means that it is optional
    * -k and then keyword, search the manual pages for that keyword in the description of the manual pages
  * Finger usage
    * Use finger along with the name to find the userID, once we have the UserID we can do ~UserID to get the home directory of that user
  * Find file
    * find ~ -name "poem*"
    * we are using the find command, telling it where to start, in this case would be our home directory
    * We want to find the name of something, in our case poem* which is using a wildcard because we do not know if its poems or just poem, have to surround with "" if we want to use a wild card
    * instead of name could also look for a size of a file, a lot you can do with it
    * ., represents the current directory
    * Find the joke file, search through the current directory
      * find . -name "joke*"
  * What happens when you do just cd?
    * Goes to your home directory
  * What are the important print commands?
    * lpr: to request a print
      * Use -P argument to specify what printer you want
      * Ex: lpr -P hp14 thoughts
    * lpq: display print queue
    * lprm: remove from print queue
      * Ex: lprm -P hp14 737 (job number)

# Lab 4: Shell Scripting
* If statements 
```
#!/bin/bash

if [$1 -eq $2 ]; then
echo args are equal
else
echo args are not equal
fi

```
* if we do ./script 0 0
  * we see args are equal
  * ./script 0 1
    * we see args are not equal

* While statement
```
#!/bin/bash

n = $1
while [ $n -gt 0 ]; do
echo $n
let n = $n - 1

done
```
* ./script 5 we see
* 5 4 3 2 1

* Functions: Very limited, just product output streams, no first class function
```
#!/bin/bash

foo() {
echo hello $1
}

foo $1
```
* ./script world
* we see, hello world


