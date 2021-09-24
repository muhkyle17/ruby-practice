# def caesar_cipher(text, shift)
#   for i in 0...text.length do
#     char_code = text[i].ord
    
#     (a, z) = case char_code
#              when 97..122 then [97, 122]   # a-z
#              when 65..90  then [65, 90]    # A-Z
#              else next
#     end

#     rotate = shift > 0 ? 26 : -26

#     char_code += shift
#     char_code -= rotate unless char_code.between?(a, z)

#     text[i] = char_code.chr
#   end
# end

# message = "Omae wa mou shindeiru. -NANI!?!!"

# caesar_cipher(message, 21)

# puts message

def caesar_cipher(text, shift)
  # "A" = 65, "Z" = 90, a = "91", z = "122"
  
  non_converted_text = []
  converted_text = []
  # Convert the string into its ordidance integer
  text.each_char do |ch| 
    converted_text.push(ch.ord)
    non_converted_text.push(ch.ord)
  end
  
  p converted_text
  p non_converted_text
  
  # Convert the passed in string into a number corresponding to the alphabet
  converted_text.map! do |num| 
    if num >= 65 && num <= 90
      num - 64
    elsif num >= 91 && num <= 122
      num - 96
    end
  end

  p converted_text

  # Add each of the converted string by the number passed into the method

  converted_text.map! { |num| num + shift }

  p converted_text

  # Check if number letter is greater than 26 to make it start from 1 again 
  # Check if number letter t == 0 to add 1
  converted_text.map! do |num|
    if num > 26
      num - 26
    elsif num <= 26
      num
    end
  end

  p converted_text


  # Convert the array back into its corresponding string
  # Remember to loop from 26 back to 1 and keep the same case 

  converted_text.map! { |num| (num + 96).chr }
  p converted_text

  # converted_text.map! do |num|
  #   if text == text.upcase
  #     num + 64
  #   elsif text != text.upcase 
  #     num + 96
  #   end
  # end

  # p converted_text.map { |txt| text.match([A-Za-z] ) }


  # p converted_text
  # p non_converted_text

  puts converted_text.join("")


end

caesar_cipher("HELLO THERE", 6)


 # converted_string.map! { |num| (num + 96).chr }