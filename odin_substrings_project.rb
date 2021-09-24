
def substrings(text, dictionary)
  result = Hash.new(0)
  lowered_text = text.downcase

  p lowered_text

  dictionary.each do |word|
    matches = lowered_text.scan(word)
    p matches
    result[word] = matches unless matches == 0
  end

  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)