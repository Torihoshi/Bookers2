class UsersController < ApplicationController
  # before_action :is_matching_login_user, only: [:edit, :update]

  #データの新規作成フォームを表示する
  # def new
  #   @book = Book.new
  # end

  #データの一覧を表示する
  def index
    @users = User.all #ユーザー情報を取得する
    @user = User.all
    # @books = Book.all
    # @book = Book.new #新規投稿用
  end

  #データの内容（詳細）を表示する
  def show
      @user = User.find(params[:id])
      # @books = @user.books
      # @book = Book.new #新規投稿用
  end

  #データを更新するためのフォームを表示する
  def edit
      @user = User.find(params[:id])
  end

  #データを更新する
  def update
       @user = User.find(params[:id])
    if @user.update(user_params)
       flash[:notice] = "You have updated user successfully."
       redirect_to user_path(@user)
    else
       render :edit
    end
  end



  private
  #ストロングパラメータ
  def user_params
      params.require(:user).permit(:name, :profile_image, :introduction)
  end

  # def is_matching_login_user
  #   user = User.find(params[:id])
  #   unless user.id == current_user.id
  #     redirect_to post_images_path
  #   end
  # end

end
