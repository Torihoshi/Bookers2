class BooksController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update, :destroy]


  #データを追加（保存）する
  def create
       @book = Book.new(book_params)
       @book.user_id = current_user.id
       @books = Book.all
       @book_new = Book.new
    if @book.save
       redirect_to book_path(@book.id)
       flash[:notice] = "You have created book successfully."
    else
      flash[:notice] = "error! 保存に失敗"
      # byebug
      render :index
    end
  end

  #データの一覧を表示する
  def index
      @book = Book.new
      @book_new = Book.new
      @books = Book.all
  end

  #データの内容（詳細）を表示する
  def show
      @book = Book.find(params[:id])
      @book_new = Book.new
  end

  #データを更新するためのフォームを表示する
  def edit
      @book = Book.find(params[:id])
  end

  #データを更新する
  def update
       @book = Book.find(params[:id])

    if @book.update(book_params)
       flash[:notice] = "You have updated book successfully."
       redirect_to book_path(@book)
    else
       render :edit
    end
  end

  #データを削除する
  def destroy
      @book = Book.find(params[:id])
      @book.destroy
      flash[:notice] = "Book was successfully destroyed."
      redirect_to books_path
  end


  private
  #ストロングパラメータ
  def book_params
      params.require(:book).permit(:title, :body)
  end

  def is_matching_login_user
    book = Book.find(params[:id])
    unless book.user_id == current_user.id
      redirect_to books_path
    end
  end

end
