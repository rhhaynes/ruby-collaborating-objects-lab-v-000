class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(@path).reject{|f| f[/^\W/]}
  end
  
  def import
    self.files.map{|f| Song.new_by_filename(f)}
  end
  
end