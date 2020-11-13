require_relative '../config/environment'


def display_title
     Banner.welcome_banner
end
display_title
sleep(3,)
system "clear"

current_user = User.setup_user


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
          Song.list_of_songs
            
           
        
        when "Categories!"
            Song.show_categories  
            
        else 
            system "clear"
            puts "Goodbye!"
        end
    end
    show_options
    
    
    
