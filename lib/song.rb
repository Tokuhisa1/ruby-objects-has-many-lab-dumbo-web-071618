class Song
  attr_accessor :artist, :name
  @@all = []

  def initialize name
    @name = name
    @@all << self
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  # The test for this returns a false positive while code is commented
  def self.all
    @@all
  end
end
