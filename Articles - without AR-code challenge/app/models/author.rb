class Author
  attr_reader :name

  def initialize(name)
    @name = name

    @articles = []
  end

  #Adds a new article to the author's collection
  def add_article(article)
    @articles << article
  end

  # Returns an array of Article instances the author has written
  def articles
    @articles
  end

  # Returns a unique array of Magazine instances for which the author has contributed to
  def magazines
    @articles.map(&:magazine).uniq
  end

  #creates a new Article instance and associates it with that author and that magazine.
  def add_article(magazine, title)
    article = Article.new(self, magazine, title)
    @articles << article
    article
  end

  #Returns a unique array of strings with the categories of the magazines the author has contributed to
  def topic_areas
    @articles.map { |article| article.magazine.category }.uniq
  end
end
