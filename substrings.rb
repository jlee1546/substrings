# method that takes a string and an array of words as arguments
# returning a hash counting number of times each substring (if found) was found
# in 

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

text = "Howdy partner, sit down! How's it going?"

def substrings(text, dictionary_array)
  
  # creates an array of lowercase string
  text_array = text.downcase.split()

  dictionary_array.reduce(Hash.new(0)) do |accumulator, value|
    text_array.each do |element|
      if element.include?(value)
        accumulator[value] += 1
      end
    end
    accumulator
  end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)