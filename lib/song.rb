require 'pry' 

class Song 
  
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre) 
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end
  
  def self.count
    @@count 
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    gen_count = {}
    
    @@genres.each do |gen, num|
      if gen_count.include?(gen)
        num + 1 
      else
      gen_count = {gen => num}
    end
  end
  
#  def @@artist_count(artist, number)
#    artist_counts = {}
#    @@genre.each do |art, num| 
#      art ||= {}
#      artist_counts[art] = num
#    end
#    artist_counts
# end
  
  
end