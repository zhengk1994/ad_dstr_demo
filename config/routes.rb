Rails.application.routes.draw do
  get 'reports/index'
  get 'reports/show'
  get '/view' => 'adsapi#view'
  get '/click' => 'adsapi#click'
  get '/index' => "ads#index"
  get '/showreport' => "ads#showreport"



  resources :ads
  resources :reports
  #resources :users
  root 'ads#index'


  get 'ads/index'
  get 'ads/new'
  get 'ads/edit'
  get 'ads/show'



end
