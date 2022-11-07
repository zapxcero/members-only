Rails.application.routes.draw do
  devise_for :users

  as :user do
    get "/sign_in" => "devise/sessions#new" 
    get "/sign_up" => "devise/registrations#new" 
    delete 'logout', to: 'devise/sessions#destroy'
  end

  resources :posts, only: [:index, :new, :create]

  root "home#index"
end
