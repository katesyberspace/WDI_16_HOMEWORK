console.log("Is this thing on?")

//Data Types

typeof 15
// Prediction: number
// Actual: number

typeof 5.5
// Prediction: number
// Actual: number

typeof NaN
// Prediction: number
// Actual: number

typeof "hello"
// Prediction: string
// Actual: string

typeof true
// Prediction: boolean
// Actual: boolean

typeof 1 != 2
// Prediction: boolean 
// Actual:true


"hamburger" + "s"
// Prediction:"hamburgers"
// Actual:"hamburgers"

"hamburgers" - "s"
// Prediction:NaN
// Actual:NaN

"1" + "3"
// Prediction: "13"
// Actual: "13"

"1" - "3"
// Prediction:NaN
// Actual: -2

"johnny" + 5
// Prediction: NaN
// Actual:"johnny5"

"johnny" - 5
// Prediction: NaN
// Actual:NaN

99 * "luftbaloons" 
// Prediction: NaN
// Actual: NaN

//Arrays

// Add an element to the back of an array.
var array1 = [1,2,3,4,5]
array1.push(6);

// Remove an element from the back of an array.
var array2 = [1,2,3,4,5]
array2.pop();

// Add an element to the front of an array.
var array3 = [1,2,3,4,5]
array3.unshift(0);

// Remove an element from the front of an array.
var array4 = [1,2,3,4,5]
array4.shift();

// Concatenates all the elements in an array into a string.
var array5 = [1,2,3,4,5]
array5.join(", ");

// Separates the characters of a string into an array. This one is a string method.
var string1 = "1, 2, 3, 4, 5"
string1.split(", ");

// What will the contents of the below arrays be after the 
//code samples are executed? Come up with an answer yourself 
//before testing it out in the console.

// var numbers = [2, 4, 6, 8]
// numbers.pop()
// numbers.push(10)
// numbers.unshift(3)

[3,2,4,6,10]

// What is the return value of the below code sample? 
// 
// var morse = ["dot", "pause", "dot"]
// var moreMorse = morse.join(" dash ")
// moreMorse.split(" ")

moreMorse = ["dot", "dash", "pause", "dash", "dot"];


// What will the contents of the below array be after the below 
// code sample is executed? 

// var bands = []
// var beatles = ["Paul", "John", "George", "Pete"]
// var stones = ["Brian", "Mick", "Keith", "Ronnie", "Charlie"]
// bands.push(beatles)
// bands.unshift(stones)
// bands[bands.length - 1].pop()
// bands[0].shift()
// bands[1][3] = "Ringo"

bands = [stones, beatles]
stones = ["Mick", "Keith", "Ronnie", "Charlie"]
beatles = ["Paul", "John", "George", "Ringo"]


//Booleans

true && true ==> true
true && false ==> false
false && true ==> false
false && false ==> false

true || true ==> true
true || false ==> true
false || true ==> true
false || false ==> false

3 != 3 ==> false
1 != 5 ==> true
2 != "2" ==> false

!true && (true || true) ==> false
!true && (true || false) ==> false
!false && (false || true) ==> true
!false && (false || false) ==> false

//Conditionals

var bouncer = function(age){
    if (21 <= age && age < 75) {
        console.log("Come on in!");
    }
    else if (18 <= age && age < 21){
        console.log ("Come in, but no drinking");
    }
    else if (age < 18) {
        console.log ("You're too young to be in here!");
    }
    else {
        console.log("Are you sure you want to be here?");
    };
};

var hasID = true;

if (hasID === true) {
    bouncer(17);
}
else {
    console.log("No ID, no entry.");
};

//FizzBuzz

for (var i = 1; i <= 100; i++) {
    if (i%3 === 0 && i%5 === 0){
        console.log("fizzbuzz")
    }
    else if (i%3 === 0){
        console.log("Fizz");
    }
    else if (i%5 === 0){
        console.log("Buzz");
    }
    else {
        console.log(i);
    }
};

//FizzBuzz Bonus

var fizzBuzz = function(num){
    if (num%3 === 0 && num%5 === 0){
        console.log("fizzbuzz")
    }
    else if (num%3 === 0){
        console.log("Fizz");
    }
    else if (num%5 === 0){
        console.log("Buzz");
    }
    else {
        console.log(num);
    }
}








