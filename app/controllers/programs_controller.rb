class ProgramsController < ApplicationController
    include Pundit
    
    before_action :find_application, only: [:edit, :update, :show, :destroy]
    
    def index
        @programs = Program.paginate(page: params[:page], per_page: 10)
    end
    
    def new
        @program = Program.new
        authorize @program
    end
    
    def create
        @program = Program.new(application_params)
        authorize @program
        if @program.save
            flash[:success] = "Application added successfully"
            redirect_to applications_path
        else
            render 'new'
        end
    end
    
    def edit
        authorize @program
    end
    
    def update
        authorize @program
        if @program.update(application_params)
            flash[:success] = "Application updated successfully"
            redirect_to application_path(@program)
        else
            render 'edit'
        end
    end
    
    def show
    end
    
    def destroy
        authorize @program
        @program.destroy
        flash[:error] = "Application Type has been deleted"
        redirect_to programs_path
    end
    
    private
        def application_params
            params.require(:application).permit(:name, :description)
        end
        
        def find_application
            @program = Program.find(params[:id])
        end
end
