puts "Name?"
name = gets.chomp

puts "Volume level?"
volume = gets.chomp.to_i

puts "Fur color?"
color = gets.chomp

puts "Good candidate for adoption? (yes/no)"
adopt = gets.chomp
if adopt == "yes"
  true
elsif
  false
end
     

puts "Age?"
age = gets.chomp.to_i
if age == ""
  age = nil
end

puts "Name: " + name
puts "Volume: " + volume.to_s
puts "Fur color: " + color
puts "Adoptable?: " + adopt
puts "Age: " + age.to_s