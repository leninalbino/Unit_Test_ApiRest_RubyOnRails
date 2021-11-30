Rails.application.routes.draw do
  #get 'peoples/index'
  resources :peoples, only: %i[index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
