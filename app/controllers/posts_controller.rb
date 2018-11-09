class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  
  def create
    @post = Post.new(title: params[:title], zairyo: params[:zairyo], step: params[:step])
    @post.save
    redirect_to("/posts/index")
  end
  
  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.zairyo = params[:zairyo]
    @post.step = params[:step]
    @post.save
    redirect_to("/posts/index")
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end
  
end
