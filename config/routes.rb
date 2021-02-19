Rails.application.routes.draw do
  root to: 'cocktails#index' 
  # cocktails => index / show / new / create
  resources :cocktails, only: [:index, :show, :new, :create] do
    # para eu estar no new e no create do dose eu PRECISO
    # do id do cocktail
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]

end
