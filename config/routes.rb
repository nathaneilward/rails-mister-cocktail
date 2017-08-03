Rails.application.routes.draw do
  get 'doses/create'

  get 'doses/new'

  get 'doses/delete'

  get 'cocktails/index'

  get 'cocktails/create'

  get 'cocktails/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails, only: [ :index, :create, :new ] do
    resources :doses, only: [ :create, :new, :delete]
  end
end
