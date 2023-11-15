# Material 
* Lecture 5-12
* Lab 5-13 [Done]
* Quiz 3-4 [Done]

# Table of Contents
<h2> 

* [Lecture 5](#lecture-5)
* [Lecture 6](#lecture-6)
* [Lecture 7](#lecture-7)
* [Lecture 8](lecture-8)
* [Lecture 9](#lecture-9)
* [Lecture 10](#lecture-10)
* [Lecture 11](#lecture-11)
* [Lecture 12](#lecture-12)
* [Lab 5](#Lab-5)
* [Lab 6](#lab-6-Apache2)
* [Lab 7](#lab-7-Github-versioning)
* [Lab 8](#lab-8-Disk-Partitioning)
* [Lab 9](#lab-9-freeBSD)
* [Lab 10](#lab-10-Ubuntu-Utils)
* [Lab 11](#lab-11-Linux-Server)
* [Lab 12](#lab-12)
* [Lab 13](#lab-13)


</h2>

# Lecture 5
[Back to Top](#table-of-contents)
1. What is a package manager?
    - A. A tool for creating software packages
    - B. A collection of software tools that automate the process of installing, upgrading, configuring, and removing computer programs
    - C. A database of software dependencies and version information
    - D. A tool for managing software repositories
    - Answer: B

2. What does a software package contain?
    - A. Only the source code of a program
    - B. Metadata such as the software's name, description, version number, vendor, checksum, and a list of dependencies
    - C. Only the compiled version of a program
    - D. Only the dependencies of a program
    - Answer: B

3. What is the purpose of the apt-get install command?
    - A. To remove a package
    - B. To update the system’s database of packages
    - C. To install a package along with any dependencies
    - D. To clean the system of unused packages
    - Answer: C

4. What does the apt-get autoremove command do?
    - A. Installs new packages
    - B. Removes any orphaned dependencies
    - C. Updates the system’s database of packages
    - D. Removes a specific package
    - Answer: B

5. What is the function of the apt-cache search command?
    - A. It shows dependency information, version numbers, and a basic description of the package
    - B. It looks for other possible names if you know the name of a piece of software but apt-get install fails
    - C. It lists the packages that the specified packages depend upon
    - D. It generates a list of the currently installed packages on your system
    - Answer: B

6. What is a software repository?
    - A. A tool for managing software packages
    - B. A place where software packages are stored and can be retrieved for installation
    - C. A database of software dependencies and version information
    - D. A tool for creating software packages
    - Answer: B

7. What is the purpose of a local repository in Maven?
    - A. It is a directory on the computer where Maven runs, caching remote downloads and containing temporary build artifacts
    - B. It is a remote server where Maven stores all its packages
    - C. It is a tool for managing software packages
    - D. It is a database of software dependencies and version information
    - Answer: A

8. What is the location of the Debian Repository?
    - A. /etc/apt/source.list
    - B. /etc/apt/repository.list
    - C. /etc/debian/source.list
    - D. /etc/debian/repository.list
    - Answer: A

9. What does the apt-get purge command do?
    - A. It installs a package along with any dependencies
    - B. It removes a specific package, its downloaded package files, and configuration files
    - C. It updates the system’s database of packages
    - D. It removes any orphaned dependencies
    - Answer: B

10. What is the purpose of the apt-get update command?
    - A. It reads the /etc/apt/sources.list file and updates the system’s database of packages available for installation
    - B. It installs a package along with any dependencies
    - C. It removes a specific package, its downloaded package files, and configuration files
    - D. It removes any orphaned dependencies
    - Answer: A

## Short Answer Questions

1. Explain the difference between the `apt-get remove` and `apt-get purge` commands in the context of package management.

    - Answer: The `apt-get remove` command removes the specified package but leaves behind configuration files and potentially some dependencies. On the other hand, `apt-get purge` removes the package, its configuration files, and any unused dependencies. This is useful when you want to completely remove a package and its associated data from your system.

2. What is a software repository and how does it interact with a package manager? Please provide a brief explanation.

    - Answer: A software repository is a storage location from which software packages can be retrieved and installed on a computer. It contains packaged software, metadata about the software like its version, dependencies, and other necessary information. A package manager interacts with the repository to manage the process of installing, upgrading, configuring, and removing software packages. It reads the metadata to resolve dependencies and ensure the correct version of the software and its dependencies are installed. In addition, the package manager updates the list of available packages from the repository to keep track of the latest versions of packages and their dependencies.


# Lecture 6
[Back to Top](#table-of-contents)
* Dynamic vs static testing
  * Dynamic is testing as the code is running
  * Static is looking at the the code and documentation of the code
    
1. The five essential elements for software testing are:
    - **Test Strategy**: This outlines the types and amount of testing that seem best to find defects in the software.
    - **Testing Plan**: This is the part of the project plan that deals with the testing tasks, detailing who will do which tasks, when they will start and end, how much effort they will take, and their dependencies.
    - **Test Cases**: These are detailed examples prepared in advance that are used to check if the software meets its requirements.
    - **Test Data**: This includes both input test data and database test data used while executing test cases.
    - **Test Environment**: This is the setup where the testing is carried out, which should be as close as possible to the final deployment environment.

2. Best practices and strategies for test automation include:
    - Hiring a dedicated automation engineer or team.
    - Understanding that an automation tool is important, but it is not the solution to everything.
    - Selecting an automation tool that is familiar to your resources.
    - Knowing the application being tested.
    - Writing good manual test cases before automating them.
    - Identifying opportunities with automation.
    - Understanding that you cannot automate everything.
    - Avoiding GUI Automation when there is an alternate present.
    - Using automation for other useful purposes as well.
    - Treating automation as software development, following best practices like code reviews, using a framework or design pattern, and maintaining the code.

# Lecture 7
[Back to Top](#table-of-contents)
1. What is version control?
    - A. A system that records changes to a file or set of files over time.
    - B. A system that controls the versions of software.
    - C. A system that controls the versions of hardware.
    - D. A system that records changes to hardware over time.

Correct Answer: A

2. What is a Version Control System (VCS) useful for?
    - A. Keeping every version of an image or layout.
    - B. Reverting the entire project back to a previous state.
    - C. Comparing changes over time.
    - D. All of the above.

- Correct Answer: D

3. What is the "revision number" in version control?
    - A. The number of revisions made to a file.
    - B. The number or letter code identifying changes.
    - C. The number of files in a project.
    - D. The number of changes made to a file.

- Correct Answer: B

4. What is the purpose of revision control in software development?
    - A. To track and control changes to source code.
    - B. To maintain documentation and configuration files.
    - C. To locate and fix bugs.
    - D. All of the above.

- Correct Answer: D

5. What is a "working copy" in version control?
    - A. A copy of all files in a particular revision.
    - B. A copy of the file currently being worked on.
    - C. A copy of the file that is saved in the repository.
    - D. A copy of the file that is saved on the developer's computer.

- Correct Answer: A

6. What is the purpose of file locking in version control?
    - A. To prevent concurrent access problems.
    - B. To lock files for exclusive write access.
    - C. To prevent other developers from changing the files.
    - D. All of the above.

- Correct Answer: D

7. What is version merging in version control?
    - A. Merging two different versions of the software.
    - B. Merging two different files into one.
    - C. Merging changes into the central repository.
    - D. Merging two different versions of a file.

- Correct Answer: C

8. What is a good practice in version control?
    - A. Committing often.
    - B. Committing half-done work.
    - C. Not testing before committing.
    - D. Writing bad commit messages.

- Correct Answer: A

9. What is not a backup system?
    - A. Version Control System (VCS).
    - B. Cloud storage.
    - C. External hard drive.
    - D. All of the above.

- Correct Answer: A

10. What is one of Git’s most powerful features?
    - A. File locking.
    - B. Version merging.
    - C. Branching.
    - D. Committing.

- Correct Answer: C

* Difference btw Git and other VCS?
  * Git stores data as snapshots, but diffs
* What is a branch in Git?
  * Branch is a pointer to a specific commit
* Command to list all remote repos connected to current repo?
  * Git remote
* Command to fetch changes from remote repo without merging?
  * Git fetch
  * git pull to fetch changes and merge into current branch
* What is default branch name in Git?
  * Main
* Command to list all tags in repo?
  * git tag
* Command to delete a branch?
  * git branch -d 'name'
* Command to delete remote branch?
  * git push origin --delete

## Short answers
* Explain the difference between file locking and version merging in version control.
    * File locking is a mechanism that prevents multiple developers from overwriting each other's work by allowing only one developer to have write access to a file at a time. It ensures exclusive write access to a file, avoiding conflicts and maintaining data integrity.

    * Version merging, on the other hand, is the process of combining changes from different branches or versions of a file or project into a single unified version. It allows multiple developers to work on the same file simultaneously and merges their changes to create a cohesive final version that incorporates all the modifications.

* Discuss the importance of writing good commit messages in version control and provide an example of a good commit message.
    * Writing good commit messages is crucial in version control as it helps in understanding the history and purpose of changes made to a project. Clear and descriptive commit messages provide valuable context to developers, making it easier to track changes, collaborate, and troubleshoot issues. It also helps in maintaining a clean and organized commit history.

    * Example of a good commit message: "Fixed navigation issue between the home screen & about screen"

    * This commit message clearly states the problem that was addressed and the specific changes made, providing a concise summary of the commit's purpose.

# Lecture 8
[Back to Top](#table-of-contents)
* What is the Open Source definition?
  * Set of ten criteria that must be met for a software license to be labeled "Open Source"
* Can open SW be used for commercial purposes?
  * Yes only under certain conditions
* Can you restrict how ppl use Open Source licensed program?
  * No, user has the freedom to use it for whatever they want
* Can you call your program "Open Source" even if you don't use an approved license?
  * No, OS for SW licensed under OSI-approved license
* Is SW in public Domain considered open source?
  * Yes, but only under certain conditions and depending on jurisdiction
* Difference between Contributor license agreement(CLA) and a copyright assignment agreement(CAA)?
  * CLA grants a broad set of rights, while a CAA transfers copyright ownership
* Can you call a program Open Source simply b/c its written in an open source licensed language?
  * No never

# Lecture 9
[Back to Top](#table-of-contents)
# Short answer
* 1. What is the role of a project manager in a software development project and how does it contribute to the success of the project?
    * Role of project manager is to develop the "Vision" of the project, meaning having what needs to be done, layed out and a plan to get to get their. After the plan has been layed out the project manager is also responsible for making sure that the team is executing on the plan, and that each phrase of the project is being carried out. They also need to asign tasks correctly and resolve any conflicts on the way. 

* 2. What are the key steps to consider when embarking on a software development project and why are they important?
    * Chose what dev method, Agile, waterfall incremental, then a feasabiltiy analysis, analyze and determine the result, conduct industry best practices, design, measure and track progress, address automation, test, and implement practices grudually.
    * Agile is useful for emphasizing user stories and user inputs, it also embraces change allowing for products to evolve based on the user feedback and changing market conditions.
 
# Lecture 10
[Back to Top](#table-of-contents)

## In class notes for commands
* grep -i "sshd" Linux_2k.log
  * -i is case insenitive
  * grep -ci "sshd" Linux_2k.log
    * Returns how many lines that had sshd, case insensitive
  * grep -n "sshd" Linux_2k.log
    * Gives line number as well
  * grep -o "sshd" Linux_2k.log
    * returns the pattern that was matched in the output
  * grep -r "pattern" /directory
    * in all files that are present in the present directory, recursive pattern match
  * grep -v "sshd" Linux_2k.log
    * returns all lines that ssh does not match
  * grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" Linux_2k.log
    * Using regular expression, range from 0 through 9, 3 numbers
    * This is a general form that finds all the ip addresses in the log
    * use with -o to find just the IP addresses
    * using ^ at the beginnig of the "" will return if the pattern is only at the front of the line
    * using $ at the end will search for IP that is at the end of the ""

### Ping
  * ping google.com
    * sends request to server and gets a response back
  * ping -c 5 google.com
    * Stops after 5 pings

### Cron
  * crontab -l
    * lists all the crontabs
    * Use unstandard macros for crontabs (QUIZ) ,which one is unstandard

### Alias
  * rebinding a command to something else, making commands shorter for example
    * EX: alias ls = "ls -l"
      * Overridding ls command with ls -l every single time
  * alias lists out all the alias that you current have

### Ssh
  * School has own ssh machine that you can use
  * ssh longvu2000@ecs.fullerton.edu
    * look at school ssh page to find out how to exactly log in
   

# Lecture 11
[Back to Top](#table-of-contents)

# Lecture 12
[Back to Top](#table-of-contents)



# Quiz 4
[Back to Top](#table-of-contents)
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
[Back to Top](#table-of-contents)
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
[Back to Top](#table-of-contents)
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
[Back to Top](#table-of-contents)
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
 [Back to Top](#table-of-contents)
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
[Back to Top](#table-of-contents)
* Get ISO
* Boot from ISO, click install
* Follow on screen to set up configs
* Choose disk where you want to install FreeBSD
* Restart system after done with all configs and settups
* Should get a FreeBSD BootScreen if done all currently

# Lab 10 Ubuntu Utils 
[Back to Top](#table-of-contents)
* Crontab every hour with using non common macros
  * @hourly echo "Hello" >> ~/crondataHour.txt
 
* Grep to determine how may entries exist containing the word "cron" in syslog.x
  * sudo grep -c "cron" /var/log/syslog
 
* What is findmnt used for?
  * Search for and display mounted file systems or partitions
  * gives info about currently mounted filesystems, including source devices, mount points, file system tpyes, and mount options

* How to limit the listing to just ext4
  * findmnt -t ext4
 
* What is ss used for?
  * socket statistics to gather info from kernel space and plays faster than netstate util
    * info such as local address and port numbers
   
* How to filter out just TCP traffic
  * ss -t
 
* How to just get name and pid
  * ss -p

 # Lab 11 Linux Server
 [Back to Top](#table-of-contents)
* Installing Ubuntu server
  * Use ISO for server, follow the steps, allocate memory, chose mainly the defaults, and make sure that you install ssh for later

* Making users and groups
  * Sudo useradd <username>
    * Verify what users you have by doing tail /etc/passwd
  * Sudo groupadd <groupname>
    * Add joe to group
    * sudo usermod -a -G <groupname> <username>
    * Test whether we moved the user correctly getent group <groupname>

* Files & their permissions
  * touch test1 to make file
  * chmod 750 test1
    * This changes the permissions to give owner of file all permissions, read(4), write(2), execute(1) all added up is 7
    * Group only read(4) and execute(1), and others nothing
   
* What is the command to temp change your group association
  * newgrp -<groupname>

* How to change a file's group to another group?
  * chgrp <groupname> file
  * OR chown :newgroup file
 
* How to give users passwords
  * sudo passwd <username>
  * Will then be prompted to enter in a password
 
# Lab 12
 [Back to Top](#table-of-contents)

* To be able to connect to our ubuntu server we need to log in through ssh
  * First we have to set up port forwarding from 3022 to 22, reason is that we are using a virtual machine, and our host machine ssh uses 22, but the ssh in our virtual enviroment cant use the same port so we just port forward to a unused port of 3022 in this case so that the two can talk to each other.
  * so do ssh <user>@127.0.0.1 -p 3022
    * password going to be word

* File permissions
  * If the permissions of a file is 777, or rwxrwx---
    * Everyone can edit the file and run
    * But if the directory has permission of 700, then only the owner of the directory is able to make a new file in that directory
      * Once you change permission of file to 770, then others can not do anything to the file at hand
     
* Command to remove a user through admin ssh login
  * sudo userdel -r pete

 # Lab 13
  [Back to Top](#table-of-contents)
 * installing new desktops
   * sudo apt-get install kubuntu-desktop
     * Then after logging out of the desktop, at the bottom right, you see a gear selector, you can then change your desktop
 
# Quiz Structure
* 12 Questions
* Mimic how final is going to be so Im guessing some MCQ and then some essay style
