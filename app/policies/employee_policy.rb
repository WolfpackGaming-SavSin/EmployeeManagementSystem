class EmployeePolicy < ApplicationPolicy
  
  def create?
    user.admin?
  end
  
  def update?
    user.moderator? or user.admin?
  end
  
  def permitted_attributes
    if user.admin?
      [:firstName, :lastName, :username, :email, :ext, :directPhone, :directFax, :dob, :job_title, :anniversary, :status, location_ids: [], security_ids: [], program_ids: []]
    else
      [location_ids: [], security_ids: [], program_ids: []]
    end
  end
  
  class Scope < Scope
    def resolve
      scope.where(status: true)
    end
  end
end
