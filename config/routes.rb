Rails.application.routes.draw do
  get 'registrations/new'

  get 'sessions/new'

  root "home#index"
  get "random_shirt", to: "random_shirt#random"
  resources :shirts, only: [:index, :show]
  resources :lessons, only: [:index, :show, :new, :create]
  resources :sessions, only: [:new, :create]
  delete 'sessions', to: "sessions#destroy"
  resources :registrations, only: [:new, :create]
end

=begin
get shirts => all
get shirts/7 => One shirt
get shirts/new => A form to create a new shirt
get shirts/7/edit => A form to update a new shirt
post shirts => Make anew shirt
patch shirts/7 => Update shirt
delete shirts/7 => Kill the shirt
=end
