Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:index, :new, :create]
  end
  resources :doses, only: [:destroy]
  resources :ingredients, only: :show
  root "cocktails#index"
end
