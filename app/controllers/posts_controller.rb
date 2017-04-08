class PostsController < ApplicationController

  def index

  end

  def new
    @post = Post.new
  end

  def create
    post_params = params.require(:post).permit(:title, :tag, :contents)
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully uploaded'
    else
      render :new
    end

  end

  def show
    @post = Post.find(params[:id])
  end

end
