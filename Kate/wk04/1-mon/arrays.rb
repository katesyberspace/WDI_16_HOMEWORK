require 'pry'
#1 Create an array of the days of the week
days_of_the_week = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

# 2. My calendar says the first day is Sunday...
# Remove Sunday from the last postion and move it to the first position. Use array methods.
days_of_the_week.unshift(days_of_the_week.pop)

# 3. Create a new array of the days of the week:
# The first inner array should be the weekdays
# The second inner array should be the weekend days

days_of_the_week.unshift([])
days_of_the_week.unshift([])
days_of_the_week[0].push(days_of_the_week[3])
days_of_the_week[0].push(days_of_the_week[4])
days_of_the_week[0].push(days_of_the_week[5])
days_of_the_week[0].push(days_of_the_week[6])
days_of_the_week[0].push(days_of_the_week[7])
days_of_the_week[1].push(days_of_the_week[2])
days_of_the_week[1].push(days_of_the_week[8])
days_of_the_week.pop
days_of_the_week.pop
days_of_the_week.pop
days_of_the_week.pop
days_of_the_week.pop
days_of_the_week.pop
days_of_the_week.pop

# 4. Remove either the weekdays or the weekends
days_of_the_week.pop

# 5. Sort the remaining days alphabetically
puts(days_of_the_week[0].sort)

