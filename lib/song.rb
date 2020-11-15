class Song < ActiveRecord::Base
    has_many :user_songs
    has_many :users, through: :user_songs
    $prompt = TTY::Prompt.new(symbols: {marker: '🎶'})
    $prompt_other = TTY::Prompt.new(symbols: {marker: '🔊'}) 
    $prompt_other2 = TTY::Prompt.new(symbols: {marker: '🔇'}) 

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
        input = prompt.select("Please choose an emotion!", %w(Angry Sad Excited Chill Happy Go_Back))
        system "clear"
        songs = Song.find_songs_by_emotion(input)
            
        case input
        when "Go_Back"
            Song.show_categories
            
        else
            list = songs.map do |song|
               "#{song.name} by #{song.artist}"
            end
            input = $prompt_other2.select("Play a Song!", list, %w(Go_Back))
            
            case input
            when "Go_Back"
                system "clear"
                show_emotion

            when "Nights by Frank Ocean"
            system "clear"
            pid = fork{ exec "afplay", "music/nights.mp3" }
            input = $prompt_other.select("Now listening to Nights by Frank Ocean", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end


        when "Si Veo a Tu Mamá by Bad Bunny"
            system "clear"
            pid = fork{ exec "afplay", "music/siveoatumama.mp3" }
            input = $prompt_other.select("Now listening to Si Veo a Tu Mamá by Bad Bunny", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end


        when "White Rails by J.R. Leaonard"
            system "clear"
            pid = fork{ exec "afplay", "music/whiterails.mp3" }
            input = $prompt_other.select("Now listening to White Rails by J.R. Leaonard", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Issues by Julia Michaels"
            system "clear"
            pid = fork{ exec "afplay", "music/issues.mp3" }
            input = $prompt_other.select("Now listening to Issues by Julia Michaels", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Wont Stop by Lonely God"
            system "clear"
            pid = fork{ exec "afplay", "music/wontstop.mp3" }
            input = $prompt_other.select("Now listening to Wont Stop by Lonely God", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Suavemente by Elvis Crespo"
            system "clear"
            pid = fork{ exec "afplay", "music/suavemente.mp3" }
            input = $prompt_other.select("Now listening to Suavemente by Elvis Crespo", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "XO Tour Life3 by Lil Uzi Vert"
            system "clear"
            pid = fork{ exec "afplay", "music/xotourlif3.mp3" }
            input = $prompt_other.select("Now listening to XO Tour Life3 by Lil Uzi Vert", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Nothing But Summer by Dallas Smith"
            system "clear"
            pid = fork{ exec "afplay", "music/nothingbutsummer.mp3" }
            input = $prompt_other.select("Now listening to Nothing But Summer by Dallas Smith", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Party Rock Anthem by LMFAO"
            system "clear"
            pid = fork{ exec "afplay", "music/partyrockanthem.mp3" }
            input = $prompt_other.select("Now listening to Party Rock Anthem by LMFAO", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "The End by Beach Goons"
            system "clear"
            pid = fork{ exec "afplay", "music/theend.mp3" }
            input = $prompt_other.select("Now listening to The End by Beach Goons", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Amanece by Anuel AA"
            system "clear"
            pid = fork{ exec "afplay", "music/amanece.mp3" }
            input = $prompt_other.select("Now listening to Amanece by Anuel AA", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Laugh Now Cry Later by Drake"
            system "clear"
            pid = fork{ exec "afplay", "music/laughnowcrylater.mp3" }
            input = $prompt_other.select("Now listening to Laugh Now Cry Later by Drake", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Toes by Zac Brown Band"
            system "clear"
            pid = fork{ exec "afplay", "music/toes.mp3" }
            input = $prompt_other.select("Now listening to Toes by Zac Brown Band", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "iSpy by Kyle"
            system "clear"
            pid = fork{ exec "afplay", "music/ispy.mp3" }
            input = $prompt_other.select("Now listening to iSpy by Kyle", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Glitter by Benee"
            system "clear"
            pid = fork{ exec "afplay", "music/glitter.mp3" }
            input = $prompt_other.select("Now listening to Glitter by Benee", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Háblame De Ti by Herencia de Patrones"
            system "clear"
            fork{ exec "afplay", "music/hablamedeti.mp3" }
            input = $prompt_other.select("Now listening to Háblame De Ti by Herencia de Patrones", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Empty by Juice WRLD"
            system "clear"
            fork{ exec "afplay", "music/empty.mp3" }
            input = $prompt_other.select("Now listening to Empty by Juice WRLD", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "New Flesh by Current Joys"
            system "clear"
            fork{ exec "afplay", "music/newflesh.mp3" }
            input = $prompt_other.select("Now listening to New Flesh by Current Joys", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "What Hurts The Most by Rascal Flatts"
            system "clear"
            fork{ exec "afplay", "music/whathurtsthemost.mp3" }
            input = $prompt_other.select("Now listening to What Hurts The Most by Rascal Flatts", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Feeling Whitney by Post Malone"
            system "clear"
            fork{ exec "afplay", "music/feelingwhitney.mp3" }
            input = $prompt_other.select("Now listening to Feeling Whitney by Post Malone", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Gasolina by Daddy Yankee"
            system "clear"
            fork{ exec "afplay", "music/gasolina.mp3" }
            input = $prompt_other.select("Now listening to Gasolina by Daddy Yankee", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Freestyle by Lil Baby"
            system "clear"
            fork{ exec "afplay", "music/freestyle.mp3" }
            input = $prompt_other.select("Now listening to Freestyle by Lil Baby", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Old Town Road by Lil Nas X"
            system "clear"
            fork{ exec "afplay", "music/oldtownroad.mp3" }
            input = $prompt_other.select("Now listening to Old Town Road by Lil Nas X", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Teenagers by My Chemical Romance"
            system "clear"
            fork{ exec "afplay", "music/teenagers.mp3" }
            input = $prompt_other.select("Now listening to Teenagers by My Chemical Romance", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end

        when "Heathers by Surf Curse"
            system "clear"
            fork{ exec "afplay", "music/heathers.mp3" }
            input = $prompt_other.select("Now listening to Heathers by Surf Curse", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_emotion
            end
        end
      end
    end
        

    def self.show_categories
        user_input = $prompt.select("Choose one!", %w(Mood! Genre! Main_Menu!))
        system "clear"
        case user_input
        when "Mood!"
            Song.show_emotion
                
        when "Genre!"
            Song.show_genre

        when "Main_Menu!"
            show_options
        end
    end
        
        
    def self.show_genre
        input = $prompt.select("Please choose a genre!", %w(Pop Country HipHop Latin Indie Go_Back))
        system "clear"
        songs = Song.find_songs_by_genre(input)
        
        case input
        when "Go_Back"
            Song.show_categories
            
        else
            list = songs.map do |song|
               "#{song.name} by #{song.artist}"
            end
            input = $prompt_other2.select("Play a Song!", list, %w(Go_Back))
            
            case input
            when "Go_Back"
                system "clear"
                show_genre

            when "Nights by Frank Ocean"
            system "clear"
            pid = fork{ exec "afplay", "music/nights.mp3" }
            input = $prompt_other.select("Now listening to Nights by Frank Ocean", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end


        when "Si Veo a Tu Mamá by Bad Bunny"
            system "clear"
            pid = fork{ exec "afplay", "music/siveoatumama.mp3" }
            input = $prompt_other.select("Now listening to Si Veo a Tu Mamá by Bad Bunny", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end


        when "White Rails by J.R. Leaonard"
            system "clear"
            pid = fork{ exec "afplay", "music/whiterails.mp3" }
            input = $prompt_other.select("Now listening to White Rails by J.R. Leaonard", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Issues by Julia Michaels"
            system "clear"
            pid = fork{ exec "afplay", "music/issues.mp3" }
            input = $prompt_other.select("Now listening to Issues by Julia Michaels", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Wont Stop by Lonely God"
            system "clear"
            pid = fork{ exec "afplay", "music/wontstop.mp3" }
            input = $prompt_other.select("Now listening to Wont Stop by Lonely God", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Suavemente by Elvis Crespo"
            system "clear"
            pid = fork{ exec "afplay", "music/suavemente.mp3" }
            input = $prompt_other.select("Now listening to Suavemente by Elvis Crespo", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "XO Tour Life3 by Lil Uzi Vert"
            system "clear"
            pid = fork{ exec "afplay", "music/xotourlif3.mp3" }
            input = $prompt_other.select("Now listening to XO Tour Life3 by Lil Uzi Vert", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Nothing But Summer by Dallas Smith"
            system "clear"
            pid = fork{ exec "afplay", "music/nothingbutsummer.mp3" }
            input = $prompt_other.select("Now listening to Nothing But Summer by Dallas Smith", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Party Rock Anthem by LMFAO"
            system "clear"
            pid = fork{ exec "afplay", "music/partyrockanthem.mp3" }
            input = $prompt_other.select("Now listening to Party Rock Anthem by LMFAO", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "The End by Beach Goons"
            system "clear"
            pid = fork{ exec "afplay", "music/theend.mp3" }
            input = $prompt_other.select("Now listening to The End by Beach Goons", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Amanece by Anuel AA"
            system "clear"
            pid = fork{ exec "afplay", "music/amanece.mp3" }
            input = $prompt_other.select("Now listening to Amanece by Anuel AA", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Laugh Now Cry Later by Drake"
            system "clear"
            pid = fork{ exec "afplay", "music/laughnowcrylater.mp3" }
            input = $prompt_other.select("Now listening to Laugh Now Cry Later by Drake", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Toes by Zac Brown Band"
            system "clear"
            pid = fork{ exec "afplay", "music/toes.mp3" }
            input = $prompt_other.select("Now listening to Toes by Zac Brown Band", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "iSpy by Kyle"
            system "clear"
            pid = fork{ exec "afplay", "music/ispy.mp3" }
            input = $prompt_other.select("Now listening to iSpy by Kyle", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Glitter by Benee"
            system "clear"
            pid = fork{ exec "afplay", "music/glitter.mp3" }
            input = $prompt_other.select("Now listening to Glitter by Benee", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Háblame De Ti by Herencia de Patrones"
            system "clear"
            fork{ exec "afplay", "music/hablamedeti.mp3" }
            input = $prompt_other.select("Now listening to Háblame De Ti by Herencia de Patrones", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Empty by Juice WRLD"
            system "clear"
            fork{ exec "afplay", "music/empty.mp3" }
            input = $prompt_other.select("Now listening to Empty by Juice WRLD", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "New Flesh by Current Joys"
            system "clear"
            fork{ exec "afplay", "music/newflesh.mp3" }
            input = $prompt_other.select("Now listening to New Flesh by Current Joys", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "What Hurts The Most by Rascal Flatts"
            system "clear"
            fork{ exec "afplay", "music/whathurtsthemost.mp3" }
            input = $prompt_other.select("Now listening to What Hurts The Most by Rascal Flatts", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Feeling Whitney by Post Malone"
            system "clear"
            fork{ exec "afplay", "music/feelingwhitney.mp3" }
            input = $prompt_other.select("Now listening to Feeling Whitney by Post Malone", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Gasolina by Daddy Yankee"
            system "clear"
            fork{ exec "afplay", "music/gasolina.mp3" }
            input = $prompt_other.select("Now listening to Gasolina by Daddy Yankee", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Freestyle by Lil Baby"
            system "clear"
            fork{ exec "afplay", "music/freestyle.mp3" }
            input = $prompt_other.select("Now listening to Freestyle by Lil Baby", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Old Town Road by Lil Nas X"
            system "clear"
            fork{ exec "afplay", "music/oldtownroad.mp3" }
            input = $prompt_other.select("Now listening to Old Town Road by Lil Nas X", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Teenagers by My Chemical Romance"
            system "clear"
            fork{ exec "afplay", "music/teenagers.mp3" }
            input = $prompt_other.select("Now listening to Teenagers by My Chemical Romance", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end

        when "Heathers by Surf Curse"
            system "clear"
            fork{ exec "afplay", "music/heathers.mp3" }
            input = $prompt_other.select("Now listening to Heathers by Surf Curse", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                show_genre
            end
        end
      end
    end
        
    def self.go_back
        system "killall afplay"
        system "clear"
        Song.list_of_songs
    end


    def self.song_shuffle
        array = []
        song_info= Song.all.map do |song|
            array << "#{song.name} by #{song.artist}"
        end
        input = $prompt_other2.select("Shuffling songs!", %w(Next), array.sample, %w(Main_Menu))
        case input
        when "Next"
            system "clear"
            song_shuffle
        when "Main_Menu"
            system "clear"
            show_options

        when "Nights by Frank Ocean"
            system "clear"
            pid = fork{ exec "afplay", "music/nights.mp3" }
            input = $prompt_other.select("Now listening to Nights by Frank Ocean", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end


        when "Si Veo a Tu Mamá by Bad Bunny"
            system "clear"
            pid = fork{ exec "afplay", "music/siveoatumama.mp3" }
            input = $prompt_other.select("Now listening to Si Veo a Tu Mamá by Bad Bunny", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end


        when "White Rails by J.R. Leaonard"
            system "clear"
            pid = fork{ exec "afplay", "music/whiterails.mp3" }
            input = $prompt_other.select("Now listening to White Rails by J.R. Leaonard", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Issues by Julia Michaels"
            system "clear"
            pid = fork{ exec "afplay", "music/issues.mp3" }
            input = $prompt_other.select("Now listening to Issues by Julia Michaels", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Wont Stop by Lonely God"
            system "clear"
            pid = fork{ exec "afplay", "music/wontstop.mp3" }
            input = $prompt_other.select("Now listening to Wont Stop by Lonely God", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Suavemente by Elvis Crespo"
            system "clear"
            pid = fork{ exec "afplay", "music/suavemente.mp3" }
            input = $prompt_other.select("Now listening to Suavemente by Elvis Crespo", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "XO Tour Life3 by Lil Uzi Vert"
            system "clear"
            pid = fork{ exec "afplay", "music/xotourlif3.mp3" }
            input = $prompt_other.select("Now listening to XO Tour Life3 by Lil Uzi Vert", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Nothing But Summer by Dallas Smith"
            system "clear"
            pid = fork{ exec "afplay", "music/nothingbutsummer.mp3" }
            input = $prompt_other.select("Now listening to Nothing But Summer by Dallas Smith", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Party Rock Anthem by LMFAO"
            system "clear"
            pid = fork{ exec "afplay", "music/partyrockanthem.mp3" }
            input = $prompt_other.select("Now listening to Party Rock Anthem by LMFAO", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "The End by Beach Goons"
            system "clear"
            pid = fork{ exec "afplay", "music/theend.mp3" }
            input = $prompt_other.select("Now listening to The End by Beach Goons", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Amanece by Anuel AA"
            system "clear"
            pid = fork{ exec "afplay", "music/amanece.mp3" }
            input = $prompt_other.select("Now listening to Amanece by Anuel AA", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Laugh Now Cry Later by Drake"
            system "clear"
            pid = fork{ exec "afplay", "music/laughnowcrylater.mp3" }
            input = $prompt_other.select("Now listening to Laugh Now Cry Later by Drake", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Toes by Zac Brown Band"
            system "clear"
            pid = fork{ exec "afplay", "music/toes.mp3" }
            input = $prompt_other.select("Now listening to Toes by Zac Brown Band", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "iSpy by Kyle"
            system "clear"
            pid = fork{ exec "afplay", "music/ispy.mp3" }
            input = $prompt_other.select("Now listening to iSpy by Kyle", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Glitter by Benee"
            system "clear"
            pid = fork{ exec "afplay", "music/glitter.mp3" }
            input = $prompt_other.select("Now listening to Glitter by Benee", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Háblame De Ti by Herencia de Patrones"
            system "clear"
            fork{ exec "afplay", "music/hablamedeti.mp3" }
            input = $prompt_other.select("Now listening to Háblame De Ti by Herencia de Patrones", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Empty by Juice WRLD"
            system "clear"
            fork{ exec "afplay", "music/empty.mp3" }
            input = $prompt_other.select("Now listening to Empty by Juice WRLD", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "New Flesh by Current Joys"
            system "clear"
            fork{ exec "afplay", "music/newflesh.mp3" }
            input = $prompt_other.select("Now listening to New Flesh by Current Joys", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "What Hurts The Most by Rascal Flatts"
            system "clear"
            fork{ exec "afplay", "music/whathurtsthemost.mp3" }
            input = $prompt_other.select("Now listening to What Hurts The Most by Rascal Flatts", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Feeling Whitney by Post Malone"
            system "clear"
            fork{ exec "afplay", "music/feelingwhitney.mp3" }
            input = $prompt_other.select("Now listening to Feeling Whitney by Post Malone", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Gasolina by Daddy Yankee"
            system "clear"
            fork{ exec "afplay", "music/gasolina.mp3" }
            input = $prompt_other.select("Now listening to Gasolina by Daddy Yankee", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Freestyle by Lil Baby"
            system "clear"
            fork{ exec "afplay", "music/freestyle.mp3" }
            input = $prompt_other.select("Now listening to Freestyle by Lil Baby", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Old Town Road by Lil Nas X"
            system "clear"
            fork{ exec "afplay", "music/oldtownroad.mp3" }
            input = $prompt_other.select("Now listening to Old Town Road by Lil Nas X", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Teenagers by My Chemical Romance"
            system "clear"
            fork{ exec "afplay", "music/teenagers.mp3" }
            input = $prompt_other.select("Now listening to Teenagers by My Chemical Romance", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Heathers by Surf Curse"
            system "clear"
            fork{ exec "afplay", "music/heathers.mp3" }
            input = $prompt_other.select("Now listening to Heathers by Surf Curse", %w(Go_Back))
            case input
            when "Go_Back"
                system "killall afplay"
                system "clear"
                song_shuffle
            end

        when "Main_Menu"
            show_options
        end
    end
    





    def self.list_of_songs
        song_names =  User.current_user.songs.map do |song|
            "#{song.name} by #{song.artist}"
        end
        user_input = $prompt_other2.select("Play a song!", %w(Add_Song Delete_Song), song_names, %w(Main_Menu))
        system "clear"
        
        case user_input
        when "Add_Song"
        UserSong.add_song

        when "Delete_Song"
        UserSong.delete_song

        when "Main_Menu"
        show_options
        
        when "Nights by Frank Ocean"
        fork{ exec "afplay", "music/nights.mp3" }
        input = $prompt_other.select("Now listening to Nights by Frank Ocean", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Si Veo a Tu Mamá by Bad Bunny"
        fork{ exec "afplay", "music/siveoatumama.mp3" }
        input = $prompt_other.select("Now listening to Si Veo a Tu Mamá by Bad Bunny", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "White Rails by J.R. Leaonard"
        fork{ exec "afplay", "music/whiterails.mp3" }
        input = $prompt_other.select("Now listening to White Rails by J.R. Leaonard", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Issues by Julia Michaels"
        pid = fork{ exec "afplay", "music/issues.mp3" }
        input = $prompt_other.select("Now listening to Issues by Julia Michaels", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end
        
        when "Wont Stop by Lonely God"
        fork{ exec "afplay", "music/wontstop.mp3" }
        input = $prompt_other.select("Now listening to Wont Stop by Lonely God", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Suavemente by Elvis Crespo"
        fork{ exec "afplay", "music/suavemente.mp3" }
        input = $prompt_other.select("Now listening to Suavemente by Elvis Crespo", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "XO Tour Life3 by Lil Uzi Vert"
        fork{ exec "afplay", "music/xotourlif3.mp3" }
        input = $prompt_other.select("Now listening to XO Tour Life3 by Lil Uzi Vert", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Nothing But Summer by Dallas Smith"
        fork{ exec "afplay", "music/nothingbutsummer.mp3" }
        input = $prompt_other.select("Now listening to Nothing But Summer by Dallas Smith", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Party Rock Anthem by LMFAO"
        fork{ exec "afplay", "music/partyrockanthem.mp3" }
        input = $prompt_other.select("Now listening to Party Rock Anthem by LMFAO", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "The End by Beach Goons"
        fork{ exec "afplay", "music/theend.mp3" }
        input = $prompt_other.select("Now listening to The End by Beach Goons", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Amanece by Anuel AA"
        fork{ exec "afplay", "music/amanece.mp3" }
        input = $prompt_other.select("Now listening to Amanece by Anuel AA", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Laugh Now Cry Later by Drake"
        fork{ exec "afplay", "music/laughnowcrylater.mp3" }
        input = $prompt_other.select("Now listening to Laugh Now Cry Later by Drake", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Toes by Zac Brown Band"
        fork{ exec "afplay", "music/toes.mp3" }
        input = $prompt_other.select("Now listening to Toes by Zac Brown Band", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "iSpy by Kyle"
        fork{ exec "afplay", "music/ispy.mp3" }
        input = $prompt_other.select("Now listening to iSpy by Kyle", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Glitter by Benee"
        fork{ exec "afplay", "music/glitter.mp3" }
        input = $prompt_other.select("Now listening to Glitter by Benee", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Háblame De Ti by Herencia de Patrones"
        fork{ exec "afplay", "music/hablamedeti.mp3" }
        input = $prompt_other.select("Now listening to Háblame De Ti by Herencia de Patrones", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Empty by Juice WRLD"
        fork{ exec "afplay", "music/empty.mp3" }
        input = $prompt_other.select("Now listening to Empty by Juice WRLD", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "New Flesh by Current Joys"
        fork{ exec "afplay", "music/newflesh.mp3" }
        input = $prompt_other.select("Now listening to New Flesh by Current Joys", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "What Hurts The Most by Rascal Flatts"
        fork{ exec "afplay", "music/whathurtsthemost.mp3" }
        input = $prompt_other.select("Now listening to What Hurts The Most by Rascal Flatts", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Feeling Whitney by Post Malone"
        fork{ exec "afplay", "music/feelingwhitney.mp3" }
        input = $prompt_other.select("Now listening to Feeling Whitney by Post Malone", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Gasolina by Daddy Yankee"
        fork{ exec "afplay", "music/gasolina.mp3" }
        input = $prompt_other.select("Now listening to Gasolina by Daddy Yankee", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Freestyle by Lil Baby"
        fork{ exec "afplay", "music/freestyle.mp3" }
        input = $prompt_other.select("Now listening to Freestyle by Lil Baby", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Old Town Road by Lil Nas X"
        fork{ exec "afplay", "music/oldtownroad.mp3" }
        input = $prompt_other.select("Now listening to Old Town Road by Lil Nas X", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Teenagers by My Chemical Romance"
        fork{ exec "afplay", "music/teenagers.mp3" }
        input = $prompt_other.select("Now listening to Teenagers by My Chemical Romance", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end

        when "Heathers by Surf Curse"
        fork{ exec "afplay", "music/heathers.mp3" }
        input = $prompt_other.select("Now listening to Heathers by Surf Curse", %w(Go_Back))
        case input
        when "Go_Back"
            Song.go_back
        end
        end
    end


end