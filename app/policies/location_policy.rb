class LocationPolicy < ApplicationPolicy
  
  def create?
    user.admin?
  end
  
  def update?
    user.moderator? or user.admin?
  end
  
  def permitted_attributes
    if user.admin?
      [:name, :streetAddress, :city, :zipCode, :status, :suite]
    else
      [:streetAddress, :city, :zipCode, :status, :suite]
    end
  end
  
  class Scope < Scope
    def resolve
      if user.admin? or user.moderator?
        scope.all
      else
        scope.where(status: true)
      end
    end
  end
end
