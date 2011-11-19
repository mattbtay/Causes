NpoCatalyst::Application.routes.draw do
  resources :user_sessions, :organizations, :causes, :updates
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root :to => 'home#index'
end