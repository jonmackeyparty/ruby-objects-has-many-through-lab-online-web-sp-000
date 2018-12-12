class Genre 
  attr_accessor :name 
  @@all = [ ]
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def songs
    Song.all.select{|song| song.genre = self} 
  end 
  
  def artists 
    artist_array = Song.all.select{|song| song.genre = self} 
    artist_array.collect{|song| song.artist}
  end
    
end