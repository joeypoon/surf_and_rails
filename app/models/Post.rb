class Post
  attr_reader :title, :image, :content

  def initialize title, image, content
    @title = title
    @image = image
    @content = content
  end

end
