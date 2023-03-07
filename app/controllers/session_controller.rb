class SessionController < ApplicationController
    skip_before_action :verify_authenticity_token
 def create
    # params.permit!
    # debugger
    @user=User.find_by(user_name: params[:user_name])
    if @user&&@user.authenticate(params[:password])
        secret_key =Rails.application.secrets.secret_key_base[0]
        token = JWT.encode({user_id: @user.id.to_s},secret_key)
        render json: {token: token}
    else
        render json: {error: 'invalid mail or password',status: :unauthorized}
    end
 end
end
