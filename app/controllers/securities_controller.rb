class SecuritiesController < ApplicationController
    before_action :find_security, only: [:edit, :update, :show, :destroy]
    
    def index
        @securities = Security.paginate(page: params[:page], per_page: 10)
    end
    
    def new
        @security = Security.new
    end
    
    def create
        @security = Security.new(security_params)
        if @security.save
            flash[:success] = "Security added successfully"
            redirect_to securities_path
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @security.update(security_params)
            flash[:success] = "Security updated successfully"
            redirect_to security_path(@security)
        else
            render 'edit'
        end
    end
    
    def show
    end
    
    def destroy
        @security.destroy
        flash[:danger] = "Security Type has been deleted"
        redirect_to securities_path
    end
    
    private
        def security_params
            params.require(:security).permit(:name, :description)
        end
        
        def find_security
            @security = Security.find(params[:id])
        end
end
