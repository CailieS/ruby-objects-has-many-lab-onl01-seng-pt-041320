class Author
  attr_accessor :name, :posts
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def posts 
    Post.all.select do |song|
    song.author == self 
   end
  end
 
  def add_post(post)
    post.author = self 
  end
 
  def add_post_by_title(post_name)
    writer= Post.new(post_name)
    posts
  end
 
 def self.post_count
    Post.all.count 
  end

end