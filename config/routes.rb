Rails.application.routes.draw do

  resources :toys
  devise_for :users 
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  

  root 'pages#home'

end
