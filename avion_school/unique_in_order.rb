def unique_in_order(string)
  string = string.split("") if !string.is_a?

  string.each_with_object([]) do |e, array|
    array << e unless array.include?(e)
  end
end

puts unique_in_order('AAAABBBCCDAABBB')
puts unique_in_order('ABBCcAD')
puts unique_in_order([1,2,2,3,3])