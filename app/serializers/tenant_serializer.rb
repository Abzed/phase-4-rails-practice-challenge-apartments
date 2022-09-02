class TenantSerializer < ActiveModel::Serializer
  attributes :name, :age

  # has_many :apartments
  # has_many :leases, through: :apartments
end
