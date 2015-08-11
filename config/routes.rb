Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'
  resources :notes, :documents

  authenticated :user do
    root 'notes#index', as: "authenticated_root"
  end

  root 'welcome#index'

end
