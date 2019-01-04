class User < ApplicationRecord
    
    before_save :assign_default_group, if: :new_record?
    
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable
         
    private
        def assign_default_group
            self.role = "User"
        end
end
