Rails.application.routes.draw do

  devise_for :users
  resources :gyms

  root 'gyms#index'
end
