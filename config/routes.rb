Rails.application.routes.draw do

  # resources :themes
  # resources :area_editions
  # resources :layouts
  # resources :personalizations
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #


  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/'
          # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  devise_for :users, :class_name => 'Spree::User', :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'users' => 'users#index'

  scope :admin do
    resources :products, only: [] do
      resources :themes do
        resources :personalizations do
          resources :layouts do
            resources :area_editions
          end
        end
      end
    end
  end

  namespace :admin do
    resources :categories
  end


  namespace :api, :defaults => { :format => 'json' } do
    resources :user_pers, only: [:index, :create] do
    end

    resources :carts, only: [] do
      collection do
        get :user_cart
      end
    end

    resources :cart_items, only: [:create, :destroy, :update], :defaults => { :format => 'json' } do
      collection do
        get :count
      end
    end

    match "cart_items/:id" => "cart_items#create", via: [:options]
  end

  scope module: :spree do
    namespace :admin do
      resources :products do
      end
    end

    namespace :api, format: 'json' do
      resources :categories, only: [:index, :show] do
        # resources :products, only: [:index]
      end

      namespace :v1 do
        resources :users, only: [:create], format: 'json' do
          collection do
            post 'sign_in'
            get 'has_email'
          end
        end
      end
    end
  end


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
