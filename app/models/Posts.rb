class Post
  attr_reader :title, :image, :content

  include PagesHelper
  include ApplicationHelper

  def initialize title, image, content
    @title = title
    @image = image
    @content = content
  end

end
