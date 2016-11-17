Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:update, :show, :edit]
  resources :nests, only: [:new, :create, :show, :edit, :destroy, :update, :index] do
    resources :timeslots, only: [:new, :create, :show, :edit, :destroy, :update, :index]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
