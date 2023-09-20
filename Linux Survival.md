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


* # Stop at page 39
https://linuxsurvival.com/changing-to-linux-home-directory/
