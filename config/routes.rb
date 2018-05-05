Rails.application.routes.draw do
  root 'home#index'
	resources :users, except: :show do
		collection do
	    	get :newuser
	 	 end
	end
 	devise_for :users , :skip => [:registrations]
 	resources :student_profiles
 	resources :teacher_profile
 	resources :s_class
 	resources :subject
 	resources :course
end
