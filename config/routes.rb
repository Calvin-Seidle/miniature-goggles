Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  get '/profile' => 'pages#profile'
  get '/manager' => 'pages#manager'
  get '/root' => 'pages#root'
  devise_for :users
  resources :employee_tasks	
  resources :employee_report_types
  resources :employee_reports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
