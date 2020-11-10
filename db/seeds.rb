User.destroy_all
Song.destroy_all
UserSong.destroy_all



user1 = User.create(name: "Derick")
user2 = User.create(name: "Max")
user3 = User.create(name: "Brodrick")
user4 = User.create(name: "Alexa")

song1 = Song.create(name: "Swav", artist: "Elvis", genre: "Latin", emotion: "Excited")
song2 = Song.create(name: "Hablame De Ti", artist: "Heren", genre: "Latin", emotion: "Angry")
song3 = Song.create(name: "Glitter", artist: "Benee", genre: "Indie", emotion: "Happy")
song4 = Song.create(name: "Demons", artist: "Joji", genre: "Pop", emotion: "Sad")

us1 = UserSong.create(user_id: user1.id, song_id: song1.id)

