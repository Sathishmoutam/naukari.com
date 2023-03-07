class ShowingController < ApplicationController
    def skill
        @skill=Skill.all
        render json:@skill
    end
    def contact_detail
        @contact_detail=ContactDetail.all
        render json:@contact_detail
    end
    def companie
        @companie=Companie.all
         render json:@companie
    end
    def job
        @job=Job.all
        render json:@job
    end
    def education_details
        @education_details=EducationDetail.all
        render json:@education_details
    end
    def resume_details
        @resume=Resume.all
        render json:@resume
    end
end
