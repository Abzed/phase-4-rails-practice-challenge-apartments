class Tenant < ApplicationRecord
    has_many :apartments
    validates :name, presence: true
    validates :age, presence: true
end
