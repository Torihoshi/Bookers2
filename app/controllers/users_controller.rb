class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user = User.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path
    else
            flash[:notice] = "失敗してる"
            redirect_to user_path
    end
  end





  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end


end
