class HomesController < ApplicationController

  def top
  end

  def index
    @books =Book.all
  end

  def show
  end

  def new
    @books = Book.new
  end


  def create
    # １. データを新規登録するためのインスタンス作成
    book = Book.index(book_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    book.save
    # ３. トップ画面へリダイレクト
    redirect_to books_path(books)
  end

  def edit
  end

    private
  # ストロングパラメータ

  def book_params
    params.require(:books).permit(:title, :body)
  end


end
