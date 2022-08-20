# method that takes a string and an array of words as arguments
# returning an object populated by occurence of substrings
# from array

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary_array)
  dictionary_array.reduce(Hash.new(0)) do |accumulator, value|
      if text.include?(value)
        accumulator[value] +=1
      end
      accumulator
    end
end

puts substrings("below", dictionary)