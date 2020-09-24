$dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict)
  stArr = str.scan(/[\w']+/)
  countHash = Hash.new(0)

  $dictionary.reduce(countHash) do | result, substr |
    stArr.each do |word|
      if(word.downcase.include?(substr))
        countHash[substr] += 1
      end
    end
  end

  countHash

end

p substrings("Howdy partner, sit down! How's it going?", $dictionary)