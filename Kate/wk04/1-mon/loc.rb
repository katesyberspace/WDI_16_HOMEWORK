require 'pry'

# puts 'enter a file name'
# file_name = gets.chomp  
#

num_lines = File.readlines(ARGV[0]).length

if num_lines == 1 
  puts "#{num_lines} line"
else 
  puts "#{num_lines} lines"
end

