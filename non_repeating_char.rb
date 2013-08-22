

def first_non_repeating_char(string)

#put all the characters in the string into two sets
#first set is Unique Characters, second set is #Non-Unique characters
#check to see if the character is in the unique characters set
#if not, place it there, if it is, put it in non_unique characters
#return the first character in unique characters set.

  unique = []
  repeat = []

  str = string.each_char.to_a
  (0...str.length).each do |i|
    unique << str
    if unique.include?(str)
      repeat << str
    end
  end
  puts unique[0]
end



first_non_repeating_char("string")
first_non_repeating_char("hello")
first_non_repeating_char("jjjijjj")
first_non_repeating_char("abbeabbbeal")


