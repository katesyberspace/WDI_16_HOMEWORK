console.log("Is this thing on?")

// 1. Build your own concatenation
// Write a function named combineWords that: 
// - return a new string that is the combination of the two parameters
// Example: combineWords('dog', 'house') => 'doghouse'

var combineWords = function (word1, word2) {
    return word1 + word2;
}

var newWord = combineWords("pineapple", "pen");
console.log(newWord);


// 2. Write a function named calculateAge that:
// - takes 2 arguments: birth year, current year.
// - calculates the 2 possible ages based on those years.
// outputs the result to the screen like so: "You are either 100 or 101"
// - Call the function three times with different sets of values.

var calculateAge = function (birthYear, currentYear) {
    var age = currentYear - birthYear;
    var ageBeforeBirthday = age-1;
    console.log("You are either " + age + " or " + ageBeforeBirthday);
}

calculateAge(1987, 2018);


//  3. Write a function `lengths` that accepts a single parameter as an argument, namely
// an array of strings. The function should return an array of numbers where each
// number is the length of the corresponding string.

var fruits = ["lychee", "mango", "durian"]  //lengths(fruits) //=> [5, 5, 6]
var spokenLanguages = ["English", "Cantonese", "Italian", "Japanese"]

//METHOD 1 - USING FOR LOOP
// var lengths = function(arrayOfStrings) {
//     var newArray = []
//     for (i = 0; i < arrayOfStrings.length; i++){
//     newArray.push(arrayOfStrings[i].length)
//     }
//     return newArray;
// }

//METHOD 2 - USING array's forEach method

var lengths = function (arrayOfStrings) {
    var newArray = [];
    arrayOfStrings.forEach(function(element){
        newArray.push(element.length);
    })
    return newArray;
}

console.log(lengths(fruits));
console.log(lengths(spokenLanguages));

// 4. Write a Javascript function called `transmogrifier`
// This function should accept three arguments, which you can assume will be numbers.
// Your function should return the "transmogrified" result
//
// The transmogrified result of three numbers is the product of the first two numbers,
// raised to the power of the third number.

var transmogrifier = function (num1, num2, num3) {
    return Math.pow((num1*num2), num3)
}

console.log(transmogrifier(4,2,3));

// 5. Write a function `wordReverse` that accepts a single argument, a string. The
// method should return a string with the order of the words reversed. Don't worry
// about punctuation.
// Example: wordReverse('we are good friends') => 'friends good are we'

var theWords = "i am yoda like talking";

var wordReverse = function(aString){
    //1. turn the string into an array
    var makeArray = theWords.split(" ");
    //2. reverse the array
    makeArray.reverse();
    //3. return and join the array into a string
    return (makeArray.join(" "));
}

console.log(wordReverse(theWords));
