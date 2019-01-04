class SecurityPolicy < ApplicationPolicy
  def create?
    user.admin?
  end
  
  def update?
   user.admin?
  end
  
  def destroy?
    user.admin?
  end
  
  def permitted_attributes
    if user.admin?
      [:name, :description]
    end
  end
  
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
