class DataController < ApplicationController
    before_action :authenticate_user
    def index
    @job=Job.all
    @companie=Companie.all
    @users =User.find_by(id: @current_user)
     @skill=Skill.find_by(id: @current_user)
     @education_details=EducationDetail.find_by(id: @current_user)
     @contact_detail=ContactDetail.find_by(id: @current_user)
    render json: {users: @users,jobs: @job,skills: @skill,education_details: @education_details, contact_detail:@contact_detail,  companie:@companie}
    end
end
