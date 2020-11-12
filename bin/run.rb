require_relative '../config/environment'


def display_title
    font = TTY::Font.new("3d")
    pastel = Pastel.new
    puts pastel.green(font.write("Welcome!"))
    puts pastel.yellow(font.write("To"))
    puts pastel.blue(font.write("ThisMusicApp"))
    sleep(1,)
end
display_title
system "clear"





current_user = User.setup_user
system "clear"
puts "Welcome back, #{current_user.name}!"





def show_options
  prompt = TTY::Prompt.new
  show_options_input = prompt.select("What would you like to do?", %w(Shuffle Favorites Mood! Exit))
  

  case show_options_input
    when "Shuffle"  
      system "clear"
      UserSong.random
      #method name to call on to return random song       
    

    when "Favorites"
      system "clear"
        
      #method name to show list of fav songs + option to add or delete song from fav songs
    

    when "Mood!"
        Song.show_emotion
        sleep(5,)
        system "clear"
    

    else
        system "clear"
        puts "Have a great day!"
    end
end
show_options





# def show_emotion
#       prompt = TTY::Prompt.new
#       input = prompt.select("Please choose an emotion!", %w(Angry Sad Excited Chill Happy))
#       system "clear"
#       songs = Song.find_songs_by_emotion(input)
#       songs.each do |song|
#           puts "Song: #{song.name}, Artist: #{song.artist}"
#       end
#       sleep(5,)
#       system "clear"
#       show_emotion
#     end
#     show_emotion










# # current_user = User.setup_user
# puts "Please Login!"
# name = gets.chomp
# system "clear"
# puts "Hello #{name}!"
# sleep(1,)


# def show_options
#   prompt = TTY::Prompt.new
#   input = prompt.select("Choose an option!", %w(Shuffle Favorites Exit))
# end
# sleep(2,)
# show_options
# system "clear"


# def show_emotion
#   prompt = TTY::Prompt.new
#   input = prompt.select("Please choose an emotion!", %w(Angry Sad Excited Chill Happy))
#   system "clear"
#   songs = Song.find_songs_by_emotion(input)
#   songs.each do |song|
#       puts "Song: #{song.name}, Artist: #{song.artist}"
#   end
#   sleep(5,)
#   system "clear"
#   show_emotion
# end
# show_emotion






# puts "Welcome to this music app!"
# puts "Whats your name?"
# name = gets.chomp
# puts "Hello #{name}"
# User.create(name: name)
# puts "What genre?"
# genre = gets.chomp
# my_song = User.find_songs_by_genre(genre)
# puts "Choose Song"
# my_song.each do |song|
#    puts "Song: #{song.name}, Artist: #{song.artist}"
# end




