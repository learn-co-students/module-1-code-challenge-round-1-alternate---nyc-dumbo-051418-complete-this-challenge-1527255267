class Author
  attr_accessor :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
     # should return a list of magazines for which the author has written
     # iterate through get_articles(helper method)
     # find which magazines the author wrote through them
     self.get_articles.map do |mag|
       mag.magazine
     end
  end

  def add_article(title, magazine)
     # given a title and a magazine, creates a new article and associates it with that author and that magazine.
     # iterate through and after make a new instance of Article
     Article.new(self, title, magazine)
    end
  end

  # def find_specialties
  #     # returns the categories of the magazines for which the author has written
  #     iterate thru magazines
  #     find the ones the author wrote
  #     return only the category
  # end
