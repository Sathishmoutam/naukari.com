class ProfileController< ApplicationController
 before_action :authenticate_user
    def index
     @users =User.find_by(id: @current_user)
    #  @skill=Skill.find_by(id: @current_user)
    #  @education_details=EducationDetail.find_by(id: @current_user)
    #  @contact_detail=ContactDetail.find_by(id: @current_user)
    render json: @users
    end
end