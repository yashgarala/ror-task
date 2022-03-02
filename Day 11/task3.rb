=begin
Exercise 3

Given an array of numbers, remove the duplicates such that each unique element appears only once.

Input: numbers = [0,0,1,1,1,2,2,3,3,4]
Expected output: [0,1,2,3,4, nil, nil, nil, nil, nil]

=end
numbers = [0,0,1,1,1,2,2,3,3,4]
befor_uniq_size=numbers.size

numbers.uniq! #get unique number
after_uniq_size=numbers.size
diff=befor_uniq_size-after_uniq_size

numbers+=[nil]*diff #Append null diff time
p numbers