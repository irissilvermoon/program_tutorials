module UniqueCharacter

#put all the characters in the string into two sets
#first set is Unique Characters, second set is #Non-Unique characters
#check to see if the character is in the unique characters set
#if not, place it there, if it is, put it in non_unique characters
#return the first character in unique characters set.

  require 'set'

  def self.first_unique(string)

    unique = Set.new()
    repeat = Set.new()


    string.each_char do |s|
      if unique.include?(s)
        unique.delete(s)
        #if true, remove from unique and put into repeat
        repeat << s
      else
        unique << s unless repeat.include?(s)
      end
    end
    unique.first
  end
end

require 'minitest/spec'
require 'minitest/autorun'

describe UniqueCharacter do
  it "finds the first non-repeating character" do
    result = UniqueCharacter.first_unique("aabafzabba")
    result.must_equal('f')
  end

  it "should not put items back into unique" do
    result = UniqueCharacter.first_unique("aabafzbb")
    result.must_equal('f')
  end

  it "should really not put items back into unique" do
    result = UniqueCharacter.first_unique("aa")
    result.must_equal(nil)
  end
end

