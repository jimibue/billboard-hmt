# rails g model artist name
# rails g model song name artist:belongs_to
# rails g model billboard name
# rails g model ranking rank:integer song:belongs_to billboard:belongs_to
song_count = 30
billboards = ["top 5", "Best Electro", "Country Fried", "Mormom k-pop hipster", "Top yoyo list"]

billboards.each do |b|
  Billboard.create(name: b)
end

song_count.times do |i|
  artist = Artist.create(name: Faker::Hipster.word)
  1.times do
    song = artist.songs.create(name: Faker::Hipster.sentence(word_count: 3))
    Ranking.create(rank: (i % (song_count / billboards.size)) + 1, song_id: song.id, billboard_id: (i % billboards.size) + 1)
  end
end
