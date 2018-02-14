/*:
 [Previous](@previous)
 
 # Exercise One
 
 1. Create an empty mutable array of type `Double` named `grades`:
 
 */

import Foundation

// a. The array is mutable since it is declared with the 'var' keyword
// b. The name is 'grades'
// c. With type annotation we make the array's type 'Double'
// d. The [] brackets create an empty array
var grades : [Double] = []
/*:
 2. Now populate the array with eight random grades between 60 and 100.
 */
// a. We saw an example similar to this on the prior page.
// b. We should iterate 8 times so 8 grades are appended to the array
// c. The arc4random_uniform function returns unsigned integer values
// d. We convert the integer values to the Double data type
// e. We generate random numbers between 0 and 40
// f. By adding 60, the range of random numbers moves from 0 to 40 to become 60 to 100
for _ in 1...8 {
    grades.append( Double(arc4random_uniform(40) + 60) )
}

/*:
 3. Print a list of each array index and the associated value.
 */
// a. We should always use a for...in loop to automatically iterate the
//    correct number of times:
//
//    e.g.: for (index, value) in grades.enumerated() {
//
// b. Accessing array values via their index is dangerous and leads
//    to program crashes
//
//    e.g.: a common programming error is...
//
//    for i in 0...8 {
//        print("The index is \(i)")
//        print("The value is \(grades[i])")
//    }
//
//    This will crash because we try to access the 9th value in the array (index 8) and
//    this value does not exist.
//
//    c. The enumerated() method on the `grades` array instance lets us easily access
//       indexes and values
for (index, value) in grades.enumerated() {
    print("The index is \(index) and the value is \(value).")
}
/*:
 4. Determine and print the highest grade.
 */
// a. An example similar to this was found on the prior page.
// b. Algorithm works like this:
//
//    - Make a variable, 'highest' that starts with a value lower than the lowest
//      possible grade
//    - Iterate over the array values
//    - For each array value, see if that value is higher than current 'highest'
//          - If the array value is higher, it becomes the new 'highest'
//    - At the end of the loop, 'highest' now contains the highest value in the array

var highest = 59.0 // Start lower than lowest possible value
// Iterate over array values
for grade in grades {
    // Is this grade higher than the current highest?
    if grade > highest {
        // If so, this grade becomes the new highest
        highest = grade
    }
}
print("The highest grade found was \(highest)")

//: [Next](@next)


