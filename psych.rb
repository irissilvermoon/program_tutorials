def old_roman_numeral num
  roman = ''

  key = [['M', 1000], ['D', 500], ['C', 100], ['L', 50], ['X', 10], ['V', 5], ['I', 1]]

  key.each do |entry|
    letter = entry[0]
    number = entry[1]

    q = num / number
    roman += letter * q

    num = num % number
  end

  roman
end

while true do
  puts "Give me a number"
  n = gets.to_i

  puts "The roman version of #{n} is #{old_roman_numeral n}"
end