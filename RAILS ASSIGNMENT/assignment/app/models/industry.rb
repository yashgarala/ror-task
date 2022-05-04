class Industry < ApplicationRecord
    before_create :generate_token

    has_and_belongs_to_many :sectors
    validates :name,:email, presence: true
    validates :email,uniqueness: true
    protected
        def generate_token
            loop do
                random_token = SecureRandom.random_number((1..2**60))
                self.registration_number=random_token
                break random_token unless Industry.exists?(registration_number: random_token)
            end
            
        end
end
