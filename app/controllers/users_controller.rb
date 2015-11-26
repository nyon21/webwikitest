class UsersController < ApplicationController
	def index
		@user = User.all
	end
	def show
		@user = User.find(params[:id])
	end
	
	def new
		@user = User.new
	end
	
	def edit
		@user = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end
	
	def create
		@user = User.new(user_params)
 
		if @user.save
			session[:user_id] = @user.id 
       			redirect_to '/' 
		else
			redirect_to 'signup'
		end
	end
	
	private
		def user_params
			params.require(:user).permit(:name, :lastname, :email, :password, :birthDate)
		end
		
end
