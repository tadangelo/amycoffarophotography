Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
	get 'about', to: 'pages#about'

  get 'packages', to: 'pages#packages'

  get 'gallery', to: 'pages#gallery'

  get 'proofs', to: 'pages#proofs'

  get 'contact', to: 'messages#new', as: 'contact'

  post 'contact', to: 'messages#create'


  root to: 'pages#home'
end
