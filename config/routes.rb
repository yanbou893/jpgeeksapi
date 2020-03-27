Rails.application.routes.draw do
  namespace :v1 do
    resources :users
    resources :apps
    resources :notes
    resources :updates
    resources :monetizes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
