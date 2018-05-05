class TeacherProfileController < ApplicationController
	before_action :authenticate_user!
	def index
	end

	def new
	  @user=User.new
	  @teacher_profile = TeacherProfile.new
	end

	def create 
	#binding.pry
	@user=User.new(user_params)
	if @user.save
	   @teacher_profile = TeacherProfile.new(teacher_params)
	   @teacher_profile.user_id  = @user.id
	     if @teacher_profile.save 
	      respond_to do |format|
	       format.html { redirect_to root_path, notice: 'User was successfully created.' }
	       format.json { render :show, status: :created, location: @teacher_profile}
	     else
	       format.html { render :new }
	       format.json { render json: @teacher_profile.errors, status: :unprocessable_entity }
	     end
	  end
	end
	end

	def show
	end

	def teacher_params
	 params.require(:teacher_profile).permit(:user , :subject1, :subject2, :subject3, :experience, :newclass,
	  :recentclass, :recentschools, :section, :adhaarnumber,:role_id, :user_id, :marrigestatus,
	  :spousename, :children, :salary)
	end

	def user_params
	 params.require(:user).permit(:name, :email,:f_name,:l_name,:fathername,:gender,
	  :dob,:phonenumber,:city, :address, :password,:zipcode, :role_id)
	end

end
