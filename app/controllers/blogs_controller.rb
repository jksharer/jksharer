class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :check_if_logined

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.order('created_at DESC').page(params[:page]).per_page(5)
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    ps = blog_params
    @blog = Blog.new
    @blog.resource_type = ResourceType.find_by(name: ps[:resource_type])
    @blog.blog_type = BlogType.find_by(name: ps[:blog_type])
    @blog.title = ps[:title]
    @blog.content = ps[:content]
    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, 
          notice: 'Blog was successfully created.' }
        format.json { render action: 'show', 
          status: :created, location: @blog }
      else
        format.html { render action: 'new' }
        format.json { render json: @blog.errors, 
          status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    ps = blog_params
    @blog.resource_type = ResourceType.find_by(name: ps[:resource_type])
    @blog.blog_type = BlogType.find_by(name: ps[:blog_type])
    @blog.title = ps[:title]
    @blog.content = ps[:content]
    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:resource_type, :blog_type, :title, :content )
    end
end
