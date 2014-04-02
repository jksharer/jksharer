class MainPagesController < ApplicationController
  before_action :check_if_logined, only: [:settings]
  
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
