class Program < ApplicationRecord
    has_and_belongs_to_many :employees
    validates :name, presence: true,
                            uniqueness: { case_sensitive: false }
end
