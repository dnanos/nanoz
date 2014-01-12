Nanoz::Application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, :path_prefix => 'd'

  resources :books do
    resources :comments
  end
  resources :publishers
  resources :users

  get 'moderator' => 'admin#moderator'
  get 'admin' => 'admin#admin'

  root 'books#index'
end
