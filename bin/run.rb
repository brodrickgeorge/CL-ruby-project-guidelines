require_relative '../config/environment'
$prompt = TTY::Prompt.new(symbols: {marker: '🎶'})
fork{ exec "afplay", "music/mac.mp3" }
Banner.welcome_banner
sleep(3)
"killall afplay"
system "clear"
User.setup_user


def show_options
  show_options_input = $prompt.select("What would you like to do?", %w(Shuffle! Favorites! Categories! Logout!))
  system "clear"

  case show_options_input
    when "Shuffle!"  
      system "clear"
      Song.song_shuffle

    when "Favorites!"
      system "clear"
      Song.list_of_songs
        
    when "Categories!"
      Song.show_categories  
            
    else 
      system "clear"
      Banner.emoji
      sleep(2)
      system "clear"
  end
end
show_options
    