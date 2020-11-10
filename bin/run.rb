require_relative '../config/environment'

puts "Welcome to this music app!"
puts "Whats your name?"
name = gets.chomp
puts "Hello #{name}"
User.create(name: name)
puts "What genre?"
genre = gets.chomp
my_song = User.find_songs_by_genre(genre)
puts "Choose Song"
my_song.each do |song|
   puts "Song: #{song.name}, Artist: #{song.artist}"
end


