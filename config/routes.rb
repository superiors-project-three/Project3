Rails.application.routes.draw do
  devise_for :users
  resources :applies
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  #comment
  # root "main#page"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
