Rails.application.routes.draw do
  resources :post_images, only: [:new, :index, :show]
  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#new', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
