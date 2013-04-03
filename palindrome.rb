def palindrome?(string)
  string.gsub!(/\s/, '')
  head = 0
  tail = string.length - 1

  while head <= tail
    head += 1
    tail -= 1
  end
  if string[head] == string[tail]
    puts 'palindrome'
  else
    puts 'not palindrome'
  end
end

palindrome?("racecar")
palindrome?("hello")
palindrome?("race car")
palindrome?("a memo here my mere home ma")