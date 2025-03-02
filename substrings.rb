def substrings(word, dictionary)
  word = word.downcase
  result = Hash.new(0)
  
  dictionary.each do |substring|
    matches = word.scan(/#{Regexp.escape(substring.downcase)}/).count
    result[substring] += matches if matches > 0
  end
  
  result
end

# Example usage:
dictionary = ["below", "low", "el", "bell"]
puts substrings("Below the bell tolls low", dictionary)
