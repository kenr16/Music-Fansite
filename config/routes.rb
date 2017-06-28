Rails.application.routes.draw do
  resources :albums do
    resources :reviews
  end
end
