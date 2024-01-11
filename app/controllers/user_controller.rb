class UserController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(set_user_params)
    if @user.save
      # UserMailer.welcome_email(@user).deliver_now
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def show
    current_user
  end

  def edit
    @user = current_user
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if current_user.destroy
      redirect_to new_user_registration_path, notice: "Your Account deleted succesfully"
    else
      redirect_to edit_user_registration_path, notice: "Your Account doesn't deleted"
    end
  end

  private
    def set_user_params
      params.require(:user).permit(:name,:email,:mobile,:encrypted_password, :bio, :skill, :address, :image)
    end

end
