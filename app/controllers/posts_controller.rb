class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :destroy]

  def index
    @posts = Post.first 30
  end

  def new
  end

  def edit
  end

  def update
    @post.update post_params
    redirect_to root_path
  end
  def show
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def find_post
    @post = Post.find params[:id]
  end

  def post_params
    params.require(:post).permit :content
  end
end
