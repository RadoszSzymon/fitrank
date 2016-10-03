Rails.application.routes.draw do

  resources :gyms

  root 'gyms#index'
end
