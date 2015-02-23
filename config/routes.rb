Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/create'

	resources :comments, only: [:new, :create]
	root to: 'comments#new'
	
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/auth_fail'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#auth_fail'
  get '/sign_out', to: 'sessions#destroy', as: :sign_out
end
