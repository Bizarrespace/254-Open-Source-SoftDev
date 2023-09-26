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

# Midterm 
* History of linux, how to install linux ,scenario based question with pesudocode
* 25 MCQ
* 3 Descriptive Questions
* explain commands
* Week 1
  * Whats a kernel, is linux an OS
  * Who built linux, why
  * Linux architecture
  * How unix was distributed to unis
* Week 2
  * What is copyLeft
  * Focus on Apche and GPL
* Week 3
  * What are the components required to install a OS on Virtual machine
    * Need an ISO, and a Virtual machine like virtual box
  * What is in bin, etc used for
  * What is stored in passwd and shadow files
  * I am trying to execute a sh file, but I cant what is the error and how would I solve it
* Week 4
  * No des on VI editor
  * No questions on VI? No specific questions for the VI editor
  * NO need to memeory the Enviroment variables, be clear on what enviroment variables are used for
* Lab 2
  * Package manager, and apps installed
* Lab 3
  * Modules on linux,
  * Questions on Module 3, going to be questions based on it definitly
* Lab 4
  * shell scirpting addon to the phonebook
**Summary**
* 3 Descriptive
* Linux installation requirements
* Linux history/unix
* Commands
* Scardio based on linux module 3 stuff

**Scanario**
```
in /home/shi/documents
cd /home/shi
cd - (Takes you back to the previous)
pwd
```
* What is the output of pwd:
  * /home/shi/documents

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
