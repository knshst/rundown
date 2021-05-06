class PostsController < ApplicationController
  before_action :move_to_login

  def index
    @post = Post.all.order("created_at DESC").includes(:user)
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      redirect_to root_path
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to controller: :users, action: :show, id: current_user
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user).order(created_at: :desc)
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, :content, :start, :radio).merge(user_id: current_user.id)
  end

  def move_to_login
    redirect_to new_user_session_path unless user_signed_in?
  end
end
