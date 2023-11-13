# Material 
* Lecture 5-12
* Lab 5-13
* Quiz 3-4

# Quiz 4
* Which command is used to restart the Apache2 web server on most Linux systems?
  * systemctl restart apache2
  * Reason for using systemctl is because this is the tool for controlling the init system, and services in Linux, Apache 2 is a service on linux, therefore we go through that management tool.
 
* Where are Apache2 log files typically stored on a Linux system?
  * /var/log/apache2
    * In var because can change size, log, and then apache2
   
* Which Apache2 configuration file contains global settings for the web server?
  * /etc/apache2/apache2.conf
    * /etc Just a place to hold config files and directories
   
* What is a conflict in context of VCS?
  * Two or more chnages overalp & cannot be auto merged
 
* Command used to view commit history in Git?
  * git log
 
* Command to stage changes in Git?
  * git add
 
* Purpose of Git's git push commmand?
  * Send changes to remote repo
 
* Key characterisitc of Copyleft license like GNU General Public license (GPL)?
  * Derivated works to be distributed under the same license
 
* File system commonly used in Linux Distros or disk partitions?
  * Ext4
 
* On GPT(GUID Partition Table) disk, what is max # of partitions that can be created?
  * 128 [0 - 127]
 
* What is GPT in context of disk partitioning?
  * GUID Parition table  

# Lab 5
* How to update system before install new software?
  * sudo apt-get update

* If you wanted to install nano use apt what command to use?
  * sudo apt-get install nano

* How to create a simple C file that prints hello world?
```C
#include <stdio.h>

int main() {
printf("Hello world")
return 0;
}
```
* What is a package?
  * Collection of different files, that all get put together into a single file. Reason for this is that software often needs a bunch of files to work, and they might need to be a in a specific place for sofware to work.
  * So to make this easier ubuntu uses packages to manage all these files needed for a certain software to work
# Quiz Structure
* 12 Questions
* Mimic how final is going to be so Im guessing some MCQ and then some essay style
