class ApplicationsController < ApplicationController
    before_action :find_application, only: [:edit, :update, :show, :destroy]
    
    def index
        @applications = Application.paginate(page: params[:page], per_page: 10)
    end
    
    def new
        @application = Application.new
    end
    
    def create
        @application = Application.new(application_params)
        if @application.save
            flash[:success] = "Application added successfully"
            redirect_to applications_path
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @application.update(application_params)
            flash[:success] = "Application updated successfully"
            redirect_to application_path(@application)
        else
            render 'edit'
        end
    end
    
    def show
    end
    
    def destroy
        @application.destroy
        flash[:danger] = "Application Type has been deleted"
        redirect_to applications_path
    end
    
    private
        def application_params
            params.require(:application).permit(:name, :description)
        end
        
        def find_application
            @application = Application.find(params[:id])
        end
end
