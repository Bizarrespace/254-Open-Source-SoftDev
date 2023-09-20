**File permission**
* If you wanted to add or change permissions have to use the chmod command
```
chmod ugo+rwx read.txt
```
What this does is changes the permissions of the read.txt file to add read, write, and execute permissions to the user,group, and other 

**WildCards**
*Allows you to specify more than one file at a time, if they match a requirement
* "*" matches any number of character
  * Example: *ing would match sing and ing or string,
  * If you wanted to match just one character you can use "?"
  * sp??t matches sport, but would not match spot

**Home Directories**
* use "~" to refer to your home directory, so if you are deep in directories, just have to use ~that file to refer to that file

**Manual Pages**
* Man "command" to look up the manuel for the command
* In the case you do not know what the name of the command is
  * Use man man to look thorugh the commands
* Within in the Synopsis section of the man page, it shows the syntax of the command
  * "-" then followed by letters shows the possible options
  * If there is "[]" that means that the option is not required for the command to execute
* man -k user means that we are searching the NAME section of the MAN pages for user as the keyword

**User information**
* use "finger" name to get information about a user on the system

**Find file**
```
find ~ -name "poem*"
```
What this command does is start to find a file, start at the home directory, look for the name of that file and them the file starts with poem and can end with anything.
* Remember that you have to put "" around the file name if you are going to use a wildcard
* if you want to start at the current file and search from there you can just use "." 

**Concatenate Files**
* cat "File1" "File2" to print out the contents of both files
* cat "File1" "File2" > "File3" would print those two into file3
  * If you put two > than you would append to a file, instead of deleting what was already in it

**Print**
```
lpr -P zephyr corny
```
sends corny file to a printer called zephyr
* lpq to get the print status, lpq -P hp14 would show that printers status
* lprm -P zephyr "job number" to remove a specific job

# Module 4

**Copy tree**
* use -r argument with cp to copy entire directories
```
cp -r ~bookie/pools ~
```
copy bookie's pools diretory to my home directory
* df to get the current disk space
* rm -r to remove directory, and all its sub directories

**Process Status**
* ps aux to get list of all running processes

**Pip output**
* If you wanted to send the output of something to another command use the "|" \
* Ex: cat joke1 joke2 | lpr -P zephyr

**Pattern matching**
* Use "grep" to find patterns in data
* grep gold metals, to find all the ocurrances of gold in the file metals
```
cat joke1 joke2 | grep rabbit
```
List only lines containing rabbit in joke1 and joke2

**Terminate a process**
* kill to end a process gracefully
* kill -9 filename to kill the process right now
