class MainPagesController < ApplicationController
  before_action :check_if_logined, only: [:settings]
  
  def home
      @blogs = Blog.order('created_at DESC').page(params[:page]).per_page(5)
  end

  def about
  end

  def contact
  end
  
  def settings
  end

  def category
    # handle_type([:resource_type, :blog_type])
    rtype = params[:resource_type]
    btype = params[:blog_type]
    if rtype.nil? && btype.nil?
      render 'home'
    elsif !rtype.nil?
      @blogs = Blog.where(resource_type_id: rtype).
        order('created_at DESC').page(params[:page]).per_page(5)
    elsif !btype.nil?
      @blogs = Blog.where(blog_type_id: btype).
        order('created_at DESC').page(params[:page]).per_page(5)
    end
    render 'home'
  end

  private
    def handle_type(types)
      types = types.reject { |t| params[t].nil? }  #从数组中剔除为空的项
      condition = ""
      types.each do |t|
        condition = "#{t.to_s}_id: #{params[t]}, #{condition}"
      end
      condition = condition.slice(0, condition.length - 2)
      @blogs = Blog.where(condition).
          order('created_at DESC').page(params[:page]).per_page(5)   
    end
end
