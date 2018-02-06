Rails.application.routes.draw do

  resources :registeredapps

  devise_for :users

  get 'about' => 'welcome#about'

  root 'welcome#index'

  namespace :api, defaults: { format: :json } do
    match '/events', to: 'events#preflight', via: [:options]
    resources :events, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
