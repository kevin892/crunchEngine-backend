
 class CreateUserController < ApplicationController
   skip_before_action :authenticate_request

   def show
     @user = User.find(params[:id])
     render json: :show
   end

   def create
     @user = User.new
     @user.profile_gif = params["profile_gif"]
     @user.name = params["username"]
     @user.password = params["password"]
     @user.email = params["email"]
       if @user.valid?
         @user.save
        render json: @user
       else
        render json: @user.errors, status: :unprocessable_entity 
     end
   end
end
