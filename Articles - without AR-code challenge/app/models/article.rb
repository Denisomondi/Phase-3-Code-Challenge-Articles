class Article

  attr_reader :author, :magazine, :title
  # returns an array of instance of all articles
  @@articles = []

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title

    @@articles << self
  end
  #Returns an array of all Article instances
  def self.all
    @@articles
  end

  #Returns the author for the given article
  def author
    @author
  end

  #Returns the magazine for the given article
  def magazine
    @magazine
  end

  

end
