Rails.application.routes.draw do

  devise_for :users

  get 'homes/top'
  root to: "homes#top"
  get 'homes/about' => "homes#about", as: "about"





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#                   Prefix Verb   URI Pattern                                                                                       Controller#Action
#               homes_top GET    /homes/top(.:format)                                                                              homes#top
#             homes_about GET    /homes/about(.:format)                                                                            homes#about
#         new_user_session GET    /users/sign_in(.:format)                                                                          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                                                                          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                                                                         devise/sessions#destroy
#       new_user_password GET    /users/password/new(.:format)                                                                     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                                                                    devise/passwords#edit
#           user_password PATCH  /users/password(.:format)                                                                         devise/passwords#update
#                         PUT    /users/password(.:format)                                                                         devise/passwords#update
#                         POST   /users/password(.:format)                                                                         devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)                                                                           devise/registrations#cancel
#   new_user_registration GET    /users/sign_up(.:format)                                                                          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                                                                             devise/registrations#edit
#       user_registration PATCH  /users(.:format)                                                                                  devise/registrations#update
#                         PUT    /users(.:format)                                                                                  devise/registrations#update
#                         DELETE /users(.:format)                                                                                  devise/registrations#destroy
#                         POST   /users(.:format)                                                                                  devise/registrations#create
#                     root GET    /                                                                                                 homes#top