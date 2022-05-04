class Physician < ApplicationRecord
    before_create :generate_token

    validates :name, :email, presence: true
    validates :email,uniqueness: true
    has_many :appointments
    has_many :patient, through: :appointments
    
    protected
        def generate_token
            loop do
                random_token = SecureRandom.random_number((1..2**60))
                self.unique_id=random_token
                break random_token unless Physician.exists?(unique_id: random_token)
            end
            
        end
end
