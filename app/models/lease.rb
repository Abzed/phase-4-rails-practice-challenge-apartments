class Lease < ApplicationRecord
  belongs_to :apartment
  belongs_to :tenant, through: :apartment
  validates :rent, presence: true
end
