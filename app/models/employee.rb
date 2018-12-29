class Employee < ApplicationRecord
    before_save{ self.email = email.downcase }
    before_save{ self.firstName = firstName.downcase }
    before_save{ self.lastName = lastName.downcase }
    before_save{ self.username = username.downcase }
    before_save{ self.job_title = job_title.downcase }
    
    validates :username, presence: true,
                            uniqueness: { case_sensitive: false }
    
    VALID_EMAIL_REGEX = /\A[a-zA-Z0-9.!\#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\z/i
    validates :email, presence: true,
                        uniqueness: { case_sensitive: false },
                        length: { maximum: 105 },
                        format: { with: VALID_EMAIL_REGEX }
                        
    # scope :status, -> (status) { where status: status }
    # scope :starts_with, -> (firstName) { where("firstName like ?", "#{firstName}%") }
end
