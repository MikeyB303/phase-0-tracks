#create a database containing the necessary information needed for the designer
#gather information from the user that fills these variables.
#print the database
#create a prompt at the end that allows user to add more information to the database or change information



client_information = {
  "name" => "",
  "age" => "",
  "children" => "",
  "theme" => "",
  "favorite_color" => "" 
}

puts "Hello and welcome to Steve Brule's interior of cool"
puts "Gimme some information so I can give you the best deal, cool guy"
puts "What's your name?"
client_information["name"] = gets.chomp
puts "What about your age, what's that?"
client_information["age"] = gets.chomp.to_i
puts "How many little ones you got running around?"
client_information["children"] = gets.chomp.to_i
puts "What kind of theme are you looking for?"
client_information["theme"] = gets.chomp
puts "What's your favorite color?"
client_information["favorite_color"] = gets.chomp

puts "Does this information look correct?"
puts client_information
puts "If not, please update or add more information. When done type 'exit'"
exit = 0
category = ""
while exit == 0
  puts "What category would you like to edit? (name, age, children, theme, favorite_color)"
  category = gets.chomp.to_s
  #This part makes sure an actually category is selected
    if category == "name"
      puts "please enter a new name"
      client_information["name"] = gets.chomp
    elsif category == "age"
      puts "please enter a new age"
      client_information["age"] = gets.chomp.to_i
    elsif category == "children"
      puts "please enter new amount of kids"
      client_information["children"] = gets.chomp.to_i
    elsif category == "theme"
      puts "please enter a new theme"
      client_information["theme"] = gets.chomp
    elsif category == "favorite_color"
      puts "please enter a new favorite color"
      client_information["favorite_color"] = gets.chomp
    elsif category == "exit"
      exit += 1
    else
      puts "please choose an available category"
    end
end

puts client_information

      