class Magazine
  
  attr_accessor :name, :category
  # returns an array of instance of all magazines
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
    @contributors = []
  end 

  #Returns an array of Author instances who have written for this magazine
  def contributors
    @contributors
  end

  #Given a string of magazine's name, this method returns the first magazine object that matches
  def self.find_by_name(name)
    Magazine.all.find { |magazine| magazine.name == name }
  end

  #An internal class method of finding all magazines before now finding them individually by name
  def self.all
    @magazines ||= []
  end

  #Returns an array strings of the titles of all articles written for that magazine
  def article_titles
    @articles.map(&:title)
  end

  #Returns an array of authors who have written more than 2 articles for the magazine
  def contributing_authors
    authors = @articles.group_by(&:author).select { |author, articles| articles.size > 2 }
    authors.keys
  end
end