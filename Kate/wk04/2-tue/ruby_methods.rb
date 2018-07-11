require 'pry'

# Round 1
# Write a function lengths that accepts a single parameter as an argument, namely an array of strings. The function should return an array of numbers. Each number in the array should be the length of the corresponding string.
# 
# words = ["hello", "what", "is", "up", "dude"]
# lengths(words)  # => [5, 4, 2, 2, 4]

words = ["hello", "what", "is", "up", "dude"]

def lengths(array)
  array.map do |elem|
    elem.length
  end 
end

p lengths(words)

# Round 2
# # # Write a Ruby function called transmogrifier This function should accept three arguments, which you can assume will be numbers. Your function should return the "transmogrified" result
# 
# # The transmogrified result of three numbers is the product (numbers multiplied together) of the first two numbers, raised to the power (exponentially) of the third number.
# 
# # For example, the transmogrified result of 5, 3, and 2 is (5 times 3) to the power of 2 is 225.
# 
# Use your function to find the following answers.
# 
# transmogrifier(5, 4, 3)
# transmogrifier(13, 12, 5)
# transmogrifier(42, 13, 7)

def transmorgifier (num1,num2,num3)
  (num1*num2).pow(num3)
end

transmorgifier(5,3,2)


# Round 3
# Write a function called toonify that takes two parameters, accent and sentence.
# 
# # If accent is the string "daffy", return a modified version of sentence with all "s" replaced with "th".
# If the accent is "elmer", replace all "r" with "w".
# Feel free to add your own accents as well!
# If the accent is not recognized, just return the sentence as-is.
# toonify("daffy", "so you smell like sausage")
#=> "tho you thmell like thauthage"

phrase = 'so you smell like sausage'

def toonify (accent, sentence)
  if accent == 'daffy' 
    sentence.gsub('s','th')
  elsif accent == 'elmer'
    sentence.gsub('r','w')
  else
    sentence
  end
end

toonify('daffy', phrase)


# Round 4
# # # Write a function word_reverse that accepts a single argument, a string. The method should return a string with the order of the words reversed. Don't worry about punctuation.
# 
# word_reverse("Now I know what a TV dinner feels like")
# => "like feels dinner TV a what know I Now"

phrase = "Now I know what a TV dinner feels like"

def word_reverse (string)
  string.split(' ').reverse.join(' ')
end

word_reverse(phrase)

# Round 5
# # # # Write a function letter_reverse that accepts a single argument, a string. The function should maintain the order of words in the string but reverse the letters in each word. Don't worry about punctuation. This will be very similar to round 4 except you won't need to split them with a space.
# 
# letter_reverse("Now I know what a TV dinner feels like")
# => "woN I wonk tahw a VT rennid sleef ekil"
# letter_reverse("Put Hans back on the line")
# => "tuP snaH kcab no eht enil"

phrase = "Now I know what a TV dinner feels like"

def letter_reverse (string)
    string.split().map do |word|
      word.reverse
    end.join(' ')
end

letter_reverse(phrase)

# Round 6
# # # Write a function longest that accepts a single argument, an array of strings. The method should return the longest word in the array. In case of a tie, the method should return either.
# 
# longest(["oh", "good", "grief"]) # => "grief"
# # longest(["Nothing" , "takes", "the", "taste", "out", "of", "peanut", "butter", "quite", "like", "unrequited", "love"])
# => "unrequited"
words = ["Nothing" , "takes", "the", "taste", "out", "of", "peanut", "butter", "quite", "like", "unrequited", "love", "telescopically", "pneumonoultramicroscopicsilicovolcanoconiosis"]

def longest (array)
  array.max_by {|word| word.length}
end

longest(words)