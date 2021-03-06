# == Route Map
#
#                   Prefix Verb     URI Pattern                                     Controller#Action
#                  reviews GET      /reviews(.:format)                              reviews#index
#                          POST     /reviews(.:format)                              reviews#create
#               new_review GET      /reviews/new(.:format)                          reviews#new
#              edit_review GET      /reviews/:id/edit(.:format)                     reviews#edit
#                   review GET      /reviews/:id(.:format)                          reviews#show
#                          PATCH    /reviews/:id(.:format)                          reviews#update
#                          PUT      /reviews/:id(.:format)                          reviews#update
#                          DELETE   /reviews/:id(.:format)                          reviews#destroy
#    physicians_adv_search GET      /physicians/adv_search(.:format)                physicians#adv_search
#        physician_reviews GET      /physicians/:physician_id/reviews(.:format)     reviews#index
#                          POST     /physicians/:physician_id/reviews(.:format)     reviews#create
#     new_physician_review GET      /physicians/:physician_id/reviews/new(.:format) reviews#new
#                          GET      /reviews/:id/edit(.:format)                     reviews#edit
#                          GET      /reviews/:id(.:format)                          reviews#show
#                          PATCH    /reviews/:id(.:format)                          reviews#update
#                          PUT      /reviews/:id(.:format)                          reviews#update
#                          DELETE   /reviews/:id(.:format)                          reviews#destroy
#               physicians GET      /physicians(.:format)                           physicians#index
#                          POST     /physicians(.:format)                           physicians#create
#            new_physician GET      /physicians/new(.:format)                       physicians#new
#           edit_physician GET      /physicians/:id/edit(.:format)                  physicians#edit
#                physician GET      /physicians/:id(.:format)                       physicians#show
#                          PATCH    /physicians/:id(.:format)                       physicians#update
#                          PUT      /physicians/:id(.:format)                       physicians#update
#                          DELETE   /physicians/:id(.:format)                       physicians#destroy
#         new_user_session GET      /users/sign_in(.:format)                        devise/sessions#new
#             user_session POST     /users/sign_in(.:format)                        devise/sessions#create
#     destroy_user_session DELETE   /users/sign_out(.:format)                       devise/sessions#destroy
#  user_omniauth_authorize GET|POST /users/auth/:provider(.:format)                 users/omniauth_callbacks#passthru {:provider=>/facebook/}
#   user_omniauth_callback GET|POST /users/auth/:action/callback(.:format)          users/omniauth_callbacks#:action
#            user_password POST     /users/password(.:format)                       devise/passwords#create
#        new_user_password GET      /users/password/new(.:format)                   devise/passwords#new
#       edit_user_password GET      /users/password/edit(.:format)                  devise/passwords#edit
#                          PATCH    /users/password(.:format)                       devise/passwords#update
#                          PUT      /users/password(.:format)                       devise/passwords#update
# cancel_user_registration GET      /users/cancel(.:format)                         devise/registrations#cancel
#        user_registration POST     /users(.:format)                                devise/registrations#create
#    new_user_registration GET      /users/sign_up(.:format)                        devise/registrations#new
#   edit_user_registration GET      /users/edit(.:format)                           devise/registrations#edit
#                          PATCH    /users(.:format)                                devise/registrations#update
#                          PUT      /users(.:format)                                devise/registrations#update
#                          DELETE   /users(.:format)                                devise/registrations#destroy
#       admin_destroy_user DELETE   /users/:id(.:format)                            users#destroy
#                    users GET      /users(.:format)                                users#index
#                          POST     /users(.:format)                                users#create
#                 new_user GET      /users/new(.:format)                            users#new
#                edit_user GET      /users/:id/edit(.:format)                       users#edit
#                     user GET      /users/:id(.:format)                            users#show
#                          PATCH    /users/:id(.:format)                            users#update
#                          PUT      /users/:id(.:format)                            users#update
#                          DELETE   /users/:id(.:format)                            users#destroy
#                     root GET      /                                               physicians#index
#

# The priority is based upon order of creation: first created -> highest priority.
# See how all your routes lay out with "rake routes".
Rails.application.routes.draw do
  resources :reviews

  # We have to define first the personal ones so that it does not mistake adv_search with :id.
  get 'physicians/adv_search'
  resources :physicians do
    resources :reviews, shallow: true

    # member do                       # This would create an adv_search route INSIDE physicians as
    #   get 'adv_search'              # physicians/:id/adv_search.
    # end                             # We don't actually want that

  end

  # devise_for :users, controllers: {registrations: 'registrations'}    # The second one is the name of MY controller.
  # commented above, and put in below line from OmniAuth's GitHub https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  resources  :users

  root 'physicians#index'

  # commented this out from OmniAuth GitHub!!
  # devise_scope :user do
  #   get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session_2
  # end

  # Somethin from Swaps class:
  # match 'photos/show' => 'photos#show', via => get
  # is the same as
  # get 'photos/show'
  # But if you want to do something more complex you should know the other one.


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
