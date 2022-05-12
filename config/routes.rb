Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :candles do
    resources :orders, only: [ :index, :new, :create]
  end
end
