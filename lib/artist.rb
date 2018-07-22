class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize name
    @name = name
    @songs = []
  end

  def add_song song
    @@all << song
    @songs << song
    song.artist = self
  end

  def add_song_by_name name
    song = Song.new name
    @@all << song
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@all.count
  end
end
