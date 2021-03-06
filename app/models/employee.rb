class Employee < ApplicationRecord
    has_and_belongs_to_many :locations
    has_and_belongs_to_many :securities
    has_and_belongs_to_many :programs
    
    before_save{ self.email = email.downcase }
    before_save{ self.firstName = firstName.downcase }
    before_save{ self.lastName = lastName.downcase }
    before_save{ self.username = username.downcase }
    before_save{ self.job_title = job_title.downcase }
    
    validates :username, presence: true,
                            uniqueness: { case_sensitive: false }
                            
    validates :firstName, presence: true
                            
    validates :lastName, presence: true
                            
    validates :job_title, presence: true
    
    VALID_EMAIL_REGEX = /\A[a-zA-Z0-9.!\#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\z/i
    validates :email, presence: true,
                        uniqueness: { case_sensitive: false },
                        length: { maximum: 105 },
                        format: { with: VALID_EMAIL_REGEX }
end