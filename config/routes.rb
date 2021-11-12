Rails.application.routes.draw do
  # get 'bookmark/new'
  # get 'bookmark/create'
  # get 'bookmark/destroy'
  # get 'lists/index'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/lists', to: 'lists#index', as: 'lists'
  # get '/lists/:id', to: 'lists#show', as: 'list'
  root to: 'lists#index'
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
