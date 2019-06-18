Rails.application.routes.draw do

  get '/view' => 'ad_api#view'
  get '/click' => 'ad_api#click'

  resources :ads
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'ads#index'
  # root 'users#index'
  #
  #
  #
  #
  get 'users/index'
  get 'users/new'
  get 'users/edit'
  get 'users/show'

  get 'ads/index'
  get 'ads/new'
  get 'ads/edit'
  get 'ads/shouw'



end
