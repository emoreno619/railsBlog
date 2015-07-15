class TagsController < ApplicationController
  
  before_action :set_tag, only: [:show, :edit, :update, :destroy]
  before_action :set_posts, only: [:show, :edit, :update, :destroy]

  def index
  	@tags = Tag.all
  end

  def new
  	@tag = Tag.new
  	@posts = Post.all
  end

  def create
  	@tag = Tag.create(tag_params)
  	if @tag.save
  		redirect_to tags_path
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	@tag.update_attributes(tag_params)
  	if @tag.save
  		redirect_to tags_path
  	else
  		render :edit
  	end
  end

  def show
  end

  private
	  def tag_params
		params.require(:tag).permit(:name, :post_ids => [])	  	
	  end

	  def set_tag
	  	@tag = Tag.find_by(id: params[:id])
	  end

	  def set_posts
	  	@posts = Post.all
	  end
end
