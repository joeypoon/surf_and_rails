class PagesController < ApplicationController
  include PagesHelper

  # before_actions do
  #   @posts = ["ANOTHER COOL POST", "POST TITLE", "HERE'S ANOTHER LONGER POST TITLE", "OH COOL A POST"]
  # end

  def most_popular_post
    @title = "so engaging, much fantastic".upcase
    @content = content[@title.parameterize]
  end

  def post
    @title = params[:post_name].upcase
    @content = content[@title.parameterize]
  end

end
