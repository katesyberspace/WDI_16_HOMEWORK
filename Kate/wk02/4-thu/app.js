var savBal = 0;
var savInput = document.querySelector(".sav .user-input");
var savBalOutput = document.querySelector(".sav .bal-output");
var savWithdrawBtn = document.querySelector(".sav .withdraw-btn");
var savDepBtn = document.querySelector(".sav .dep-btn");


// var checkBal = 0;
// var checkInput = document.querySelector(".check .user-input");
// var checkBalOutput = document.querySelector(".check .bal-output");
// var checkWithdrawBtn = document.querySelector(".check .withdraw-btn");
// var checkDepBtn = document.querySelector(".check .dep-btn");


var lowBalWarning = function(){
    if (savBal === 0){
        document.querySelector(".sav").style.backgroundColor = "red";
    }
    else {
        document.querySelector(".sav").style.backgroundColor = "#e6e8ed";
    }
}
lowBalWarning();

// var checkingLowBalWarning = function(){
    // if (savBal === 0){
        // document.querySelector(".sav").style.backgroundColor = "red";
    // }
    // else {
        // document.querySelector(".sav").style.backgroundColor = "white";
    // }
// }
// checkingLowBalWarning();



// var depUpdate = function(acctBal, acctInput, acctBalOutput){
    // acctBal = (acctBal + Number(acctInput.value));
    // acctBalOutput.textContent = ("$ " + acctBal + ".00");
    // lowBalWarning();
// };
// 
// depUpdate(savBal, savInput, savBalOutput);


var savDepUpdate = function(){
    savBal = (savBal + Number(savInput.value));
    savBalOutput.textContent = ("$ " + savBal + ".00");;
    lowBalWarning()
};
// 
savDepBtn.addEventListener("click", savDepUpdate);


var savWithdrawUpdate = function() {
    if (Number(savInput.value)>savBal){
        alert("You don't have that much money. Go fight in a Pokemon gym to get more!");
        return
    }
    else {
        savBal = (savBal - Number(savInput.value));
        savBalOutput.textContent = ("$ " + savBal + ".00");
        lowBalWarning()
    }   
};

savWithdrawBtn.addEventListener("click", savWithdrawUpdate);





// var checkDepUpdate = function(){
    // checkBal = (checkBal + Number(checkInput.value));
    // checkBalOutput.textContent = ("$ " + checkBal + ".00");;
    // checkingLowBalWarning()
// };
// 
// checkDepBtn.addEventListener("click", checkDepUpdate);
// 
// 
// var checkWithdrawUpdate = function() {
    // if (Number(checkInput.value)>checkBal){
        // alert("You don't have that much money. Go fight in a Pokemon gym to get more!");
        // return
    // }
    // else {
        // checkBal = (checkBal - Number(checkInput.value));
        // checkBalOutput.textContent = ("$ " + checkBal + ".00");
        // checkingLowBalWarning()
    // }   
// };
// 
// checkWithdrawBtn.addEventListener("click", checkWithdrawUpdate);