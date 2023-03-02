Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  resources :boards do
    resources :posts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "boards#index"
end
