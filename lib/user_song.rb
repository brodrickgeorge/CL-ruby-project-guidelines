class UserSong < ActiveRecord::Base
    belongs_to :user
    belongs_to :song

    def self.delete_song
        prompt = TTY::Prompt.new
        puts "Type a song you want to delete!"
        song_input = gets.chomp
        found_song = Song.find_by(name: song_input)
        UserSong.destroy_by(user_id: User.current_user.id, song_id: found_song.id)
        system "clear"
        puts "Deleted song #{song_input} from favorites!"
        input = prompt.select("Must log out and log back in to see updated favorites list!", %w(Go_Back! Logout!))

        case input
        when "Go_Back!"
            system "clear"
            Song.list_of_songs
        when "Logout!"
            system "clear"
            Banner.emoji
            sleep(2)
        end
    end

    def self.add_song
        prompt = TTY::Prompt.new
        puts "Type a song you want to add!"
        song_input = gets.chomp
        new_song = Song.find_by(name: song_input)
        UserSong.create(user_id: User.current_user.id, song_id: new_song.id)
        system "clear"
        puts "Added song #{song_input} to favorites!"
        input = prompt.select("Must log out and log back in to see updated favorites list!", %w(Go_Back! Logout!))

        case input
        when "Go_Back!"
            system "clear"
            Song.list_of_songs
        when "Logout!"
            system "clear"
            Banner.emoji
            sleep(2)
        end
    end
end

    