
while true
  puts 'Hello, is someone there?'
  input = gets.chomp.downcase
  if input == 'hello' || input == 'hi' || input == 'howdy' || input == 'ahoy' || input == 'hola'
    greetings = ['Hi', 'Hello', 'Ahoy!', 'Howdy', 'Hola!' ]
    puts greetings.shuffle.first
    break
  else
    puts 'Oh, I\'m sorry, were you talking to me?'
  end
end


