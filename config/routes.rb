Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]

  root to: 'pages#home'
  get 'survey', to: 'pages#survey', as: 'survey'
  get 'contact', to: 'pages#contact', as: 'contact'

  resources :entries do
    resources :entry_answers, only: [:create, :update, :show]
    patch 'entry_tags', to: 'tags#update_entry_tag', as: 'edit_entry_tag'
  end

  resources :tags, only: [:create, :update, :destroy]
  resources :questions, only: [:index, :create, :update] # ---> IDEALLY THE USER QUESTIONS NEW, EDIT IS DONE IN THE SAME PAGE
end
