class HomeController < ApplicationController
    def index()
        @employees = Employee.paginate(page: params[:page], per_page: 2)
    end
end
