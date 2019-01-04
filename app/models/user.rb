class User < ApplicationRecord
    enum role: [:user, :moderator, :admin]
    
    # before_save :assign_default_group, if: :new_record?
    
  # Include default devise modules. Others available are:
  # :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable
         
<<<<<<< HEAD
    private
        def assign_default_group
            self.role = "User"
        end
=======
    # private
    #     def assign_default_group
    #         self.groups << Group.find_by_name("User")
    #     end
>>>>>>> ImplementPundit
end
