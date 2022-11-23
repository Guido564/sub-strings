def substrings(word, dictionary)
    word_to_array = word.downcase.split(' ')
    result = Hash.new(0)
  
    word_to_array.each do |string|
        dictionary.each do |match|
            if string.include?(match)
                result[match] += 1
            end
        end
    end
    result
end
  
dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dict)