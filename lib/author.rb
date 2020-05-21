class Author
  attr_accessor :name, :posts
  @@all = []
  @post_count = 0
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
 
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end
 
 def self.post_count
    Post.all.count 
  end

end