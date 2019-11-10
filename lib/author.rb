# class Author 
#   attr_accessor :name
#   @@all_authors = []
  
#   def initialize(author_name)
#     @name = author_name
#     @@all_authors.push(self)
#   end
  
#   def self.all_authors
#     @@all_authors
#   end
  
#   def posts
#     Post.all.select {|post| post.author == self}
#   end 
  
#   def add_post(post)
#     post.author = self   
#   end

#   def add_post_by_title(post_title) 
#     post = Post.new(post_title)
#     add_post(post)
#   end 
  
#   def self.post_count
#   #returns the total number of posts associated to the existing authors 
#     all_posts = self.all_authors.collect {|author| author.posts} 
#     all_posts.flatten.count
#   end
# end

class Author 
  attr_accessor :name 

  def initialize(name)
    @name = name 
  end 
  
  def posts 
    Post.all.select {|post| post.author == self}
  end 
  
  def add_post(post)
    post.author = self 
  end
  
  def add_post_by_title(title)
    post_obj = Post.new(title)
    add_post(post_obj)
  end 
  
  def self.post_count
    Post.all.count
  end 

end 