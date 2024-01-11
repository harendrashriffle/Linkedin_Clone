class PostController < ApplicationController

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.post.new(set_post_params)
    if @post.save
      redirect_to @user, notice: 'User post successfully created.'
    else
      render :new
    end
  end

  def show
    current_user.posts
  end

  def edit
    @post = current_user.post(params[:id])
  end

  def update
    if current_user.post.update(user_params)
      redirect_to @user, notice: 'User post successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if current_user.post(params[:id]).destroy
      redirect_to , notice: "Your post deleted succesfully"
    else
      redirect_to , notice: "Your post doesn't deleted"
    end
  end

  private
    def set_post_params
      params.require(:post).permit(:content, images: [])
    end
end
