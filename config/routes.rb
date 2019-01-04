Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "employees#index"
  get "employees/disabled", to: "employees#index_disabled"
  resources :employees
  resources :locations
  resources :securities
  resources :applications
end
