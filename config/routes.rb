Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  # get 'about', to: 'pages#about', as: :about
  get 'contacts', to: 'contacts#new', as: :contacts
  post 'contacts', to: 'contacts#create', as: :contacts_input
  # get 'services', to: 'pages#services', as: :services
  get 'devis', to: 'devis#new', as: :devis
  post 'devis', to: 'devis#create', as: :devis_input
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'reviews/new', to: 'reviews#new', as: :new_review
  post 'reviews', to: 'reviews#create', as: :reviews_input

  # get 'dashboard', to: "dashboard#index", as: :dashboard

  get 'reviews/index', to: 'reviews#index', as: :reviews_index
  # get 'dashboard/reviews', to: 'dashboard#reviews', as: :dashboard_reviews
  patch 'reviews/:id', to: 'reviews#update', as: :reviews_update
  delete 'reviews/:id', to: 'reviews#destroy', as: :reviews_destroy

  get 'devis/index', to: 'devis#index', as: :devis_index
  # get 'dashboard/reviews', to: 'dashboard#reviews', as: :dashboard_reviews
  get 'devis/:id', to: 'devis#show', as: :devi
  get 'devis/:id', to: 'devis#edit', as: :devi_edit
  patch 'devis/:id', to: 'devis#update', as: :devi_update
  delete 'devis/:id', to: 'devis#destroy', as: :devi_destroy

  get 'contacts/index', to: 'contacts#index', as: :contacts_index
  # get 'dashboard/reviews', to: 'dashboard#reviews', as: :dashboard_reviews
  get 'contacts/index/:id/edit', to: "contacts#edit", as: :edit_contact
  patch 'contacts/:id/update', to: 'contacts#update', as: :contacts_update
  delete 'contacts/:id', to: 'contacts#destroy', as: :contacts_destroy

  # get 'dashboard/devis', to: 'dashboard#devis', as: :dashboard_devis
  # patch 'dashboard/devis', to: 'dashboard#devis#update', as: :dashboard_devis_update
  # delete 'dashboard/devis', to: 'dashboard#devis#destroy', as: :dashboard_devis_destroy

  # get 'dashboard/contacts', to: 'dashboard#contacts', as: :dashboard_contacts
  # patch 'dashboard/contacts', to: 'dashboard#contacts#update', as: :dashboard_contacts_update
  # delete 'dashboard/contacts', to: 'dashboard#contacts#destroy', as: :dashboard_contacts_destroy
end
