Dir.chdir '/Users/karen/Desktop/Beatport Music'
all_mp3s = Dir['*.{mp3}']
puts all_mp3s.shuffle.first
File.open 'playlist.m3u', 'w' do |f|
  all_mp3s.each do |mp3|
    f.write mp3+"\n"
  end
end
puts 'done!'


