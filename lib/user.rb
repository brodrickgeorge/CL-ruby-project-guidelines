class User < ActiveRecord::Base
    has_many :user_songs
    has_many :songs, through: :user_songs

    def self.find_songs_by_genre(genre)
        Song.all.select do |song|
            song.genre == genre
        end
    end

end