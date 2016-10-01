# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
#
# Difficulty: medium.

def is_power_of_two?(num)
	
	i=num
	
	#edge case: if num is less than 0
	if (num < 1)
		return false
	elsif (num == 1)
		return true
	end
	
	#if modulo 2 = 0 (divisible by 2), then proceed
	until (i % 2 != 0 || i == 2)
		
		i = i / 2
	
	end
	
	if (i == 2)
		return true
	else
		return false
	end
	
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #is_power_of_two?")
puts("===============================================")
    puts('is_power_of_two?(1) == true: ' + (is_power_of_two?(1) == true).to_s)
    puts('is_power_of_two?(16) == true: ' + (is_power_of_two?(16) == true).to_s)
    puts('is_power_of_two?(64) == true: ' + (is_power_of_two?(64) == true).to_s)
    puts('is_power_of_two?(78) == false: ' + (is_power_of_two?(78) == false).to_s)
    puts('is_power_of_two?(0) == false: ' + (is_power_of_two?(0) == false).to_s)
puts("===============================================")
