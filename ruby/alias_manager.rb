#Start by asking for spy name and get user input
#First and last name will be swapped
#Scan words for vowels and then move each one forward in relation to another 
#string or array containing 'aeiou'
#Do the same except for consonants
#print the result!
super_top_secret_identity_vault = []
counter = 0
while counter == 0
  spy_name = []
  puts "Hello, please enter your first and last names. 
  (Or enter 'exit' to quit the program)"
  real_name = gets.chomp
  if real_name == "exit"
    counter = 1
    break
  else 
    real_array = real_name.downcase.split(' ')
    swap_array = real_array[1], real_array[0]
    name_letters = swap_array.join(' ').chars
    name_letters.each do |letter|
      vowels = ["a","e","i","o","u"]
      consonants = ["b","c","d","f","g","h","j","k","l","m","n",
        "p","q","r","s","t","v","x","z","w","y","z"]
      if vowels.include?(letter)
        letter_index = vowels.index(letter)
        if letter_index + 1 < vowels.length
          new_letter = vowels[letter_index + 1]
          spy_name.push(new_letter)
        else
          new_letter = vowels[0]
          spy_name.push(new_letter)
        end
      elsif consonants.include?(letter)
        letter_index = consonants.index(letter)
        if letter_index + 1 < consonants.length
          new_letter = consonants[letter_index + 1]
          spy_name.push(new_letter)
        else
          new_letter = consonants[0]
          spy_name.push(new_letter)
        end
      else
        new_letter = " "
        spy_name.push(new_letter)
      end
  end
end
  spy_name = spy_name.join('')
  official_spy_name = spy_name.split.map(&:capitalize).join(' ')
  puts "Your new identity is #{official_spy_name}. Hope you like it because now you're stuck with it, agent!"
  super_top_secret_identity_vault.push(official_spy_name + " is actually: "+ real_name)
end
puts super_top_secret_identity_vault

