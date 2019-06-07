Rails.application.routes.draw do
  get '/view' => 'adsapi#view'
  get '/view' => 'adsapi#click'



  resources :ads
  #resources :users

  #namespace :api do
    #namespace :v1 do
      #resources :ads
    #end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'ads#index'
  #root 'users#index'




  #get 'users/index'
  #get 'users/new'
  #get 'users/edit'
  #get 'users/show'

  #get 'ads/index'
  #get 'ads/new'
  #get 'ads/edit'
  #get 'ads/show'

  #get 'users/index'
  #get 'users/new'
  #get 'users/edit'
  #get 'users/show'

end
