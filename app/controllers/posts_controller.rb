class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_tags, only: [:show, :edit, :update, :destroy]

  def index
	@posts = Post.all
  end

  def new
  	@post = Post.new
  	@tags = Tag.all
  end

  def create
  	@post = Post.create(post_params)
  	if @post.save
  		redirect_to posts_path, notice: 'Post successfully added'
  	else
  		render :new
  	end
  end

def edit
  end

def update
	@post.update_attributes(post_params)
	if @post.save
		redirect_to posts_path, notice: 'Post successfully updated'
	else
		render :edit
	end
end

  def show
  end

  def destroy
  	@post.destroy
  	redirect_to posts_path
  end

  private
  	  def post_params
  	  	params.require(:post).permit(:title, :author, :content, :tag_ids => [])
  	  end
	  def set_post
	  	@post = Post.find_by(id: params[:id])
	  end
	  def set_tags
	  	@tags = Tag.all
	  end
end
