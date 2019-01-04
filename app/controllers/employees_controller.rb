class EmployeesController < ApplicationController
    include Pundit
    
    before_action :find_employee, only: [:edit, :update, :show, :destroy]
    
    def index
<<<<<<< HEAD
        @employees = Employee.where(status: true).paginate(page: params[:page], per_page: 20)
=======
        @employees = policy_scope(Employee).paginate(page: params[:page], per_page: 20)
>>>>>>> ImplementPundit
    end
    
    def index_disabled
        @employees = Employee.where(status: false).paginate(page: params[:page], per_page: 20)
        render 'index'
    end
    
    def new
        @employee = Employee.new
        authorize @employee
    end
    
    def create
        @employee = Employee.new(permitted_attributes(@employee))
        authorize @employee
        if @employee.save
            flash[:success] = "Employee, #{@employee.username} has been created"
            redirect_to root_path
        else
            render 'new'
        end
    end
    
    def edit
        authorize @employee
    end
    
    def update
        authorize @employee
        if @employee.update(permitted_attributes(@employee))
            flash[:success] = "Employee updated successfully"
            redirect_to employee_path(@employee)
        else
            flash[:error] = "Oops Something went wrong try again"
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
        def find_employee
            @employee = Employee.find(params[:id])
        end
end
