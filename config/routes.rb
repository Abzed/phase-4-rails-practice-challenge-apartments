Rails.application.routes.draw do
  resources :leases, only: [:create, :destroy]
  resources :apartments, only: [:create, :index, :show, :update, :destroy]
  resources :tenants, only: [:create, :index, :show, :update, :destroy]
end
