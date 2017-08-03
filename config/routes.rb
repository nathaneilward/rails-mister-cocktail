Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails, only: [ :index, :create, :new ] do
    resources :doses, only: [ :create, :new, :delete]
  end
end
