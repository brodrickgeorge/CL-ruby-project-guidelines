class UserSong < ActiveRecord::Base
    belongs_to :user
    belongs_to :song

def self.delete_song
    song_input = gets.chomp
    found_song = Song.find_by(name: song_input)
    UserSong.destroy_by(user_id: current_user.id, song_id: found_song.id)
    list_of_songs(current_user)
end

def self.add_song
    puts "Type a song you want to add!"
    song_input = gets.chomp
    new_song = Song.find_by(name: song_input)
    UserSong.create(user_id: current_user.id, song_id: new_song.id)
    list_of_songs(current_user)
end


end

    