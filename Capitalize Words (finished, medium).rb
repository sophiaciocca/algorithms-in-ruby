# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def capitalize_words(string)
	
	#split up string into old array of words 
	old_words_array = string.split
	
	#set up new array of words 
	new_words_array = []
	
	#loop to go through each word
	i = 0 
	while (i < old_words_array.length)
	
		#separate each word into characters
		chars = old_words_array[i].scan /\w/
		
		#shift off first char 
		first_char = chars.shift
		
		#make first char uppercase 
		first_char = first_char.upcase
		
		#join first char with the rest of the chars 
		chars = chars.unshift(first_char)
		
		#make the chars back into a string 
		capitalized_word = chars.join""
		
		#put the string into new words array of strings 
		new_words_array.push(capitalized_word)
		
		#increase i 
		i += 1 
	
	end
	
	#join new words array back into single string
	return new_words_array.join(" ")
	
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(capitalize_words("this is a sentence"))

puts("\nTests for #capitalize_words")
puts("===============================================")
    puts(
      'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
      (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
    )
    puts(
      'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
      (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
    )
puts("===============================================")