Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index" # トップページをHomeコントローラーのindexアクションに設定
  resources :users, only: [:edit, :update]
end
