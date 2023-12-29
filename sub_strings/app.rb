def substrings(word, dictionary)
  result = Hash.new(0)
  words = word.split(" ")
  dictionary.each do |word_d|
    words.each do |word_w|
      if word_w.downcase.include? word_d.downcase
        result[word_d] += 1
      end
    end
  end
  result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
p substrings("below", dictionary) #=> { "below" => 1, "low" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary) #=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
