# Phonebook project
*Use grep to find stuff in a file?
  * cat $fileName | grep $1 $2
* to remove, find something and then replace something
  * Figure this out, supoosed to be a single command 

**Control flow**
* if else, or can do case statments
* The last else should be searchign for user in the file if there is one
* Just consider working command
* Run each case with screenshot, submit with code and data file in zip due next sunday

# 9-25 phonebook
* Control flow:
  * Check if file exists, if does not exist than you just make a file
  * Switch case based on the first argument
    * If new append to file
    * If List than you cat the phonebook file
    * If remove, search for the second argument and then replace it
    * IF clear, rm file
    * Else statement catches the search for printing of a specified userName
      * Cat the file, then pipe it to grep to find out what you are looking for
