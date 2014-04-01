class MainPagesController < ApplicationController
  def home
    @blogs = Blog.all
  end

  def about
  end

  def contact
  end
  
  def settings
  end
end
