Rails.application.routes.draw do
  resources :users
  resources :sessions

  root :to => 'questions#index'
  resources :questions
end
