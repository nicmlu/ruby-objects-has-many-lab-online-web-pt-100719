# songclass Artist 
#   attr_accessor :name 
#   @@all_artists = []
  
#   def initialize(artist_name)
#     @name = artist_name
#     @@all_artists.push(self)
#   end
  
#   def songs 
#     # artist has many songs, should return an array 
#     Song.all.select {|song| song.artist == self}
#   end 
  
#   def self.all_artists
#     @@all_artists
#   end
  
#   def add_song(song)
#     song.artist = self 
#   end 
  
#   def add_song_by_name(song_name)
#     song = Song.new(song_name)
#     add_song(song) 
#   end
  
#   def self.song_count
#     all_songs = self.all_artists.collect {|artist| artist.songs} 
#     all_songs.flatten.count
#   end
  
# end

class Artist 
  attr_accessor :name

  def initialize(name)
    @name = name 
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}  
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def add_song_by_name(song)
    song_obj = Song.new(song)
    add_song(song_obj)
  end
  
  def self.song_count 
    Song.all.count
  end 

end 