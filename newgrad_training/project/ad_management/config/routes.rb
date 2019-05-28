Rails.application.routes.draw do
  resources :ads
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'ads#index'
  #post 'pictures', to: 'ads#new'
end
