# Final Questions
## MCQ's
* Version Control systems: 3
* Linux Commands/Utilities: 4
* Web Servers: 1
  * How to start web server, where web server config files are at
    * To start web server, would first want to change the html file for the apache2
      * In ubuntu its in /var/www/html
      * Then do sudo systemctl status apache2
      * Then do sudo systemctl start apache2
    * The config files are stored at etc/apache2/apache2.conf
* Linux File System: 1
* Scenario based: 9
  * File system, web, lab, commands
* Package manager: 3
  * How to update existing packages
    * sudo apt update
      * This gets the updates, but doesnt upgrade right away
    * sudo apt upgrade
      * Upgrades all packages to their newest versions
* Software Development: 3
  * The principles
    * Agile(adaptive), Waterfall(predictive)
  * What agile is
    * Through weekly sprints and close collaboration with the end user, Agile software dev prio delivers working software frequently and adapts readily to ever-changing customer demands.
  * PURE theory
* Linux OS and uses: 2

## Descriptive/Essay Questions
* Linux Server: 1
  * What a linux server is
     * A powerful and versatile computer system built for reliability, performing various network functionalities. It uses the Linux operating system, already known for its security, stability and open-source nature. 
  * The difference between normal Linux distribution vs Linux Server
     * Software differences
       * Normal: GUI & Desktop environment
       * Server: CLI & min server applications
     * Stability & Security:
       * Normal: Secure, but can still be hardened
       * Server: Built-in security features for uptime & reliability
     *  Purpose:
       *  Normal: Desktop & personal use
       *  Server: Network services & applications
* Automated testing: 2
   * Advantages of auto testing
     * Saves time, automate repetitive and time-consuming tests
   * Different types of auto testing
     * Unit tests, Web service/API testing, GUI tests
   * 5 Key to having optimal setup for auto testing
     * Test strategy, test plan, test cases, test data, test environment
* Scenario Based
  * Related to lab 11 and lab 12(Redo these labs to really understand them)
    * Questions are going to be the same as on those labs like how do we make a team member for example
  * File management and permissions:
    * How to add text without using a file editor
      * Using echo
        * ```
          echo "Hey" > file.txt
          or
          echo "Hello" >> file.txt
          ```
      * Using cat
        * ```
          cat oneFile.txt >> anotherFile.txt
          ```
    * How to make a backup
      *  copy command
      *  ```
         cp sourceFile DestinationFile
         ```

## Given example questions
* What file to edit to make sure drive mouts on boot?
* How to make a new group
* Command to check two points before client and server
* What does conflict mean when dealing with version control
* Scenario:
  * Make new users, create subdirectory, command to change permissions for each directory based on the criteria that is mentioned, have to know what the numberes mean and what persmissions is assocateid with each nubmers. 
