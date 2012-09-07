puts 'what is your first name?'
f_name = gets.chomp
puts 'what is your middle name ' + f_name + '?'
m_name = gets.chomp
puts 'excellent ' + f_name + '! now, what is your last name?'
l_name = gets.chomp
num_char = f_name + m_name + l_name
puts "well, #{f_name} #{m_name} #{l_name}..."
puts 'Did you know, there are ' + num_char.length.to_s + ' letters in your name?'
