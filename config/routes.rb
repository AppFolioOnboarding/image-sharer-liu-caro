Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'image_links#index'

  resources :feedbacks, only: [:new]

  resources :image_links, only: [:index]

  namespace :api do
    resource :feedbacks, only: [:create]
  end
end
