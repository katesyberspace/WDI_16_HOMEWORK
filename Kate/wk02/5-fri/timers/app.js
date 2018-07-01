console.log("Is this thing on?")

// setTimeout
// 1. what is it:
//  setTimeOut() is a method of an interface such as window (where the DOM document is).  setTimeOut sets a timer.  When the timer expires, a specific function gets executed.

// 2.why we want to use it:
//  it may be necessary to build in buffer time for the browser to render before the specified function is run.  
//  For example if the function is related to an event listener on a button, the browser needs time to render the button first.

// 3.how to use it (what are the arguments & return value?)
// Parameters:
//  1.function - this is executed when the timer expires
//  2.delay - the time in milliseconds the timer should wait
//  3.optional parameters to pass through the function being executed
// Returns: 
// timeoutID - a positive integer value to indentify the timer created
//  timeoutID can be passed to clearTimeout() to cancel the timer

//setInterval is simliar to setTImeout except the function is run repeatedly at a set interval.


// 4.example of setTimeout();

var btn = document.querySelector(".btn");
var body = document.querySelector("body");


var changeColors = function (){
    body.style.backgroundColor="mistyrose";
}

var delayColorChange = function (){
    window.setTimeout(changeColors, 3000);
}

btn.addEventListener("click", delayColorChange);