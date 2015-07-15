class TagsController < ApplicationController
  
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

  def show
  end

  private
	  def tag_params
		params.require(:tag).permit(:name, :post_ids => [])	  	
	  end
end
