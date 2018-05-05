class StudentProfilesController < ApplicationController
  before_action :authenticate_user!
	def index
	end

	def new
    @user=User.new
	  @student_profile = StudentProfile.new
	end

  def create 
    #binding.pry
    @user=User.new(user_params)
    if @user.save
       @student_profile = StudentProfile.new(student_params)
       @student_profile.user_id  = @user.id
         if @student_profile.save 
          respond_to do |format|
           format.html { redirect_to root_path, notice: 'User was successfully created.' }
           format.json { render :show, status: :created, location: @student_profile}
         else
           format.html { render :new }
           format.json { render json: @student_profile.errors, status: :unprocessable_entity }
         end
      end
    end
  end

  def show
  end

  def student_params
    params.require(:student_profile).permit(:user ,:mothername, :guardianname, :newclass,
      :recentclass, :recentschool, :section, :allergy, :bloodgroup, :diseases, :siblings, 
      :otheraddress, :adhaarnumber,:role_id, :user_id)
  end

  def user_params
    params.require(:user).permit(:name, :email,:f_name,:l_name,:fathername,:gender,
      :dob,:phonenumber,:city, :address, :password,:zipcode, :role_id)
  end
end
