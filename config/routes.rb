Rails.application.routes.draw do
  devise_for :users
  #get 'user/index'
  root :to => "home#index"

  resources :article, only: [:index, :show, :create, :destroy, :update, :new]

end
