class BooksController < ApplicationController

  def top
  end

  def index
    @books = Book.all

    @book = Book.new

  end

  def show
    @book = Book.find(params[:id])
  end

  def new

  end


  def create
    # １. データを新規登録するためのインスタンス作成
    @book = Book.new(book_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    if@book.save
      flash[:success] = 'Book was successfully updated.'
      redirect_to book_path(@book)
    else
      @books = Book.all
      flash.now[:danger] = 'error'
      render 'index'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end


  def update
    @book = Book.find(params[:id])

    if@book.update(book_params)
    flash[:success] = 'Book was successfully updated.'
    redirect_to book_path(params[:id])
    else
    flash.now[:danger] = 'error'
    render 'edit'
    end

  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:success] = 'Book was successfully destroyed.'
    redirect_to books_path
  end

    private
  # ストロングパラメータ

  def book_params
    params.require(:book).permit(:title, :body)
  end


end
