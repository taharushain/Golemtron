Rails.application.routes.draw do

	resources :messages, only: [:new, :create]


	devise_for :users, :controllers => { registrations: 'registrations'}  
	root 'welcome#home'

	get "/about" => "welcome#about"
	get "/packages" => "welcome#packages"
	get "/contact" => "welcome#contact"

	get "/blog/editor/home" => "editors#index"
	# get "/blog" => "blog#home"
	resources :posts, path: '/blog' do
		resources :comments
		member do
			get 'like'
		end
	end

	# match '/send_order', to: 'welcome#send_order', via: 'post'

end
