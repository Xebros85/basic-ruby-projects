
# Convert the string to downcase and then put it into an array
# For each element loop through the dictionary and if included determine if hash has key
# If key exists, iterate the value, if does not exists add key with value 1
# Nil return value (noMethodError) if you try to iterate to an empty key/value pair

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash = {}
  string_array = string.downcase.split
  string_array.each do |i|
    dictionary.each do |s|
      if i.include?(s)
        if hash.has_key?(s)
          hash[s] += 1
        else hash[s] = 1
        end
      end
    end
  end
  puts hash
end


substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
