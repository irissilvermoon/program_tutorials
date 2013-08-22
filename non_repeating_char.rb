

def first_non_repeating_char(string)

#put all the characters in the string into two sets
#first set is Unique Characters, second set is #Non-Unique characters
#check to see if the character is in the unique characters set
#if not, place it there, if it is, put it in non_unique characters
#return the first character in unique characters set.
  require 'set'




    unique = Set.new()
    repeat = Set.new()


    string.each_char do |s|
      if unique.include?(s)
        unique.delete(s)
        #if true, remove from unique and put into repeat
        repeat << s
      end
      unique << s
    end
  puts unique.first
end



first_non_repeating_char("string")
first_non_repeating_char("hello")
first_non_repeating_char("jjjijjj")
first_non_repeating_char("abbeabbbeal")


#unique includes all characters, if one of the characters is present, should remove that character