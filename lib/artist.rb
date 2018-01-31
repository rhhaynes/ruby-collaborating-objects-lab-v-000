class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.find_or_create_by_name(artist_name)
    art = @@all.detect{|i| i.name == artist_name}
    art ? art : new(artist_name)
  end
  
  def add_song(song)
    @songs << song
  end
  
  def print_songs
    @songs.each{|i| puts i.name}
  end
  
  def save
    @@all << self
  end
  
end