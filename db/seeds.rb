User.destroy_all
Song.destroy_all
UserSong.destroy_all


user1 = User.create(name: "Derick")
user2 = User.create(name: "Max")
user3 = User.create(name: "Brodrick")
user4 = User.create(name: "Alexa")


song1 = Song.create(name: "Si Veo a Tu Mamá", artist: "Bad Bunny", genre: "Latin", emotion: "Chill")

song2 = Song.create(name: "Nights", artist: "Frank Ocean", genre: "HipHop", emotion: "Chill")

song3 = Song.create(name: "White Rails", artist: "J.R. Leaonard", genre: "Country", emotion: "Chill")

song4 = Song.create(name: "Issues", artist: "Julia Michaels", genre: "Pop", emotion: "Chill")

song5 = Song.create(name: "Wont Stop", artist: "Lonely God", genre: "Indie", emotion: "Chill")


song6 = Song.create(name: "Suavemente", artist: "Elvis Crespo", genre: "Latin", emotion: "Excited")

song7 = Song.create(name: "XO Tour Life3", artist: "Lil Uzi Vert", genre: "HipHop", emotion: "Excited")

song8 = Song.create(name: "Nothing But Summer", artist: "Dallas Smith", genre: "Country", emotion: "Excited")

song9 = Song.create(name: "Party Rock Anthem", artist: "LMFAO", genre: "Pop", emotion: "Excited")

song10 = Song.create(name: "The End", artist: "Beach Goons", genre: "Indie", emotion: "Excited")


song11 = Song.create(name: "Amanece", artist: "Anuel AA", genre: "Latin", emotion: "Happy")

song12 = Song.create(name: "Laugh Now Cry Later", artist: "Drake", genre: "HipHop", emotion: "Happy")

song13 = Song.create(name: "Toes", artist: "Zac Brown Band", genre: "Country", emotion: "Happy")

song14 = Song.create(name: "iSpy", artist: "Kyle", genre: "Pop", emotion: "Happy")

song15 = Song.create(name: "Glitter", artist: "Benee", genre: "Indie", emotion: "Happy")


song16 = Song.create(name: "Háblame De Ti", artist: "Herencia de Patrones", genre: "Latin", emotion: "Sad")

song17 = Song.create(name: "Empty", artist: "Juice WRLD", genre: "HipHop", emotion: "Sad")

song18 = Song.create(name: "What Hurts The Most", artist: "Rascal Flatts", genre: "Country", emotion: "Sad")

song19 = Song.create(name: "Feeling Whitney", artist: "Post Malone", genre: "Pop", emotion: "Sad")

song20 = Song.create(name: "New Flesh", artist: "Current Joys", genre: "Indie", emotion: "Sad")


song21 = Song.create(name: "Gasolina", artist: "Daddy Yankee", genre: "Latin", emotion: "Angry")

song22 = Song.create(name: "Freestyle", artist: "Lil Baby", genre: "HipHop", emotion: "Angry")

song23 = Song.create(name: "Old Town Road", artist: "Lil Nas X", genre: "Country", emotion: "Angry")

song24 = Song.create(name: "Teenagers", artist: "My Chemical Romance", genre: "Pop", emotion: "Angry")

song25 = Song.create(name: "Heathers", artist: "Surf Curse", genre: "Indie", emotion: "Angry")


UserSong.create(user_id: user1.id, song_id: song1.id)
UserSong.create(user_id: user1.id, song_id: song2.id)
UserSong.create(user_id: user1.id, song_id: song3.id)
UserSong.create(user_id: user1.id, song_id: song4.id)
UserSong.create(user_id: user1.id, song_id: song5.id)
UserSong.create(user_id: user1.id, song_id: song6.id)
UserSong.create(user_id: user1.id, song_id: song7.id)
UserSong.create(user_id: user1.id, song_id: song8.id)
UserSong.create(user_id: user1.id, song_id: song9.id)
UserSong.create(user_id: user1.id, song_id: song10.id)
UserSong.create(user_id: user1.id, song_id: song11.id)
UserSong.create(user_id: user1.id, song_id: song12.id)
UserSong.create(user_id: user1.id, song_id: song13.id)
UserSong.create(user_id: user1.id, song_id: song14.id)
UserSong.create(user_id: user1.id, song_id: song15.id)
UserSong.create(user_id: user1.id, song_id: song16.id)
UserSong.create(user_id: user1.id, song_id: song17.id)
UserSong.create(user_id: user1.id, song_id: song18.id)
UserSong.create(user_id: user1.id, song_id: song19.id)


us2 = UserSong.create(user_id: user2.id, song_id: song1.id)
us2 = UserSong.create(user_id: user2.id, song_id: song2.id)
us2 = UserSong.create(user_id: user2.id, song_id: song3.id)
us2 = UserSong.create(user_id: user2.id, song_id: song4.id)
us2 = UserSong.create(user_id: user2.id, song_id: song5.id)
us2 = UserSong.create(user_id: user2.id, song_id: song6.id)
us2 = UserSong.create(user_id: user2.id, song_id: song7.id)
us2 = UserSong.create(user_id: user2.id, song_id: song8.id)
us2 = UserSong.create(user_id: user2.id, song_id: song9.id)
us2 = UserSong.create(user_id: user2.id, song_id: song10.id)
us2 = UserSong.create(user_id: user2.id, song_id: song11.id)
us2 = UserSong.create(user_id: user2.id, song_id: song12.id)
us2 = UserSong.create(user_id: user2.id, song_id: song13.id)
us2 = UserSong.create(user_id: user2.id, song_id: song14.id)
us2 = UserSong.create(user_id: user2.id, song_id: song15.id)
us2 = UserSong.create(user_id: user2.id, song_id: song16.id)
us2 = UserSong.create(user_id: user2.id, song_id: song17.id)
us2 = UserSong.create(user_id: user2.id, song_id: song18.id)
us2 = UserSong.create(user_id: user2.id, song_id: song19.id)
us2 = UserSong.create(user_id: user2.id, song_id: song20.id)
us2 = UserSong.create(user_id: user2.id, song_id: song21.id)
us2 = UserSong.create(user_id: user2.id, song_id: song22.id)
us2 = UserSong.create(user_id: user2.id, song_id: song23.id)
us2 = UserSong.create(user_id: user2.id, song_id: song24.id)
us2 = UserSong.create(user_id: user2.id, song_id: song25.id)


us3 = UserSong.create(user_id: user3.id, song_id: song20.id)
us3 = UserSong.create(user_id: user3.id, song_id: song21.id)
us3 = UserSong.create(user_id: user3.id, song_id: song22.id)
us3 = UserSong.create(user_id: user3.id, song_id: song23.id)
us3 = UserSong.create(user_id: user3.id, song_id: song24.id)
us3 = UserSong.create(user_id: user3.id, song_id: song25.id)