class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@genres = []
  @@count = 0
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
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
    genre_count = {}
    @@genres.each do |genre|
end