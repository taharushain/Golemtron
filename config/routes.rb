Rails.application.routes.draw do
	mount Bootsy::Engine => '/bootsy', as: 'bootsy'

	resources :messages, only: [:new, :create]


	devise_for :users, :controllers => { registrations: 'registrations'}  
	root 'welcome#home'

	get "/about" => "welcome#about"
	get "/packages" => "welcome#packages"
	get "/contact" => "welcome#contact"

	get "/blog/editor" => "editors#index"
	get "/blog/editor/new" => "editors#new", :as => :editor_new
	post "/blog/editor/new" => "editors#create"

	# namespace "/blog" do
	# 	get "/editor" => "editors#index"
	# 	get "/editor/new" => "editors#new", :as => :editor_new
	# 	post "/editor/new" => "editors#create"
	# end


	# get "/blog" => "blog#home"
	resources :posts, path: '/blog' do
		resources :comments
		member do
			get 'like'
		end
	end

	# match '/send_order', to: 'welcome#send_order', via: 'post'

end
