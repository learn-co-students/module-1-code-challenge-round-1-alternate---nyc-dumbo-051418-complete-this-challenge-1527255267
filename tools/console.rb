require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

matt = Author.new("Matt")
tim = Author.new("Tim")
natalie = Author.new("Natalie")
prince = Author.new("Prince")

vogue = Magazine.new("Vogue", "Fashion")
rollingstones = Magazine.new("Rolling Stones", "Music")
forbes = Magazine.new("Forbes", "Mula")
newyork = Magazine.new("New York Magazine", "Success")

article = Article.new(matt, forbes)
article2 = Article.new(tim, rollingstones)
article3 = Article.new(natalie, vogue)
article4 = Article.new(prince, newyork)
article5 = Article.new(matt, newyork)
article6 = Article.new(matt, rollingstones)

Pry.start
