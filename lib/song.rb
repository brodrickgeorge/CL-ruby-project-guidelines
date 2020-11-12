class Song < ActiveRecord::Base
    has_many :user_songs
    has_many :users, through: :user_songs

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
        input = prompt.select("Please choose an emotion!", %w(Angry Sad Excited Chill Happy))
        system "clear"
        songs = Song.find_songs_by_emotion(input)
        songs.each do |song|
            puts "Song: #{song.name}, Artist: #{song.artist}"
        end
        sleep(5,)
        system "clear"
        show_emotion
      end
      

      
     


end 