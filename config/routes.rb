Rails.application.routes.draw do

  root to: 'pages#home'

  # get 'about', to: 'pages#about', as: :about
  get 'contacts', to: 'contacts#new', as: :contacts
  post 'contacts', to: 'contacts#create', as: :contacts_input
  # get 'services', to: 'pages#services', as: :services
  get 'devis', to: 'devis#new', as: :devis
  post 'devis', to: 'devis#create', as: :devis_input
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'reviews', to: 'reviews#index'
  get 'reviews/new', to: 'reviews#new', as: :new_review
  post 'reviews', to: 'reviews#create', as: :reviews_input
end
