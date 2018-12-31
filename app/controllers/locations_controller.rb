class LocationsController < ApplicationController
    before_action :find_location, only: [:edit, :update, :show, :destroy]
    
    def index
        @locations = Location.paginate(page: params[:page], per_page: 10)
    end
    
    def new
        @location = Location.new
    end
    
    def create
        @location = Location.new(location_params)
        if @location.save
            flash[:success] = "Location added successfully"
            redirect_to locations_path
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @location.update(location_params)
            flash[:success] = "Location updated successfully"
            redirect_to location_path(@location)
        else
            render 'edit'
        end
    end
    
    def show
    end
    
    def destroy
        @location.destroy
        flash[:danger] = "Location has been deleted."
    end
    
    private
        def location_params
            params.require(:location).permit(:locationName, :streetAddress, :city, :state, :zipCode, :status, :suite)
        end
        
        def find_location
            @location = Location.find(params[:id])
        end
end
