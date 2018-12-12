require 'pry'

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
    Song.all.select do |song| 
      song.genre = self 
    end 
  end 
  
  def artists 
    genre_array = nil 
    genre_array = Song.all.map{|song| song.genre = self}
    binding.pry
    genre_array.collect {|song| song.artist}
  end
    
end