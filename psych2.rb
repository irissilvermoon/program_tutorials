def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
      break
    else
      puts 'please answer "yes" or "no"'
    end
  end
  answer # this is what we return (true or false)
end
puts 'Hello, and thank you for...'
puts

ask 'do you like eating tacos?' #ignore this return value
ask 'do you like eating burritos?' #and this one
wets_bed = ask 'Do you wet the bed?' # save this return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for....'
puts wets_bed 