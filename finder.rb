  #given two strings find if the letters in string two are present in string one
  # string1.scan(string2)
  # if string 2 length is longer than string 1, error
  # if string 2 length = 0, error

  # Return index of first substring match Code Screening. Please write a method
  # / function in your favorite language in less than 50 lines of code that will
  # return the index number (the position) of a string within another string.
  # Please do not use any pattern / string matching library method, a sub string
  # method, nor use regular expressions, to solve this problem. Examples: String
  # 1: “abcdefg” String 2: “bcd” Returns: 1 String 1: “abcdefg” String 2: “x”
  # Signal an error

def find_string(source, search)

  if search.length > source.length
    puts "search string longer than source string"
    return
  elsif search.length == 0
    puts "please enter a string to search"
    return
  end

  source.chars.each_with_index do |source_char, source_index|
    #if letter in source string not the first letter in search, move forward to compare
    #next letter in search
    #print something out when you get to first letter in search
    if search[0] == source_char
      found_match = true
      #we have a potential match, now check the rest of the characters
      #if all the characters match, return the potential match
      search.chars.each_with_index do |search_char, search_index|
        if search_char != source[source_index + search_index]
          found_match = false
          break
        end
      end
      return source_index if found_match
    end
  end

  nil
end

puts find_string("hello", "llo")
puts find_string("hello world", "wor")
puts find_string("hello", "bat")
puts find_string("hello", "hellooooo")
puts find_string("hello", "")
