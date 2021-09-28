def is_isogram(string)
  string.length == string.downcase.chars.to_set.length
end

