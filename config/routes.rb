Vpac::Application.routes.draw do
  resources :attended_shows do
    collection { post :import }
  end

  resources :members

  resources :publicity_topics

  resources :member_groups do
    collection { post :import }
  end

  resources :board_members
  resources :current_board, controller: :board_members, only: [:index]

  resources :acfee_topics
  resources :anchor_link_topics

  root 'static_pages#home'

  match '/mission', to: 'static_pages#mission', via: 'get'
  match '/history', to: 'static_pages#history', via: 'get'

  match 'reserve_space', to: 'static_pages#reserve_space', via: 'get'
  match 'publicity_help', to: 'publicity_topics#index', via: 'get'
  match '/acfee_help', to: 'acfee_topics#index', via: 'get'
  match '/anchor_link_help', to: 'anchor_link_topics#index', via: 'get'

  match '/calendar', to: 'static_pages#calendar', via: 'get'
  match '/auditions', to: 'static_pages#auditions', via: 'get'
  match '/spotlight', to: 'static_pages#spotlight', via: 'get'
  match '/main_attraction', to: 'static_pages#main_attraction', via: 'get'
  match '/encore', to: 'static_pages#encore', via: 'get'

  match '/media', to: 'static_pages#media', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/nomination', to: 'static_pages#nomination', via: 'get'

  match '/send_contact_email', to: 'static_pages#send_contact_email', via: 'post'
  match '/send_nomination_email', to: 'static_pages#send_nomination_email', via: 'post'

  match '/community', to: 'community#index', via: 'get'
  match '/csv', to: 'member_groups#csv', via: 'post'
  match '/text', to: 'member_groups#text', via: 'post'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
