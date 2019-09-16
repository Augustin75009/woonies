Rails.application.routes.draw do
  root to: "pages#home"
  get 'pages/cookies'
  get 'pages/contact'
  get 'pages/about'
  get 'pages/guide'
  get 'pages/CGU'
  get 'pages/legals'
  get 'pages/home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
