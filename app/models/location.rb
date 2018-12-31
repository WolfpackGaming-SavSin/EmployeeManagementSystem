class Location < ApplicationRecord
    has_and_belongs_to_many :employees
    validates :locationName, presence: true,
                            uniqueness: { case_sensitive: false }
end
