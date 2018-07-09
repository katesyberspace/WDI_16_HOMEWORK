require  'pry'

continue  = true
while continue == true
  puts 'enter a temperature value or type quit'
  temp_value = gets.chomp
    if temp_value == "quit"
      continue = false
      if continue == false
        return
      end
    else
      puts 'enter the temperature unit (e.g., f, C, K)'
      temp_unit = gets.chomp 
      def convert_temp(value,unit)
        if unit == "f"
          convertedC = ((value.to_i-32)/1.8).round(2)
          convertedK = ((value.to_i+459.67)/1.8).round(2)
          return "fahrenheit: #{value}\nto Celcius: #{convertedC}\nto Kelvin: #{convertedK}"
        elsif unit == "C"
          convertedF = (value.to_i*1.8+32).round(2)
          convertedK = (value.to_i+273.15).round(2)
          return "Celcius: #{value}\nto fahrenheit: #{convertedF}\nto Kelvin #{convertedK}"
        elsif unit ==  "K"
          convertedF = (value.to_i*1.8-459.67).round(2)
          convertedC = (value.to_i-273.15).round(2)
          return "Kelvin: #{value}\nto fahrenheit: #{convertedF}\nto Celcus: #{convertedC}"
        else
          return "you did not enter a valid temperature unit"
        end
      end
      puts convert_temp(temp_value, temp_unit)
    end
end


# binding.pry

# def convert_temp(value,unit)
#   if unit == "f"
#     convertedC = ((value.to_i-32)/1.8).round(2)
#     convertedK = ((value.to_i+459.67)/1.8).round(2)
#     return "fahrenheit: #{value}\nto Celcius: #{convertedC}\nto Kelvin: #{convertedK}"
#   elsif unit == "C"
#     convertedF = (value.to_i*1.8+32).round(2)
#     convertedK = (value.to_i+273.15).round(2)
#     return "Celcius: #{value}\nto fahrenheit: #{convertedF}\nto Kelvin #{convertedK}"
#   elsif unit ==  "K"
#     convertedF = (value.to_i*1.8-459.67).round(2)
#     convertedC = (value.to_i-273.15).round(2)
#     return "Kelvin: #{value}\nto fahrenheit: #{convertedF}\nto Celcus: #{convertedC}"
#   else
#     return "you did not enter a valid temperature unit"
#   end
# end

# puts convert_temp(temp_value, temp_unit)


