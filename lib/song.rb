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
    Hash[*.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
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