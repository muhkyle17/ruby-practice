def greeting(name)
  "Welcome, #{name}! What are you doing?"
end

puts greeting("Carl")

def multiply(a, b) 
  a * b
end

puts multiply(300, 200)

def scream(words)
  words = words + "!!!!"
  puts words
  return words
end

scream("Yippeee")

