Aspsurvival::Application.routes.draw do

  devise_for :users
resources :tips
authenticated :user do
  root :to => 'home#index'
end
devise_scope :users do
  get "sign_in", :to => "devise/sessions#new"
  end


root :to => "home#index"
resources :users

root :to => "home#index"
devise_for :users
resources :users, :only => [:show, :index]  
end
