//The Fortune Teller
var fortuneTeller = function (numberOfChildren, partnersName, geographicLocation, jobTitle) {
	console.log("You will be a " + jobTitle + " in " + geographicLocation + ", and married to " + partnersName + " with " + numberOfChildren + " kids.");
}

fortuneTeller(2, "ben", "Melbourne", "web developer");

//The Age Calculator
var currentYear = new Date().getFullYear();
var birthyear = 1987;
var age1 = currentYear - birthyear - 1;
var age2 = currentYear - birthyear;
console.log("You are either " + age1 + " or " + age2);


//The Lifetime Supply Calculator

var snack = "Slim Jims";
var myAge = 30;
var maxAge = 120;
var snacksPerDay = 3;
var snackForLife = (snacksPerDay*365)*(maxAge-myAge);
console.log("You will need " + snackForLife + " " + snack + " to last you until the ripe old age of " + maxAge);



//The even/odd reporter

for (var i = 0; i <= 20; i++) {
	if (i%2 !== 0) {
		console.log(i + " is odd")
	}
	else {
		console.log(i + " is even");
	}
};


//Multiplication Tables
for (var n = 1; n <= 10; n++){
	for (var i = 1; i <= 10; i++) {
		console.log (n + " x " + i + " = " + (i*n));
	};
}

//Your Top Choices
var favoriteColors = ["red", "green", "blue", "yellow"]

for (var i = 0; i < favoriteColors.length; i++){
	console.log("My #" + (i+1) + " choice is " + favoriteColors[i]);
}

//Your Top Choices - Bonus
var favoriteColors = ["red", "green", "blue", "yellow"]

for (var i = 0; i < favoriteColors.length; i++) {
	if (i === 0) {
		console.log("My " + (i+1) + "st choice is " + favoriteColors[i])}
	else if (i === 1) {
		console.log("My " + (i+1) + "nd choice is " + favoriteColors[i])
	}
	else if (i === 2){
		console.log("My " + (i+1) + "rd choice is " + favoriteColors[i])
	}
	else{
		console.log("My " + (i+1) + "th choice is " + favoriteColors[i])
	}
}


//Top choices - class version
var favoriteColors = ["red", "green", "blue", "yellow"]
	//add another array to store the suffix
var suffix = ["st","nd", "rd", "th"]
for (var i = 0; i < favoriteColors.length; i++){
	console.log("My " + (i+1) + suffix[i] + " choice is " + favoriteColors[i]);
}

