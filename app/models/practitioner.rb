class Practitioner < ApplicationRecord
  has_many :kit_orders

  has_secure_password validations: false
  validates :password, presence: true, on: :create
end
