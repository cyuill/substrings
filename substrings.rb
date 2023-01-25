
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)

  word = word.downcase
  dictionary.each_with_object(Hash.new(0)) do |substring, substring_count|
    substring_count[substring.downcase] += word.scan(substring.downcase).size
  end
end

puts substrings("below it own low", dictionary)