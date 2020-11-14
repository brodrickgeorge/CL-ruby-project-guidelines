require_relative '../config/environment'

Banner.welcome_banner
sleep(2,)
system "clear"
User.setup_user
    

def show_options
  prompt = TTY::Prompt.new
  show_options_input = prompt.select("What would you like to do?", %w(Shuffle! Favorites! Categories! Exit!))
  system "clear"

  case show_options_input
    when "Shuffle!"  
      system "clear"
      Song.song_shuffle

    when "Favorites!"
      system "clear"
      Song.list_of_songs(current_user)
        
    when "Categories!"
      Song.show_categories  
            
    else 
      system "clear"
      puts "Goodbye!"
  end
end
show_options
    