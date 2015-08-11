Rails.application.routes.draw do
  get 'documents/index'

  get 'documents/new'

  get 'documents/create'

  get 'documents/destroy'

  devise_for :users
  get 'welcome/index'
  resources :notes

  authenticated :user do
    root 'notes#index', as: "authenticated_root"
  end

  root 'welcome#index'

end
