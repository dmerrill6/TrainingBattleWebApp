Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :exercises
  resources :exercises_users, path: "my_exercises"
  resources :exercises_groups
  resources :exercise_sets
  resources :groups
end
