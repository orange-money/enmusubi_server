Rails.application.routes.draw do

    #imageモデルに関するルーティング
  get 'images' =>  'images#index'
    post  'images' =>  'images#create'
    get    'images/new' => 'images#new', :as => 'new_image'
    patch  'images/:textinfo_id'  =>  'images#update'
    put   'images/:textinfo_id' =>  'images#update'
    delete 'images/:textinfo_id'  =>  'images#destroy'
    get 'images/:textinfo_id' => 'images#show', :as => 'image'
    get 'images/:textinfo_id/edit'  =>  'images#edit', :as => 'edit_image'

  #userモデルに関するルーティング

    get 'users' =>  'users#index'
    post  'users' =>  'users#create'
    get 'users/:user_id/history' => 'users#history', :as => 'user_text_info'
   # get 'users/history'  =>  'users#history', :as => 'user_text_info'
    get    'users/new' => 'users#new', :as => 'new_user'
    patch  'users/:user_id'  =>  'users#update'
    put   'users/:user_id' =>  'users#update'
    delete 'users/:user_id'  =>  'users#destroy'
    get 'users/:user_id' => 'users#show', :as => 'user'
    get 'users/:user_id/edit'  =>  'users#edit', :as => 'edit_user'
    

  #textテーブルに関するルーティング
    # get 'texts' =>  'texts#index'
    
    post  'texts' =>  'texts#create'
    get    'texts/new' => 'texts#new', :as => 'new_text'
    get 'texts/:univ'  => 'texts#index', :as => 'text_univ'
    patch  'texts/:textinfo_id/detail'  =>  'texts#update'
    put   'texts/:textinfo_id/detail' =>  'texts#update'
    delete 'texts/:textinfo_id/detail'  =>  'texts#destroy'
    get 'texts/:textinfo_id/detail' => 'texts#show', :as => 'text'
    get 'texts/:textinfo_id/edit'  =>  'texts#edit', :as => 'edit_text'
    post 'texts/search' => 'texts#search'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
