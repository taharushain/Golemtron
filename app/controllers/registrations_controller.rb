class RegistrationsController < Devise::RegistrationsController

	layout 'blog', only: [:new, :create, :cancel,:edit, :update, :destroy]

	def edit
		super
	end	

	def new
		super
	end

	def create
		super
	end

	def cancel
		super
	end

	def update
		super
	end

	def destroy
		super
	end

	private

	def sign_up_params
		params.require(:user).permit(:email, :user_name, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:user).permit(:email, :user_name, :password, :password_confirmation, :current_password)
	end
end  