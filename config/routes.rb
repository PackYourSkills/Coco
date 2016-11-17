Rails.application.routes.draw do

  get 'timeslots/index'

  get 'timeslots/new'

  get 'timeslots/show'

  get 'timeslots/edit'

  get 'timeslots/delete'

  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:update, :show, :edit]
  resources :nests, only: [:new, :create, :show, :edit, :destroy, :update, :index]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
