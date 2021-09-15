# 1.)
puts "Practice #1"

practice_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

practice_array.each do |number|
  puts number
end

# 2.) 
puts "Practice #2"

practice_hash = {a:1, b:2, c:3, d:4}
puts practice_hash[:b]
practice_hash[:e] = 5
puts practice_hash

# 3.)
puts "Practice #3"

contact_data = [["john@email.com", "123 Main st.", "555-123-4567"], ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

new_contact = []

contacts["John Cruz"][:email] = contact_data[0][0]
contacts["John Cruz"][:address] = contact_data[0][1]
contacts["Avion School"][:email] = contact_data[1][0]
contacts["Avion School"][:address] = contact_data[1][1]
puts contacts

# Expected output:
#  {
#    "John Cruz"=>{:email=>"john@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Avion School"=>{:email=>"avion@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

# 4.) 
puts "Practice #4"
age = gets.chomp
puts "In 10 years you will be: #{age.to_i + 10}"
puts "In 20 years you will be: #{age.to_i + 20}"
puts "In 30 years you will be: #{age.to_i + 30}"
puts "In 40 years you will be: #{age.to_i + 40}"