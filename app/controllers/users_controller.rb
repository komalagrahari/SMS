class UsersController < ApplicationController
	before_action :authenticate_user!
	def index
	end

	def new
    @user=User.all
	end

	def newuser
		@user=User.new
	end

	def show
	end
	
	def create
    #binding.pry
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
     end
    end
    
    def destroy
 		 signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
  	 # set_flash_message! :notice, :signed_out if signed_out
  		 yield if block_given?
  		 #respond_to_on_destroy
        if signed_out
         redirect_to new_user_session_path
       end
	  end

	def user_params
       params.require(:user).permit(:name, :email,:f_name,:l_name,:fathername,:gender,:dob,:phonenumber,:city, :address, :password,:zipcode)
    end
end
