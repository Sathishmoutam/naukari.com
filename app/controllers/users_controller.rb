class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
   before_action :authenticate_user
  def index
    @users =User.find_by(id: @current_user)
    render json: @users
  end
  def show
    @user = User.find(params[:id])
    render json: @user
  end
  def new
    @user = User.new
  end
  def edit
    @user = User.find(params[:id])
    render json: @user
  end
  def create
    @user = User.new(user_parameters)
      if authenticate_user
        @user.save
        render json: {
          message: "user Created Successfully",
          status: :created}
      else
        render json: {
          message: "user creation failed",
          status: :error,
          error: @contact.errors.full_messages
        }
      end
  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_parameters)
        render json:@user
      else
         render json:{error: 'error occured'}
      end
    end

def destroy
  @user = User.find(params[:id])
      @user.destroy
      render json: {error: 'user destryed successfully'}
 end
 
    def user_parameters
      params.permit(:user_name, :password, :first_name, :middle_name, :last_name, :gender)
   end
end


