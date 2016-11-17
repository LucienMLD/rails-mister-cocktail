Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:index, :new, :create, :delete]
    resources :ingredients, only: [:index]
  end
end
