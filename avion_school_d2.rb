puts "-----Practice # 1-----"
arr = [1, 3, 5, 7, 9, 11]
number = 3
puts arr.each.include? number

puts "-----Practice # 2-----"
puts "Type in a random number between 0 and 100"
number = gets.chomp.to_i

if number < 0 
  puts "You can't enter a negative number"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else 
  puts "#{number} is too high"
end

puts "-----Practice # 3-----"
x = ""
while x != "stop" do
  puts "Yo, what are you doin right now?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end


puts "-----Practice # 4-----"
arr_divisible = [6, 3, 1, 8, 4, 2, 10, 65, 102]
new_arr = []
remainder = nil

arr_divisible.each do |num|
  remainder = num % 2
  if remainder == 0 
    puts num
    new_arr.push(num)
  else
  end
end
puts "The new array is #{new_arr}"


puts "-----Coding Exercise-----"
numb = gets.chomp.to_f
def is_square(numb)
  # return false if x.negative?
  if numb ** 2 % 1 == 0  
    puts "#{numb} is a perfect square!" 
  else
    puts "#{numb} is not a perfect square"
  end
end
is_square(numb)