class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :destroy, :update]
  def index
    @posts = Post.all
  end

  def show
    @post.update_visit
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @post = Post.new
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :photo, :category_id)
  end

end
