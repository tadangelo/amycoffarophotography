Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
	get 'about', to: 'pages#about'

  get 'packages', to: 'pages#packages'

  get 'gallery', to: 'pages#gallery'

  get 'proofs', to: 'pages#proofs'

  get 'contact', to: 'pages#contact'



  root to: 'pages#home'
end
