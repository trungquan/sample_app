class UsersController < ApplicationController
  
  def new
  	@user = User.new
  end
  
  def show
  	@user = User.find(params[:id])
  end 

	def create
    	@user = User.new(params[:user])
		binding.pry
   	 	if @user.save
   	 		flash[:success] = "Ban da tao tai khoan thanh cong!"
      		redirect_to @user
    	else
      		render 'new'
    	end
  	end
end
