class BlogTypesController < ApplicationController
  before_action :set_blog_type, only: [:show, :edit, :update, :destroy]
  before_action :check_if_logined
  
  # GET /blog_types
  # GET /blog_types.json
  def index
    @blog_types = BlogType.all
  end

  # GET /blog_types/1
  # GET /blog_types/1.json
  def show
  end

  # GET /blog_types/new
  def new
    @blog_type = BlogType.new
  end

  # GET /blog_types/1/edit
  def edit
  end

  # POST /blog_types
  # POST /blog_types.json
  def create
    @blog_type = BlogType.new(blog_type_params)

    respond_to do |format|
      if @blog_type.save
        format.html { redirect_to blog_types_path, 
          notice: 'Blog type was successfully created.' }
        format.json { render action: 'show', 
          status: :created, location: @blog_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @blog_type.errors, 
          status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_types/1
  # PATCH/PUT /blog_types/1.json
  def update
    respond_to do |format|
      if @blog_type.update(blog_type_params)
        format.html { redirect_to @blog_type, notice: 'Blog type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blog_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_types/1
  # DELETE /blog_types/1.json
  def destroy
    @blog_type.destroy
    respond_to do |format|
      format.html { redirect_to blog_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_type
      @blog_type = BlogType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_type_params
      params.require(:blog_type).permit(:name)
    end
end
