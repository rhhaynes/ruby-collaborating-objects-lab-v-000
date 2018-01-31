class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.find_or_create_by_name(artist_name)
    art = @@all.detect{|i| i.name == artist_name}
    art ? art : artist = new(artist_name)
  end
  
  def self.save
    @@all << self
  end
  
  def add_song(song)
    @songs << song
  end
  
  def print_songs
    @songs
  end
  
end