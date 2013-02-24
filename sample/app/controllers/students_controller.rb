class StudentsController < ApplicationController
	def index
	 	@students = Student.all
	end

	def new
		@student = Student.new
		@programs = Program.all
	end

	def create
		@student = Student.new(params[:student])
		if @student.save
			redirect_to students_path(@student)	
		else
			flash[:error] = "Record couldn't be saved"
			render :action => :new
		end
		
	end

	def show
		@student = Student.find(params[:id])
	end

	def edit
		@student = Student.find(params[:id])
		if @student.save
			redirect_to students_path(@student)	
		else
			flash[:error] = "Record couldn't be saved"
			render :action => :new
		end
	end

	def update
		@student = Student.find(params[:id])
		@student.update_attributes(params[:student])
		redirect_to (students_path)
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to students_path
	end
end
