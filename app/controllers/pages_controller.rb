require 'posts'

class PagesController < ApplicationController
  include PagesHelper

  before_action do
    @posts = [
      Post.new("SO FANTASTIC, SUCH ENGAGING", "bg-header.jpg", "This is content for SO FANTASTIC, SUCH ENGAGING. BLAH BLAH BLAH."),
      Post.new("ANOTHER COOL POST", "another-cool-post.jpg", "This is content for ANOTHER COOL POST. BLAH BLAH BLAH."),
      Post.new("POST TITLE", "post-title.jpg", "This is content for POST TITLE. BLAH BLAH BLAH."),
      Post.new("HERE'S ANOTHER LONGER POST TITLE", "here-s-another-longer-post-title.jpg", "This is content for HERE'S ANOTHER LONGER POST TITLE. BLAH BLAH BLAH."),
      Post.new("OH COOL A POST", "oh-cool-a-post.jpg", "This is content for OH COOL A POST. BLAH BLAH BLAH.")
      ]
  end

  def newest_post
    @title = @posts.first.title
    @content = @posts.first.content
  end

  def post
    current_post = @posts.find do |post|
      post if post.title.parameterize == params[:post_title].parameterize
    end
    @title = current_post.title
    @content = current_post.content
  end

end
