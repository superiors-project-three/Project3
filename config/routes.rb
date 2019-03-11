Rails.application.routes.draw do
  devise_for :users
  resources :applies
  devise_scope :user do
    
    authenticated :user do
      root "pages#home"
    end

    unauthenticated do
      root to: "devise/sessions#new"
    end
  end

  #comment
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
