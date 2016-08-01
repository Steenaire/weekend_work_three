# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  letter_counter = 0
  mut_array = mutation.split("")
  base_array = base_word.split("")

  mut_array.each do |mut_letter|
    if base_array.include? mut_letter
      letter_counter += 1
      base_array -= [mut_letter] #Makes sure the letter doesn't get counted twice
    end
  end

  if letter_counter == mutation.length
    return true
  else
    return false
  end

end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end