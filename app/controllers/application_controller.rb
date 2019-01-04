class ApplicationController < ActionController::Base
    
    before_action :authenticate_user!
    #after_action :verify_authorized
    
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    
    private
        def user_not_authorized(exception)
            policy_name = exception.policy.class.to_s.underscore
            
            flash[:error] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
            redirect_to(request.referrer || root_path)
        end
end
