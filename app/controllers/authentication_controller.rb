class AuthenticationController < ApplicationController
 skip_before_action :authenticate_request

 def authenticate
   command = AuthenticateUser.call(params[:email], params[:password])
   current_user = User.find_by(email: params[:email])
   if command.success?
     render json: { auth_token: command.result, user_id: current_user.id, name:current_user.name, profile_gif:current_user.profile_gif}
   else
     render json: { error: command.errors }, status: :unauthorized
   end
 end
end
