# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
	
	highest_num=nums[0]
	i=1
	#find highest number. start at first number, compare to each other number
	while (i < nums.length)
	
		#when it finds a number higher than it, switch to that
		if (highest_num < nums[i])
			highest_num = nums[i]
		end
		
		#now move to the next comparison number
		i+=1
	
	end
	
	second_highest_num = 0
	j=0
	#go off of highest number, find second-highest number
	while (j < nums.length)
		
		#if current num is not the highest one we already found, make it second-highest, then compare to all the rest
		if ((nums[j] < highest_num) && (nums[j] > second_highest_num))
			second_highest_num = nums[j]
		end
		
		j+=1
	
	end
	
	third_highest_num = 0
	k = 0
	#go off of second-highest number, find third-highest
	while (k < nums.length)
	
		if ((nums[k] < second_highest_num) && (nums[k] > third_highest_num))
			third_highest_num = nums[k]
		end
		
	k += 1
		
	end
	
	#return third highest
	return third_highest_num
	
end

# Tests to check that code is working. 
# If code is working, they should all print true.

puts("\nTests for #third_greatest")
puts("===============================================")
    puts(
      'third_greatest([5, 3, 7]) == 3: ' +
      (third_greatest([5, 3, 7]) == 3).to_s
    )
    puts(
      'third_greatest([5, 3, 7, 4]) == 4: ' +
      (third_greatest([5, 3, 7, 4]) == 4).to_s
    )
    puts(
      'third_greatest([2, 3, 7, 4]) == 3: ' +
      (third_greatest([2, 3, 7, 4]) == 3).to_s
    )
puts("===============================================")
