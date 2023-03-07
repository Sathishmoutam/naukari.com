class ApplicationController < ActionController::Base
      def authenticate_user
        token=request.headers['Authorization'].split(" ")[1]
        if token.present?
          key =Rails.application.secrets.secret_key_base[0]
            decode_token= JWT.decode(token,key)
            user_id=decode_token[0]['user_id']
            # render json: User.find_by(id: user_id)
            @current_user = User.find_by(id: user_id)
            unless @current_user
                render json: {error: 'unauthorized'},status: :unauthorized
            end
             return @current_user
        else
            render json: {error: 'authorization header missing'},status: :unauthorized
        end
    end
    
end
