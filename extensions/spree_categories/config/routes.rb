Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :api, defaults: { format: 'json' } do
    resources :categories, only: [:index] do
      resources :products, only: [:index]
    end
  end
end
