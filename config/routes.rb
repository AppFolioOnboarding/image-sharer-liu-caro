Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'image_links#index'

  get '/tagged', to: 'image_links#tagged'

  resources :image_links, only: %i[index new create show]
end
