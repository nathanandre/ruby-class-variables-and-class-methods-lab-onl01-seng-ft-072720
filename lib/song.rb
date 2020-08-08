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
  end
  genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] #exists
        genre_count[genre] += 1
      else #none
        genre_count[genre] = 1
      end
    end
    genre_count
end