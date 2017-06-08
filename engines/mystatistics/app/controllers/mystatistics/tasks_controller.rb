require_dependency "mystatistics/application_controller"

module Mystatistics
  class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    # GET /tasks
    def index
      @members = Core::Member.all
      @tasks = Task.all
      @login = params[:cell_type]
    end

    # GET /tasks/1
    def show
    end

    def get_login
      @members = Core::Member.all
      @tasks = Task.all
      @login = params[:sell_type] 
    end

    # GET /tasks/new
    def new
      @task = Task.new
    end

    def import 
      logger.debug("HELLO")
      #logger.debug(env["HTTP_X_AUTH_TOKE"])
      #logger.debug(request.env['HTTP_X_AUTH_TOKEN'])
      request.body.rewind
      logger.debug(request.env['HTTP_X_AUTH_TOKEN'])
      logger.debug(Rails.application.config.token)
      if request.env['HTTP_X_AUTH_TOKEN'] == Rails.application.config.token
      Task.import(request.body.read)
      end
      #Task.import(params[:file])
      #redirect_to root_url, notice: "imported"
    end

    # GET /tasks/1/edit
    def edit
    end

    # POST /tasks
    def create
      @task = Task.new(task_params)

      if @task.save
        redirect_to @task, notice: 'Task was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /tasks/1
    def update
      if @task.update(task_params)
        redirect_to @task, notice: 'Task was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /tasks/1
    def destroy
      @task.destroy
      redirect_to tasks_url, notice: 'Task was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_task
        @task = Task.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def task_params
        params.require(:task).permit(:claster, :ntask, :login, :tbegin, :tend, :nodes, :cores, :status)
      end
  end
end
