Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'image_links#new'

  resources :image_links, only: [:index, :new, :create, :show]
end
