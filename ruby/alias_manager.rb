#Start by asking for spy name and get user input
#First and last name will be swapped
#Scan words for vowels and then move each one forward in relation to another 
#string or array containing 'aeiou'
#Do the same except for consonants
#print the result!

puts "Hello, please enter your first and last names. 
(Make sure nobody is looking over your shoulder)"
real_name = gets.chomp
real_array = real_name.downcase.split(' ')
p real_name
p real_array
swap_array = real_array[1], real_array[0]
p swap_array
name_letters = swap_array.join(' ').chars
p name_letters
name_letters.each do |letter|
  vowels = ["a","e","i","o","u"]
  consonants = ["b","c","d","f","g","h","j","k","l","m","n",
    "p","q","r","s","t","v","x","z","w","y"]
  if vowels.include?(letter)
    puts "#{letter} is a vowel"
  elsif consonants.include?(letter)
    puts "#{letter} is a consonant"
  end
end

