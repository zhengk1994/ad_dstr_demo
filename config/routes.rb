Rails.application.routes.draw do
  get '/view' => 'adsapi#view'
  get '/click' => 'adsapi#click'



  resources :ads
  #resources :users
  root 'ads#index'


  get 'ads/index'
  get 'ads/new'
  get 'ads/edit'
  get 'ads/show'



end
