class HomesController < ApplicationController
  
  def top
  end

  def index
  end

  def show
  end

  def new
    @list =Books.index
  end
  
  
  def create
    # １. データを新規登録するためのインスタンス作成
    list =Books.index(list_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    list.save
    # ３. トップ画面へリダイレクト
    redirect_to books_path
  end
  
  def edit
  end
  
    private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end


  end
