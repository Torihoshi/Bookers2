class BooksController < ApplicationController

  #データの新規作成フォームを表示する
  def new
    @book = Book.new
  end

  #データを追加（保存）する
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  #データの一覧を表示する
  def index
    @books = Book.all
  end

  #データの内容（詳細）を表示する
  def show

  end

  #データを更新するためのフォームを表示する
  def edit

  end

  #データを削除する
  def destroy

  end

private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
