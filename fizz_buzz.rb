require 'divisible'

def fizz_buzz
  1.upto(100) do |n|
    if n.divisible_by?(3) and n.divisible_by?(5)
      puts 'fizzbuzz'
    elsif n.divisible_by?(5)
      puts 'buzz'
    elsif n.divisible_by?(3)
      puts 'fizz'
    else
      puts n
    end
  end
end

fizz_buzz