class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
	@posts = Post.all
  end

  def new
  	@post = Post.new
  	@tags = Tag.all
  end

  def edit
  end

  def show
  end

  private
	  def set_post
	  	@post = Post.find_by(id: params[:id])
	  end
end
