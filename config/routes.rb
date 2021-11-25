Rails.application.routes.draw do
  
  
  
 devise_for :user, controllers: { sessions: "devise/sessions", registrations: "devise/registrations" }, path_names: { sign_in: 'login', password: 'forgot', confirmation: 'confirm', unlock: 'unblock', sign_out: 'signout'}

 devise_scope :user do
   root 'devise/sessions#new'   
 end
  
  resources :users
 
 #The route for custom user sign_up *--not default rails route--*
 get'new_log_in', to: 'users#new_log_in', as: 'new_user_sign_up'
 
#The route for custom user sign_up *--not default rails route--*   
 get'new', to: 'users#log_in', as: 'new_user_log_in'
  
#custom route for after sign in path    
 get'home', to: 'users#home', as: 'user_home_way'
 
#cutom routes for user profile
 get'user_profile', to: 'users#user_profile', as: 'user_profile_way'
  
  
end
