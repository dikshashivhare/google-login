Rails.application.routes.draw do
  resources :articles
  get 'home/index'
  devise_for :users, controllers: {
        omniauth_callbacks: 'users/omniauth_callbacks',
    }

  root to: "articles#index"

end
