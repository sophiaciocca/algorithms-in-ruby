# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
	
	#lettercount = []
	highestlettercount = 0
	mostpopularletter = ""
	#start w first letter, then go through basing off other letters
	i = 0 
	while (i < string.length)
	
		#set current base letter's count to 0 
		currentlettercount = 0 
	
		#look at rest of letters in string, compare to base letter
		k = 0 
		while (k < string.length)
		
			if (string[i] == string[k])
				currentlettercount += 1
			end
			
			k += 1
		
		end
	
		#set highestlettercount to this one IF highest 
		if (currentlettercount > highestlettercount)
			highestlettercount = currentlettercount
			mostpopularletter = string[i]
		end
		
		#set spot in lettercount array for this letter to currentlettercount
		#lettercount[i] = currentlettercount
		
		#move on to next base letter
		i += 1 
		
	end
	
	#array: mostcommonletter, highestlettercount
	finalarray = [mostpopularletter, highestlettercount]
	
	return finalarray
	
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #most_common_letter")
puts("===============================================")
    puts(
      'most_common_letter("abca") == ["a", 2]: ' +
      (most_common_letter('abca') == ['a', 2]).to_s
    )
    puts(
      'most_common_letter("abbab") == ["b", 3]: ' +
      (most_common_letter('abbab') == ['b', 3]).to_s
    )
   puts(
  'most_common_letter("ararararararararararr") == ["r", 11]: ' +
  (most_common_letter('ararararararararararr') == ['r', 11]).to_s
)
puts("===============================================")
