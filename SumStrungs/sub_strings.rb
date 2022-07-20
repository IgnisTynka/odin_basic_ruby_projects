def sub_strings(dictionary, string)
    string.downcase!
    substrings = Hash.new(0)

    dictionary.each do |word|
        finds_array = string.scan(word)
        finds_number = finds_array.length
        substrings[word] = finds_number if finds_number != 0
    end

    substrings
end 

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

sub_strings(dictionary, "Howdy partner, sit down! How's it going?")