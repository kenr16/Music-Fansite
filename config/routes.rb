Rails.application.routes.draw do
  root :to => 'albums#index'

  resources :albums do
    resources :reviews, :except => [:show, :index]
  end
end
