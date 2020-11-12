class MusicApp

    def run
      welcome
      setup_user
      show_options
    end
  


    # private
    
    def welcome
          puts "Howdy! Are you ready some songs?"
    end


    def setup_user
        system "clear"
        prompt = TTY::Prompt.new
        user_input = prompt.select("Please LogIn or SignUp!",
          %w(Login SignUp))
    
        if user_input == "SignUp"
          create_new_user
        else
          find_existing_user
        end
      end
    

      def create_new_user
        puts "Please create username:"
        user_name = gets.chomp
    
        if User.find_by(name: user_name)
          puts "Username already taken"
          create_new_user
        else
          
            current_user = User.create(name: user_name)
            puts "Created Account! Welcome, #{current_user.name}!"
        end
            current_user
        end
    
    

      def find_existing_user
        puts "Please enter username:"
        user_name = gets.chomp
        current_user = User.find_by(user_name == User.name)
        if User.all.map { |user| user.name }.include?(user_name)
            puts "Welcome back, #{current_user.name}!"
          else
            puts "Username not found!"
            find_existing_user
          end
          current_user
      end

    end

  
    # def login_or_signup
    #   puts "Please enter your username to sign up or log in:"
    #   username = gets.chomp.
    #   user = User.find_or_create_by(name: username)
    #   system 'clear'
    #   puts "Alrighty, #{@user.name}!"
    #   sleep(0.3)
    # end
  

    def show_options
          prompt = TTY::Prompt.new
          input = prompt.select("Choose an option!", %w(Shuffle Favorites Exit))
        end
        sleep(2,)
        show_options

    # def wanna_see_favs?
    #   puts "Wanna see your fav jokes?"
    #   answer = gets.chomp
    #   if answer.downcase == "yes"
    #     system 'clear'
    #     show_songs
    #     puts "\n"
    #   else
    #     puts "Alrighty!"
    #   end
    #   puts "What do you want to hear a joke about?"
    #   sleep(0.1)
    #   puts "Write 'random' to see a random joke"
    # end
  
    # def show_songs
    #   if User.songs.length == 0
    #     no_songs
    #   else
    #     user_favs
    #   end
    # end
  
   
   
    # def user_favs
      
    #   user.songs.map do |song|
    #   end
    # end
  


    # def no_songs
      
    #   puts "You have no fav songs yet!"
    #   puts "Let's change that!"
  


    # def what_genre
    #   joke_subject = gets.chomp.downcase
    # end
  
    
  
    
      
    #   if resp == nil || resp.length == 0 
    #     puts "Sorry! No jokes about it"
    #   else
    #     song = Song.find_or_create_by(content: resp)
    #     system 'clear'
        
    #     puts resp
    #   end
    #   sleep(2,)
    #   save_it?(song)
    # end
  
    # def save_it?(song)
    #   puts "Do you want to save this song to your favs?"
    #   answer = gets.chomp
    #   if answer == "yes"
    #     fav_song(song)
    #   elsif answer == "no"
    #     another_one?
    #   else
    #     puts "Say 'yes' or 'no'"
    #     save_it?
    #   end
    # end
  
    # def fav_song(song)
    #   UserSong.find_or_create_by(@user_id: user.id, song_id: song.id)
    #   system 'clear'
    #   puts "saved!"
    #   sleep(2)
     
    #   another_one?
    # end
  
    # def another_one?
      
    #   prompts = ["Wanna hear another song?"]

    #   puts prompts.sample
    
    #   next_steps
    # end
  


    # def next_steps
    #   answer = gets.chomp
    #    answer == "yes"
    #     get_song(what_genre)
    #   elsif answer == "no"
        # puts "goodbye!"
        # sleep(1)
        # system 'exit'
    #   else
    #     puts "Say 'yes' or 'no'"
    #     next_steps
    #end
    # end
  
  