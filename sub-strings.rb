def substrings(search_words, words_list)
    matches = []
    matches_index = 0
    words_list.each do |word|
        if  search_words.downcase.include?(word)
            matches[matches_index] = [word]
            matches[matches_index] << search_words.downcase.scan(/#{word}/).count
            matches_index += 1
        end
    end
    matches.to_h
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)