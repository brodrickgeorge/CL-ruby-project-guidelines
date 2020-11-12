class UserSong < ActiveRecord::Base
    belongs_to :user
    belongs_to :song

    def self.random
      puts  "random"
    end
end

    