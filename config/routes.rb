Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    resources :skill_users
  end
  resources :skills
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
