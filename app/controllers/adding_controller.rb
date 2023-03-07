class AddingController < ApplicationController
  skip_before_action :verify_authenticity_token
    before_action :authenticate_user
    def addingskills
        @skill = Skill.new(params.permit(:skills))
        if authenticate_user
          @skill.save
           render json: {
            message: "skill Created Successfully",
            status: :created}
        else
             render json: {
            message: "skill added creation failed",
            status: :error,
            error:  @skill.errors.full_messages
          }
        end
    end
    def adding_contact_details
        @contact_detail = ContactDetail.new(params.permit(:phone,:email,:address))
        if authenticate_user
            @contact_detail.save
           render json: {
            message: " @contact_detail Created Successfully",
            status: :created}
        else
             render json: {
            message: " @contact_detail added creation failed",
            status: :error,
            error:  @contact_detail.errors.full_messages
          }
        end
    end
    def adding_education_details
        @education_details = EducationDetail.new(params.permit(:ed_type,:year_of_passout,:per_cgpa))
        if authenticate_user
            @education_details.save
           render json: {
            message: "  @education_details Created Successfully",
            status: :created}
          
        else
             render json: {
            message: "  @education_details creation failed",
            status: :error,
            error:  @education_details.errors.full_messages
          }
        end
    end
    def adding_companies
        @companie= Companie.new(params.permit(:name,:count_emp,:date_of_estd))
        if authenticate_user
            @companie.save
           render json: {
            message: "   @companie Created Successfully",
            status: :created}
        else
             render json: {
            message: "    @companie creation failed",
            status: :error,
            error:  @companie.errors.full_messages
          }
        end
    end
    def adding_jobs
        @job=Job.new(params.permit(:title,:description))
        if authenticate_user
            @job.save
           render json: {
            message: "   @job Created Successfully",
            status: :created}
          
        else
             render json: {
            message: "@job creation failed",
            status: :error,
            error:   @job.errors.full_messages
          }
        end
    end
    def adding_resume_details
      @resume=Resume.new(params.permit(:first_name, :middle_name, :last_name, :gender,:skills,:ed_type,:year_of_passout,:per_cgpa,:phone,:email,:address))
      if authenticate_user
        @resume.save
         render json: {
          message: "    @resume Created Successfully",
          status: :created}
      else
          render json: {
          message: "  @resume creation failed",
          status: :error,
          error:   @resume.errors.full_messages
        }
      end
  end
end
