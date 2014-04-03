class MainPagesController < ApplicationController
  before_action :check_if_logined, only: [:settings]
  
  def home
    # @blogs = Blog.all
    @blogs = Blog.order('created_at DESC').page(params[:page]).per_page(5)
  end

  def about
  end

  def contact
  end
  
  def settings
  end
end
