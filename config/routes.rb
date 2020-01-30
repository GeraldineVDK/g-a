Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get 'contacts', to: 'contacts#new', as: :contacts
  post 'contacts', to: 'contacts#create', as: :contacts_input
  get 'contacts/index', to: 'contacts#index', as: :contacts_index
  get 'contacts/:id', to: 'contacts#show', as: :contact
  get 'contacts/:id/edit', to: "contacts#edit", as: :contact_edit
  patch 'contacts/:id', to: 'contacts#update', as: :contact_update
  delete 'contacts/:id', to: 'contacts#destroy', as: :contact_destroy

  get 'devis', to: 'devis#new', as: :devis
  post 'devis', to: 'devis#create', as: :devis_input
  get 'devis/index', to: 'devis#index', as: :devis_index
  get 'devis/:id', to: 'devis#show', as: :devi
  get 'devis/:id/edit', to: 'devis#edit', as: :devi_edit
  patch 'devis/:id', to: 'devis#update', as: :devi_update
  delete 'devis/:id', to: 'devis#destroy', as: :devi_destroy

  get 'reviews', to: 'reviews#new', as: :reviews
  post 'reviews', to: 'reviews#create', as: :reviews_input
  get 'reviews/index', to: 'reviews#index', as: :reviews_index
  get 'reviews/:id', to: 'reviews#show', as: :review
  get 'reviews/:id/edit', to: 'reviews#edit', as: :review_edit
  patch 'reviews/:id', to: 'reviews#update', as: :review_update
  delete 'reviews/:id', to: 'reviews#destroy', as: :review_destroy
end
