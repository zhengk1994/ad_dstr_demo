Rails.application.routes.draw do
  get 'reports/index'
  get 'reports/show'
  get '/view' => 'adsapi#view'
  get '/click' => 'adsapi#click'
  get '/index' => "ads#index"
  get '/showreport' => "ads#showreport"



  resources :ads
  resources :reports
  root 'ads#index'


  get 'ads/index'
  get 'ads/new'
  get 'ads/edit'
  get 'ads/show'


  root 'reports#index'

  # get 'users/index'
  # get 'users/new'
  # get 'users/edit'
  # get 'users/show'

  # get 'ads/index'
  # get 'ads/new'
  # get 'ads/edit'
  # get 'ads/show'

  # get 'users/index'
  # get 'users/new'
  # get 'users/edit'
  # get 'users/show'

end
