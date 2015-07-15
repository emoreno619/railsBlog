class TagsController < ApplicationController
  
  def index
  	@tags = Tag.all
  end

  def new
  	@tag = Tag.new
  	@posts = Post.all
  end

  def edit
  end

  def show
  end
end
