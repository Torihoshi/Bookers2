class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # @user_images = @user.user_images

  end

  def edit

  end

end
