Rails.application.routes.draw do
  devise_for :users
  root to: "emails#index"
  resources :emails, except: [:edit, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
