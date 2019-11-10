# class Song 
#   attr_accessor :artist, :name
#   @@all = []
  
#   def initialize(name)
#     @name = name 
#     @@all.push(self)
  
#   end 
  
#   def self.all
#     @@all  
#   end
  
#   def artist=(artist)
#     @artist = artist 
#   end 
  
#   def artist 
#     @artist
#   end
  
#   def artist_name 
#     if self.artist
#       self.artist.name
#     else 
#       nil 
#     end 
#   end 
# end

class Song 
  attr_accessor :artist, :name 
  @@all = []
  
  def initialize(name)
  @name = name 
  @@all.push(self)
  end 

  def self.all
    @@all
  end 
  
  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end 
  end 
end 