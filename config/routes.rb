Rails.application.routes.draw do
	resources :messages, only: [:new, :create]
	root 'welcome#home'
	get "/about" => "welcome#about"
	get "/packages" => "welcome#packages"
	get "/contact" => "welcome#contact"
	get "/blog" => "blog#home"
	match '/send_order', to: 'welcome#send_order', via: 'post'

end
