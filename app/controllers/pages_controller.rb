class PagesController < ApplicationController

  def most_popular_post
    @title = "so engaging, much fantastic".upcase
  end

  def post
    @title = params[:post_name]
  end

end
