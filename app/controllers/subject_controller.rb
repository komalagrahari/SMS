class SubjectController < ApplicationController
	before_action :authenticate_user!
	def index
		@sclass = SClass.all
	  @subject = Subject.all
	end

	def new
	 @sclass = SClass.new
	 @subject = Subject.new
	 
	end

	def create 
		binding.pry
	  @sclass=SClass.new(sclass_params)
	  if @sclass.save
	  @subject = Subject.new(subject_params)
	     if@subject.save 
	      respond_to do |format|
	       format.html { redirect_to course_index_url, notice: 'User was successfully created.' }
	       format.json { render :show, status: :created, location:@subject}
	     else
	       format.html { render :new }
	       format.json { render json:@subject.errors, status: :unprocessable_entity }
	     end
	  end
	end
	end

	def show
	end

	def subject_params
	 params.require(:subject).permit(:name, id:[])
	end

	def sclass_params
	 params.require(:sclass).permit(:name, :section, id:[])
	end

end
