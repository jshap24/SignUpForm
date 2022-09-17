
def substrings(string, dictionary)

    #count each word
    word_count = Hash.new(0)
    string = string.downcase

    dictionary.each do |word|
        word_count[word] = string.scan(word).size if string.include?(word) 
    end
    return word_count
end

#original array with provided words
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"

puts substrings(string, dictionary)