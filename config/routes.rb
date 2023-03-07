Rails.application.routes.draw do
  get 'home', to:'data#index'
  get 'viewprofile', to:'profile#index'
  post 'login',to: 'session#create'
  resources :users 
  get 'contact_details' ,to: 'showing#contact_detail'
  get 'companie_details' ,to: 'showing#companie'
  get 'job_details' ,to: 'showing#job'
  get 'education_details' ,to: 'showing#education_details'
  get 'skill_details' ,to: 'showing#skill'
  get 'resume_details' ,to: 'showing#resume_details'

  post 'adding_skills' ,to: 'adding#addingskills'
  post 'adding_contact_details' ,to: 'adding#adding_contact_details'
  post 'adding_education_details' ,to: 'adding#adding_education_details'
  post 'adding_education_details' ,to: 'adding#adding_education_details'
  post 'adding_companies' ,to: 'adding#adding_companies'
  post 'adding_jobs' ,to: 'adding#adding_jobs'
  post 'adding_resume_details' ,to: 'adding#adding_resume_details'

end
