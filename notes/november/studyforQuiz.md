# Material 
* Lecture 5-12
* Lab 5-13
* Quiz 3-4

<h1>Table of Contents</h1>
<h2> 
 
[Lab 5](#Lab-5)
</h2>
 

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
 
* How can you list all recently installed packages?
  * Use logs y dpkg, package managing system in Ubuntu
  * zcat -f /var/log/dpkg.log* | grep "\ install\ " | sort
    * \ used to excape spaces, saying that you want to match literal string "install"
   
* How can you keep all packages up to date?
  * sudo apt update: Updates local package database with latest info
  * Sudo apt upgrade: to upgraded installed packages to their latest update

# Lab 6 Apache2
* How to make a web page and host using Apache2
  * Have apache2 installed
  * Then go to Apache2 /var/www/html/index.html and change to have your html page that you want
  * Make sure web server has permission to acccess HTML file
  * Restart the server and access that page using http://localhost
 
* What is a web server?
  * Software and hardware that accepts requests via HTTP protocols. Able to process, store, and deliver web content to users that request it. Essentially, something that hosts your code so that others on the internet can see your html, css, java without needing acccess to your code or computer.
 
* How to use crontab command to cause Linux system to gen message every hour?
  * crontab -e: to open crontab file
  * 0 * * * * "Hello" >> ~/everyHour.txt
  * This command appends Hello to home directory of the current user and then the everyHour.txt file
 
# Lab 7 Github versioning
* We want to add to add our local repo to a remote repo on github
  * Before we can add, we must set up ssh if we have not done so alerady
    * On Git Bash do ssh-keygen -t ed25519 -C "your_email@example.com"
      * **This makes a new ssh key to use**
    * Now we want to add SSH key to ssh-agent:
      * Make sure that ssh-agent is running: Get-Service -Name ssh-agent | Set-Service -StartupType Manual
      * **Now add your private key to the agent:**
        * ssh-add C:\Users\YOU/.ssh/id_ed25519
          * Replace with your actual path and key name
Start-Service ssh-agent
      * **Now add ssh public key to Github**, copy the content of pub key: cat ~/.ssh/id_ed25519.pub
      * Go to Github settings, Under ssh GPG keys, new ssh key
      * Paste the copied key into Key field
      * Add ssh key
     
* Now to add local repo to remote reop
  * Make a new repo, git init
  * Now push local Main branch to Origin branch of newly created repo
    * git remote add origin ssh link
    * git push origin Main, no we are able to see our local branch on github
   
 # Lab 8 Disk Partitioning
 * What are some of the pros of disk partitioning?
   * Easier to organize files
   * Secure environment for specific users
   * Better organization of different file, for different reasons
* Steps for making a partition in ubuntu
  * Boot into disk that is not where your os is
    * Make a new disk if you have to on virtual box, plug usb for real laptop with ubuntu iso
  * Commands to see all our disks and partitions:
    * lsblk
    * and Fdisk -l
  * Now make new partition
    * fdisk /dev/sdb
      * p to print partition table of specified device
      * g to make a new GPT disklabel, partition table
      * n to make a new partition on the selected disk
        * This will then ask you able what the number of this partition is going to be, and then what from what sector to what sector to allocate the partition
        * Can do by section # or by just size
      * w to write to disk
   * Now to format the partition
     * sudo mke2fs -j /dev/sdb1
   * Now to mount it onto the disk
     * sudo mount /dev/sdb1 /newPartitionTest/
   * To mount each time we boot into system
     * change /etc/fstab
     * Get the UUID from disk in start menu
     * Now write into file
       * UUID=... /location ext3 defaults 0 0
    * Now the partition stays mounted after boot
 
# Lab 9 freeBSD
* Get ISO
* Boot from ISO, click install
* Follow on screen to set up configs
* Choose disk where you want to install FreeBSD
* Restart system after done with all configs and settups
* Should get a FreeBSD BootScreen if done all currently

# Lab 10 Ubuntu Utils 
* Crontab every hour with using non common macros
  * @hourly echo "Hello" >> ~/crondataHour.txt
 
* Grep to determine how may entries exist containing the word "cron" in syslog.x
  * sudo grep -c "cron" /var/log/syslog
 
* What is findmnt used for?
  * Search for and display mounted file systems or partitions
  * gives info about currently mounted filesystems, including source devices, mount points, file system tpyes, and mount options

# Quiz Structure
* 12 Questions
* Mimic how final is going to be so Im guessing some MCQ and then some essay style
