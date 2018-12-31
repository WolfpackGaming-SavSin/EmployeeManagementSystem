class EmployeesController < ApplicationController
    before_action :find_employee, only: [:edit, :update, :show, :destroy]
    
    def index
        @employees = Employee.paginate(page: params[:page], per_page: 2)
    end
    
    def new
        @employee = Employee.new
    end
    
    def create
        @employee = Employee.new(employee_params)
        if @employee.save
            flash[:success] = "Employee, #{@employee.username} has been created"
            redirect_to root_path
        else
            render 'new'
        end
    end
    
    def edit
        
    end
    
    def update
        if @employee.update(employee_params)
            flash[:success] = "Employee updated successfully"
            redirect_to employee_path(@employee)
        else
            render 'edit'
        end
    end
    
    def show
    end
    
    def destroy
        @employee.destroy
        flash[:danger] = "Employee has been deleted."
    end
    
    private
        def employee_params
            params.require(:employee).permit(:firstName, :lastName, :username, :email, :ext, :directPhone, :directFax, :dob, :job_title, :anniversary)
        end
        
        def find_employee
            @employee = Employee.find(params[:id])
        end
end
