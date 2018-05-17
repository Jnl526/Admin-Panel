Rails.application.routes.draw do
  devise_for :admins, :controllers => { registrations: 'registrations' }
  root "dashboard#index"
  resources :admins
  resources :students
  resources :instructors
  resources :cohorts
  resources :courses
  
  get "/login", to: "login#index"
  get "/logout", to: "logout#index"
  get "/signup", to: "signup#index"
  get "/dashboard", to: "dashboard#index"
  
end
