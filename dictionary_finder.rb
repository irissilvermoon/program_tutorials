
# #Given a string of characters and a dictionary that will
# #return true if a string is a real word, find the words in the string
# #and return the string with a space in between each of the real words.

# #Example: string = "applepie", dictionary("apple") = true,
# #dictionary("pie") = true, dictionary("a") = true,
# #dictionary returns false for all other substrings in "applepie" answer = "apple pie"

# # 1) There are two words in the string
# # 2) There are n words in the string

  def dictionary(word)
    dictionary = ["apple", "pie", "a",
                  "hello", "world", "he"]

    dictionary.include?(word)
  end

  def dictionary_finder(string)
    output = []
    (0...string.length).each do |i|
      (i...string.length).each do |j|
      if dictionary(string[i..j])
        output << string[i..j]
      end
    end
  end
  puts output.join(' ')
end

dictionary_finder("applepie")
dictionary_finder("helloworldapplepie")
dictionary_finder("apple")





