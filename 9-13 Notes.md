# Linux commands

**LS**
* -t to sort by the timestamp
* -l to see details

**cat**
* ">" makes a file if its not there, if there is a file then it would print to that file
  
**rm vs rmdir**
* rm used to remove anything
* rmdir used only to remove directory

**chmod**
* In ls -l, the 9 -, the first 3 are users, next 3 are group, last 3 is others
* Use chmod to change the permissions
  * chmod u/g/o - or + to add or remove permissions and then what permission, r/w/x, and then what file

**chown**
* Change owners

**chkconfig**
* Shows system services, and at what level they are running at, at level 1 is whne the system boots up

**crontab**
* Helps trigger processes at regular time intervals, also shows what are the scheduled tasks
 
**fpt**
* File transfer protocol
* Sends local file to remote server

**ps**
* Shows the processes running on the system, shows who envoked the procesess too
* Most of the time its root, sometimes you

**kill**
* Terminates a process
* use process ID, or process name
* -9 kills process forcefully

**ifconfig**
* Shows all network interfaces on your system

**nslookup**
* Asks DNS to look up domain or IP for something

**"ls -l | grep hw.c"**
* We look for hw.c within the ls -l list
* | is a pipe symbol, taking the left things and using it as the input for the right side

# Project
* Web app with backend JS or PHP
* Any app, but use open Source software to solve a problem
* What license you publish
* Be github
* Basic website that takes input and has an output, and takes to the database to save the information
* JS frameworks
* automated backups of backend using shell scritps, use cronjob to automate it 
