def palindrome?(string)
  string = string.gsub(/\s/, '')
  head = 0
  tail = string.length - 1

  while head <= tail
    if string[head] != string[tail]
      puts "#{string}: not palindrome"
      return
    end

    head += 1
    tail -= 1
  end
  puts "#{string}: palindrome"
end

palindrome?("racecar")
palindrome?("hello")
palindrome?("race car")
palindrome?("a memo here my mere home ma")
palindrome?("abcbbbabc")
palindrome?("abaaaca")
