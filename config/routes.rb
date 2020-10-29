Rails.application.routes.draw do
  devise_for :people
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'products#landing'
  resources :products do 
    resources :reviews 
  end
end
