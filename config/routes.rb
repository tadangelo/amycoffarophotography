Rails.application.routes.draw do
	get 'about', to: 'pages#about'

  get 'packages', to: 'pages#packages'

  get 'gallery', to: 'pages#gallery'

  get 'proofs', to: 'pages#proofs'

  get 'contact', to: 'pages#contact'



  root 'welcome#show'
end
