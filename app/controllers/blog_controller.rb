class BlogController < ApplicationController
  before_filter { |page| page.set_selected_nav_tab :blog }
  def index
    @posts = Post.all
  end

end