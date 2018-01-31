 class Song
  attr_accessor :name, :artist, :genre
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    artist_name, song_name, genre = filename.split(" - ")
    song = self.new(song_name)
    song.artist = artist_name(artist_name)
    song
  end
  
  def artist_name(artist_name)
    Artist.find_or_create_by_name(artist_name)
  end
  
end