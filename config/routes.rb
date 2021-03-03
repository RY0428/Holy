Rails.application.routes.draw do
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'main/index' => 'main#index'
  get 'main/link' => 'main#link'

  get 'hotels/index' => 'hotels#index'
  get 'hotels/link' => 'hotels#link'

  get 'restaurants/index' => 'restaurants#index'
  get 'restaurants/link' => 'restaurants#link'

  get 'spots/index' => 'spots#index'
  get 'spots/link' => 'spots#link'

 #投稿
 get 'tweets' => 'tweets#index'

 #投稿ページ表示
 get 'tweets/new' => 'tweets#new'
 post 'tweets' => 'tweets#create'

 #詳細
 get 'tweets/:id' => 'tweets#show',as: 'tweet'

 #編集とy消去
 patch 'tweets/:id' => 'tweets#update'

 delete 'tweets/:id' => 'tweets#destroy'
 
 get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'


  root 'main#index'


  #カテゴリーわけ
  get 'tweets/hotels' => 'tweets#hotels'
  get 'tweets/restaurants' => 'tweets#restaurants'
  get 'tweets/spots' => 'tweets#spots'

  
end
