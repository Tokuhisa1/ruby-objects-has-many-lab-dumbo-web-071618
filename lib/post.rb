class Post
  attr_accessor :author, :title
  @@all = []

  def initialize title
    @title = title
    @@all << self
  end

  def author_name
    self.author ? self.author.name : nil
  end

  # The test for this returns a false positive while code is commented
  def self.all
    @@all
  end
end
