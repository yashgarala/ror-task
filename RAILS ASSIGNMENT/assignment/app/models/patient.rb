class Patient < ApplicationRecord
    validates :name, :email, presence: true
    validates :email,uniqueness: true
    has_many :appointments, dependent: :destroy
  has_many :physician, through: :appointments, dependent: :destroy
end
