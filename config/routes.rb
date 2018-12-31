Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations' }
  root to: 'pages#home'
  resources :profiles, only: [ :new, :create, :edit, :index, :destroy, :show ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
