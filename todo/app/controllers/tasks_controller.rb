class TasksController < ApplicationController
	def index
		@task = Task.all
		render :index
	end

	def new 
		@task = Task.new
		render :new
	end

	def create
        new_task = params.require(:task).permit(:content, :complete)
        @task = Task.create(new_task)
        redirect_to "/tasks/#{@task.id}"

    end

    def show 
    	id = params[:id]
        @task = Task.find(id)
        render :show
    end

end
