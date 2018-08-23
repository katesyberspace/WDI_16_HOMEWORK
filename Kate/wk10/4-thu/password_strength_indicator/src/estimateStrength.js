function estimateStrength(pw){
  const strength = {
    score: 0
  }  
  const lowerCase = RegExp(/[a-z]/g)
  const specialChars = RegExp(/[!@#$%]/g)
  const upCase = RegExp(/[A-Z]/g)
  const numbers = RegExp(/[0-9]/g)
  const over8Chars = pw.length > 8


  if (lowerCase.test(pw)){
    strength.score += 1
    strength.hasLowerCase = true
  }

  if (specialChars.test(pw)){
    strength.score += 1
    strength.hasSpecialChar = true
  }

  if (upCase.test(pw)){
    strength.score += 1
    strength.hasUpperCase = true
  }

  if (numbers.test(pw)){
    strength.score += 1
    strength.hasNumber = true
  }

  if (over8Chars){
    strength.score += 1
    strength.isOver8Char = true
  }


  return strength
}

  
module.exports = estimateStrength