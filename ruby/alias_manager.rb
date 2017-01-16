#Start by asking for spy name and get user input
#First and last name will be swapped
#Scan words for vowels and then move each one forward in relation to another 
#string or array containing 'aeiou'
#Do the same except for consonants
#print the result!

puts "Hello, please enter your first and last names. 
(Make sure nobody is looking over your shoulder)"
real_name = gets.chomp
real_array = real_name.split(' ')
p real_name
p real_array
