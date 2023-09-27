# Quiz 1
1) GNU not unix
2) User, kernal
3) F
4) T
5) GPL
6) Permissive
7) T
8) None
9) BSD
10) I
11) :WQ

# Lab 4
* How would you do an If statment in shell scripting

```
#!/bin/bash

if [ "$1" = "$2" ]; then
echo "'$1' and '$2' are equal"
else
echo "'$1' and '$2' are not equal"
fi
```
* would be "$1" -eq "$2" rather than the equal sign
* How would we run this sh?
  * ./script.sh 0 0
    * This would print out equal

* How would you do a while loop in sh
```
#!/bin/bash

n = $1
while [ "$n" -le 0 ]; do
echo "$n"
let n = $n - 1
done
```
* Close but you do not need the "" around the $n, and it would be greater than not less than
* How would we run this sh?
  * ./script 5
    * This would print out all the numbers above 5

* How would we do functions in sh?
```
#!/bin/bash

foo() {
echo hello $1
}

foo $1

#Functions are very limited, can't run functions in another function meaning that they are not first
#order functions and that they do not return anything
```
* Correct, now how would we run this function?
  * ./script.sh eric
    * This would return hello eric
  


