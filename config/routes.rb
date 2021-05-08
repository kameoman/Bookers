Rails.application.routes.draw do

  # get 'home/index'
  # get '/' => 'homes#top'
  # get 'homes/index'
  # get 'homes/show'
  # get 'homes/edit'
  # # GETは、aタグで画面遷移する場合に使う。
  
  # post '/homes/index' => 'homes#create'
  # # コントローラにフォームデータを送信するときはPOSTを使います。POSTは、formタグ等でデータ送信する場合に使う。
  
  # get 'books' => 'books#index'
  # get '/books/index' => 'books#index'
  # # ルーティングを追加する↓
  # get 'books/:id' => 'books#show', as: 'book'
  # # booksと検索すると、homesにあるindexファイルを参照する
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # patch 'books/:id' => 'books#update', as: 'update_book'
  # delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  
  resources :books
  
  root :to => 'homes#top'
  
  
  # ルート(/)へのルーティング設定

  # 上記の書き方 rails2章にある ルーティングを記述する参照

end
