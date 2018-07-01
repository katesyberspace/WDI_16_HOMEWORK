console.log("Is this thing on?")

// setTimeout
// 1. what is it:
// a mixin is an interface where all the methods and    properties are not implented. It works in combination  with the methods and properties of another interface.    the WindowOrWorkerGlobalScope mixin is a combination of   of both the window interface and the workerGlobalScope    interface.  window is the object containing the DOM    document. The WorkerGlobalScope contains the event     handlers and the console.

// setTimeOut() is a method of the WindowOrWorkerGlobalScopr mixin.  setTimeOut sets a timer.  When the timer expires, a specific function gets executed.


// 

// 2.why we want to use it:
    // it may be necessary to build in buffer time for the browser to render before the specified function is run
// 
// 3.how to use it (what are the arguments & return value?)
// Parameters:
//  1.function - this is executed when the timer expires
//  2.delay - the time in milliseconds the timer should wait
//  3.optional parameters to pass through the function being executed

// Returns: 
// timeoutID - a positive integer value to indentify the timer created
//      timeoutID can be passed to clearTimeout() to cancel the timer


//setInterval is simliar to setTImeout except the function is run repeatedly at a set interval.


// 4.create an expample


var btn = document.querySelector(".btn");
var body = document.querySelector("body");


var changeColors = function (){
    body.style.backgroundColor="mistyrose";
}

var delayColorChange = function (){
    window.setTimeout(changeColors, 3000);
}

btn.addEventListener("click", delayColorChange);