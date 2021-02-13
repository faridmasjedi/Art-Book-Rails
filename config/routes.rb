Rails.application.routes.draw do
  root :to => 'arts#index'
  post '/' => 'arts#index'
  resources :arts
end
