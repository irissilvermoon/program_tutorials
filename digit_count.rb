def digit_count(number)
  digits = number.to_s(2)

  puts digits.count("1")
end

digit_count(5)
digit_count(1)
digit_count(42)