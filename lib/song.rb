class Song < ActiveRecord::Base
    has_many :user_songs
    has_many :users, through: :user_songs


    def self.song_shuffle
        array = []
          song_info= Song.all.map do |song|
           array << "#{song.name} - #{song.artist}"
        end
        prompt = TTY::Prompt.new
        input = prompt.select("Shuffling songs!", %w(Next), array.sample, %w(Main_Menu))
        case input
            when "Next"
                system "clear"
                song_shuffle
        
            when "Main_Menu"
                system "clear"
                show_options

            when "Nights - Frank Ocean"
                system "clear"
                pid = fork{ exec "afplay", "music/nights.mp3" }
                input = prompt.select("Now listening to Nights by Frank Ocean", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end


            when "Si Veo a Tu Mamá - Bad Bunny"
                system "clear"
                pid = fork{ exec "afplay", "music/siveoatumama.mp3" }
                input = prompt.select("Now listening to Si Veo a Tu Mamá by Bad Bunny", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end


            when "White Rails - J.R. Leaonard"
                system "clear"
                pid = fork{ exec "afplay", "music/whiterails.mp3" }
                input = prompt.select("Now listening to White Rails by J.R. Leaonard", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Issues - Julia Michaels"
                system "clear"
                pid = fork{ exec "afplay", "music/issues.mp3" }
                input = prompt.select("Now listening to Issues by Julia Michaels", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Wont Stop - Lonely God"
                system "clear"
                pid = fork{ exec "afplay", "music/wontstop.mp3" }
                input = prompt.select("Now listening to Wont Stop by Lonely God", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Suavemente - Elvis Crespo"
                system "clear"
                pid = fork{ exec "afplay", "music/suavemente.mp3" }
                input = prompt.select("Now listening to Suavemente by Elvis Crespo", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "XO Tour Life3 - Lil Uzi Vert"
                system "clear"
                pid = fork{ exec "afplay", "music/xotourlif3.mp3" }
                input = prompt.select("Now listening to XO Tour Life3 by Lil Uzi Vert", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Nothing But Summer - Dallas Smith"
                system "clear"
                pid = fork{ exec "afplay", "music/nothingbutsummer.mp3" }
                input = prompt.select("Now listening to Nothing But Summer by Dallas Smith", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Party Rock Anthem - LMFAO"
                system "clear"
                pid = fork{ exec "afplay", "music/partyrockanthem.mp3" }
                input = prompt.select("Now listening to Party Rock Anthem by LMFAO", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "The End - Beach Goons"
                system "clear"
                pid = fork{ exec "afplay", "music/theend.mp3" }
                input = prompt.select("Now listening to The End by Beach Goons", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Amanece - Anuel AA"
                system "clear"
                pid = fork{ exec "afplay", "music/amanece.mp3" }
                input = prompt.select("Now listening to Amanece by Anuel AA", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Laugh Now Cry Later - Drake"
                system "clear"
                pid = fork{ exec "afplay", "music/laughnowcrylater.mp3" }
                input = prompt.select("Now listening to Laugh Now Cry Later by Drake", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Toes - Zac Brown Band"
                system "clear"
                pid = fork{ exec "afplay", "music/toes.mp3" }
                input = prompt.select("Now listening to Toes by Zac Brown Band", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "iSpy - Kyle"
                system "clear"
                pid = fork{ exec "afplay", "music/ispy.mp3" }
                input = prompt.select("Now listening to iSpy by Kyle", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Glitter - Benee"
                system "clear"
                pid = fork{ exec "afplay", "music/glitter.mp3" }
                input = prompt.select("Now listening to Glitter by Benee", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Háblame De Ti - Herencia de Patrones"
                system "clear"
                pid = fork{ exec "afplay", "music/hablamedeti.mp3" }
                input = prompt.select("Now listening to Háblame De Ti by Herencia de Patrones", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Empty - Juice WRLD"
                system "clear"
                pid = fork{ exec "afplay", "music/empty.mp3" }
                input = prompt.select("Now listening to Empty by Juice WRLD", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "New Flesh - Current Joys"
                system "clear"
                pid = fork{ exec "afplay", "music/newflesh.mp3" }
                input = prompt.select("Now listening to New Flesh by Current Joys", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "What Hurts The Most - Rascal Flatts"
                system "clear"
                pid = fork{ exec "afplay", "music/whathurtsthemost.mp3" }
                input = prompt.select("Now listening to What Hurts The Most by Rascal Flatts", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Feeling Whitney - Post Malone"
                system "clear"
                pid = fork{ exec "afplay", "music/feelingwhitney.mp3" }
                input = prompt.select("Now listening to Feeling Whitney by Post Malone", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Gasolina - Daddy Yankee"
                system "clear"
                pid = fork{ exec "afplay", "music/gasolina.mp3" }
                input = prompt.select("Now listening to Gasolina by Daddy Yankee", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Freestyle - Lil Baby"
                system "clear"
                pid = fork{ exec "afplay", "music/freestyle.mp3" }
                input = prompt.select("Now listening to Freestyle by Lil Baby", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Old Town Road - Lil Nas X"
                system "clear"
                pid = fork{ exec "afplay", "music/oldtownroad.mp3" }
                input = prompt.select("Now listening to Old Town Road by Lil Nas X", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Teenagers - My Chemical Romance"
                system "clear"
                pid = fork{ exec "afplay", "music/teenagers.mp3" }
                input = prompt.select("Now listening to Teenagers by My Chemical Romance", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
    
            when "Heathers - Surf Curse"
                system "clear"
                pid = fork{ exec "afplay", "music/heathers.mp3" }
                input = prompt.select("Now listening to Heathers by Surf Curse", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 Song.song_shuffle
              end
        
              when "Main_Menu"
                  show_options
              end
            end






    def self.find_songs_by_genre(genre)
        self.all.select do |song|
            song.genre == genre
        end
    end


    def self.find_songs_by_emotion(emotion)
        Song.all.select do |song|
            song.emotion == emotion
        end
    end

    def self.show_emotion
        prompt = TTY::Prompt.new
        input = prompt.select("Please choose an emotion!", %w(Angry Sad Excited Chill Happy Go_Back))
        system "clear"
        songs = Song.find_songs_by_emotion(input)
        
        case input
        when "Go_Back"
            Song.show_categories
    
        else
            songs.each do |song|
            puts "#{song.name} - #{song.artist}"
            end
                sleep(5,)
                system "clear"
                show_emotion
        end
    end


    def self.show_categories
        prompt = TTY::Prompt.new
        user_input = prompt.select("Choose one!", %w(Mood! Genre! Main_Menu!))
        system "clear"
        case user_input
                when "Mood!"
                Song.show_emotion
                sleep(5,)
                system "clear"
    
                when "Genre!"
                Song.show_genre
                sleep(5,)
                system "clear"

                when "Main_Menu!"
                show_options
            end
    end


      def self.show_genre
        prompt = TTY::Prompt.new
        input = prompt.select("Please choose a genre!", %w(Pop Country HipHop Latin Indie Go_Back))
        system "clear"
        songs = Song.find_songs_by_genre(input)
        
        case input
                when "Go_Back"
                Song.show_categories
                else 
                songs.each do |song|
                puts "#{song.name} - #{song.artist}"
                end 
        end
        sleep(5,)
        system "clear"
        show_genre
      end
      

     def self.list_of_songs
        prompt = TTY::Prompt.new
        song_info = Song.all.map do |song|
            "#{song.name} - #{song.artist}"
          end
          user_input = prompt.select("Play a song!", %w(Add_Song Delete_Song), song_info, %w(Main_Menu))
              system "clear"
              case user_input
              when "Nights - Frank Ocean"
                pid = fork{ exec "afplay", "music/nights.mp3" }
                input = prompt.select("Now listening to Nights by Frank Ocean", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end


            when "Si Veo a Tu Mamá - Bad Bunny"
                pid = fork{ exec "afplay", "music/siveoatumama.mp3" }
                input = prompt.select("Now listening to Si Veo a Tu Mamá by Bad Bunny", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end


            when "White Rails - J.R. Leaonard"
                pid = fork{ exec "afplay", "music/whiterails.mp3" }
                input = prompt.select("Now listening to White Rails by J.R. Leaonard", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Issues - Julia Michaels"
                pid = fork{ exec "afplay", "music/issues.mp3" }
                input = prompt.select("Now listening to Issues by Julia Michaels", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Wont Stop - Lonely God"
                pid = fork{ exec "afplay", "music/wontstop.mp3" }
                input = prompt.select("Now listening to Wont Stop by Lonely God", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Suavemente - Elvis Crespo"
                pid = fork{ exec "afplay", "music/suavemente.mp3" }
                input = prompt.select("Now listening to Suavemente by Elvis Crespo", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "XO Tour Life3 - Lil Uzi Vert"
                pid = fork{ exec "afplay", "music/xotourlif3.mp3" }
                input = prompt.select("Now listening to XO Tour Life3 by Lil Uzi Vert", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Nothing But Summer - Dallas Smith"
                pid = fork{ exec "afplay", "music/nothingbutsummer.mp3" }
                input = prompt.select("Now listening to Nothing But Summer by Dallas Smith", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Party Rock Anthem - LMFAO"
                pid = fork{ exec "afplay", "music/partyrockanthem.mp3" }
                input = prompt.select("Now listening to Party Rock Anthem by LMFAO", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "The End - Beach Goons"
                pid = fork{ exec "afplay", "music/theend.mp3" }
                input = prompt.select("Now listening to The End by Beach Goons", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Amanece - Anuel AA"
                pid = fork{ exec "afplay", "music/amanece.mp3" }
                input = prompt.select("Now listening to Amanece by Anuel AA", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Laugh Now Cry Later - Drake"
                pid = fork{ exec "afplay", "music/laughnowcrylater.mp3" }
                input = prompt.select("Now listening to Laugh Now Cry Later by Drake", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Toes - Zac Brown Band"
                pid = fork{ exec "afplay", "music/toes.mp3" }
                input = prompt.select("Now listening to Toes by Zac Brown Band", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "iSpy - Kyle"
                pid = fork{ exec "afplay", "music/ispy.mp3" }
                input = prompt.select("Now listening to iSpy by Kyle", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Glitter - Benee"
                pid = fork{ exec "afplay", "music/glitter.mp3" }
                input = prompt.select("Now listening to Glitter by Benee", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Háblame De Ti - Herencia de Patrones"
                pid = fork{ exec "afplay", "music/hablamedeti.mp3" }
                input = prompt.select("Now listening to Háblame De Ti by Herencia de Patrones", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Empty - Juice WRLD"
                pid = fork{ exec "afplay", "music/empty.mp3" }
                input = prompt.select("Now listening to Empty by Juice WRLD", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "New Flesh - Current Joys"
                pid = fork{ exec "afplay", "music/newflesh.mp3" }
                input = prompt.select("Now listening to New Flesh by Current Joys", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "What Hurts The Most - Rascal Flatts"
                pid = fork{ exec "afplay", "music/whathurtsthemost.mp3" }
                input = prompt.select("Now listening to What Hurts The Most by Rascal Flatts", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Feeling Whitney - Post Malone"
                pid = fork{ exec "afplay", "music/feelingwhitney.mp3" }
                input = prompt.select("Now listening to Feeling Whitney by Post Malone", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Gasolina - Daddy Yankee"
                pid = fork{ exec "afplay", "music/gasolina.mp3" }
                input = prompt.select("Now listening to Gasolina by Daddy Yankee", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Freestyle - Lil Baby"
                pid = fork{ exec "afplay", "music/freestyle.mp3" }
                input = prompt.select("Now listening to Freestyle by Lil Baby", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Old Town Road - Lil Nas X"
                pid = fork{ exec "afplay", "music/oldtownroad.mp3" }
                input = prompt.select("Now listening to Old Town Road by Lil Nas X", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Teenagers - My Chemical Romance"
                pid = fork{ exec "afplay", "music/teenagers.mp3" }
                input = prompt.select("Now listening to Teenagers by My Chemical Romance", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
    
            when "Heathers - Surf Curse"
                pid = fork{ exec "afplay", "music/heathers.mp3" }
                input = prompt.select("Now listening to Heathers by Surf Curse", %w(Go_Back))
                 case input
                when "Go_Back"
                 system "killall afplay"
                 system "clear"
                 list_of_songs
              end
        
              when "Main_Menu"
                  show_options
              end
        end

     


end 
