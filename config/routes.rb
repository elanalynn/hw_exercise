Rails.application.routes.draw do
  resources :carriers
  resources :policies
  resources :policy_files
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
