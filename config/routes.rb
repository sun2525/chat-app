Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index" # トップページをHomeコントローラーのindexアクションに設定
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
