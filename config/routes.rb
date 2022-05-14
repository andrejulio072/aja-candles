Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :candles do
    resources :orders, only: [ :edit, :index, :new, :create]
  end
end
