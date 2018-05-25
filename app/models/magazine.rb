class Magazine
  attr_accessor :name, :category
  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
     # given a string of magazine name, returns the first magazine that matches
     # iterate through all of the instances of magazine
     # return the first magazine that matches
     self.all.select do |magazine|
       magazine.name.first
     end
  end

  def article_titles
     # returns a list of the titles of all articles written for that magazine
     # iterate through articles
     # find articles written for that magazine
     Article.all.select do |article|
       article.magazine == self
     end
   end
 end
