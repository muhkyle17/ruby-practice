def disemvowel(str)
  result = str.gsub(/[aeiou]/i, '')
  return result
end