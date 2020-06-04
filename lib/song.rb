class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
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
    @@genres.each do |genre|
      if @@genre_count.include? genre
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end
end
