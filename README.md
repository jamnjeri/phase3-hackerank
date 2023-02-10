# **HackerRank Questions**

## **Question One**

**BDD** - Identify the object type

**PSEUDO CODE:**

 *START*
 1. Check if the object:  (using a case structure)
   - If Hacker  => "It's a Hacker!"
   - If Submission  => "It's a Submission!"
   - If TestCase  => "It's a TestCase!"
   - If Contest  => "It's a Contest!"
   - If anything else  => "It's an unknown model

 *END*


### I/O (Test Cases)

 1. Hacker => "It's a Hacker!"
 2. Submission => "It's a Submission!"
 3. 10 => "It's an unknown model"

## **Question Two**

**BDD** - Iterates through the array and returns an array containing each value

**PSEUDO CODE:**

 *START*
 1. Take in the array passed as an argument
 2. Iterate through the array:  (using collect because it returns an array containing all the colors)
 3. Return each color after ever iteration 
 4. Return the finally collected array containing all the colors 

 *END*


### I/O (Test Cases)


## **Question Three**

**BDD** - Takes in an array and a skip integer and returns an array of all elements excluding the number of items skipped

**PSEUDO CODE:**

 *START*
 1. Initialize an  empty array
 2. Iterate through the given array using map as well as the with_index method
 3. For each iteration check if the index of the item is larger than that of the skip integer
        - If it is, add the item to the previously empty array
        - If it's not, do nothing
 4. Return the final array including all the elements that were not skipped.  
 *END*


### I/O (Test Cases)
skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)   =>  ["2:fox", "3:wolf"]

## **Question Four**
**BDD** - Takes in an array of strings(secret message) and return an array containing the final decoded message (Decodes using ROT13 cipher system)

**PSEUDO CODE:**

 *START*
 1. Take in the array passed in as an argument
 2. Iterate through it using the .map method 
        - Using the tr() method which returns a copy of the string with the characters in from_str replaced by the corresponding characters in to_str. If to_str is shorter than from_str, it is padded with its last character in order to maintain the correspondence.
        - So we want A-Z or a-z to be replaced by (A-Z)+13
 3. Return the resultant decoded message  

 *END*


### I/O (Test Cases)
Why did the chicken cross the road?   => Gb trg gb gur bgure fvqr!


## **Question Five**

**BDD** - Takes in an integer n and returns the sum to the n terms of the series.

**PSEUDO CODE:**

 *START*
 1. Take in the integer which marks the upper limit of the range of the series
 2. Use the reduce method to reduce the range of values to a single value of the sum of all the number to the nth term of the series
 3. Convert the final value to an integer
 4. Return this final integer

 *END*


### I/O (Test Cases)
n = 5 => 60


## **Question Six**

### A

**BDD** - Takes in a hash, checks if any of the keys in the hash is an integer

**PSEUDO CODE:**

 *START*
 1. Take in the hash
 2. Use the .any?() method to check if any of the keys in the hash is an integer
        - returns true if it is
        - return false if it is not
 *END*


### B

**BDD** - Takes in a hash, checks if any of the values in the hash is an integer < 10

**PSEUDO CODE:**

 *START*
 1. Take in the hash
 2. Use the .all?() method to check if all of the keys in the hash is an integer < 10
        - returns true if it is
        - return false if it is not
 *END*


### C

**BDD** - Takes in a hash, checks if none of the values within the hash are nill

**PSEUDO CODE:**

 *START*
 1. Take in the hash
 2. Use the .none?() method to check if none of the values within the hash are nill
        - returns true if it is
        - return false if it is not
 *END*


### D
**BDD** - Takes in a hash, returns the first object that satisfies the following conditions:
                -If there is a [key, value] pair where the key and value are both Integers and the value is < 20 
                -If there is a [key, value] pair where the key and value are both Strings and the value starts with `a`.

**PSEUDO CODE:**

 *START*
 1. Take in the hash
 2. Use the .find?() method to check if any of the [key, value] pairs meets any of the following conditions, and returns the first element that does
        -If there is a [key, value] pair where the key and value are both Integers and the value is < 20 
        -If there is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
 3. Return the result
 *END*


## **Question Seven**
**BDD** - Group the students into 2 categories corresponding to their marks obtained in a test and return a Hash containing an array of students who passed as value pair, along with the pass_marks as an argument.

**PSEUDO CODE:**

 *START*
 1. Take in the marks hash and the pass mark integers
 2. Use the group_by method to group the students into two categories:
        - Passed if marks > pass mark integers
        - Failed if marks < pass mark integers
        - If empty: Don't return that key
 3. Return a hash containing an array of students who passed as value pair, along with the pass_marks as an argument.
 *END*


### I/O (Test Cases)
marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}  => {"Failed"=>[["Ramesh", 23]], "Passed"=>[["Vivek", 40], ["Harsh", 88], ["Mohammad", 60]]}

## **Question Eight**

## **Question Nine**
