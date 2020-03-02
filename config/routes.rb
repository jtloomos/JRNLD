Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]

  root to: 'pages#home'
  get 'survey', to: 'pages#survey', as: 'survey'
  get 'contact', to: 'pages#contact', as: 'contact'

  resources :entries do
    resources :entry_questions, only: [:new, :create, :edit, :update]
    resources :entry_tags, only: [:create, :update, :destroy]
  end

  resources :tags, only: [:create, :update, :destroy]

  resources :questions, only: [:index] # ---> IDEALLY THE USER QUESTIONS NEW, EDIT IS DONE IN THE SAME PAGE
  resources :user_questions, only: [:create, :update]
end
