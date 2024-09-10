
# Caesar cipher - takes a letter and shifts it by the cipher number

def cipher(string, key)
  # start with an empty array
  code = []

  # alphabet array
  lower_alpha = ("a".."z").to_a
  upper_alpha = ("A".."Z").to_a

  # for each character in message
  string.each_char do |char|

    #checks for lower case
    if lower_alpha.include?(char)
      index = lower_alpha.index(char)
      mod = (index + key).modulo(26)
      code << lower_alpha[mod]

    # checks for uppercase
    elsif upper_alpha.include?(char)
      index = upper_alpha.index(char)
      mod = (index + key).modulo(26)
      code << upper_alpha[mod]
    
    # includes any non alpha characters
    else
      code << char

    end
  end
  # Joins the array into a string
  puts code.join
end

cipher("You are amazing", 6)