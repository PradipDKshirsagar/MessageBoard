Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }
  resources :messages do 
    resources :comments
  end
  root 'messages#index'
end
