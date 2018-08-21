class BankAccount {
  constructor(type='checking'){
    this.type = type
    this.balance = 0
    this.transactionHistory = {}
  }

  showBalance(){
    console.log(this.balance)
  }

  deposit(amount){
    if (amount > 0){
      this.balance += amount;
      this.transactionHistory[new Date()] = '+'+amount
    } else {
      console.log('enter a positive amount to deposit')
    }
  }

  withdraw(amount){
    if (amount < this.balance){
      this.balance -= amount;
      this.transactionHistory[new Date()] = '-'+amount
    } else{
      console.log('withdrawal amount exceeds balance')
    }
  }

  history(){
    return this.transactionHistory
  }

}



module.exports = BankAccount