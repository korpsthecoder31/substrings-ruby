dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings_revised(string, word_list)
  hash = {}
  word_list.map do |word|
    count = string.downcase.scan(word.downcase).length
    hash[word] = count if count > 0
  end
  hash
end

# def substrings(string, word_list)
#  hash = {}
#  word_list.map do |word|
#    if string.downcase.include?(word.downcase)
#      hash[word] = string.downcase.scan(word.downcase).length
#    end
#  end
#  hash
# end

# def substrings_inject_alternate(string, word_list)
#  word_list.inject(Hash.new(0)) do |new_hash, word|
#      count = string.downcase.scan(word.downcase).length
#      new_hash[word] = count if count > 0 
#      new_hash
#  end  
# end

p substrings_revised("Howdy partner, sit down! How's it going?", dictionary)

