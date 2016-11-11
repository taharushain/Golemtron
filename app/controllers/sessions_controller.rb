class RegistrationsController < Devise::SessionsController
	layout 'blog', only: [:new, :create, :destroy]

	def new
		super
	end

	def create
		super
	end

	def destroy
		super
	end


end  