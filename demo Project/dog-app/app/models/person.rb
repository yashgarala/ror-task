class Person < ApplicationRecord
    validates :name, :email,:password_digest,:phone_num,:state,:city,:pincode,:gender, presence: true
    validates :email_confirmation, presence: true
    validates :start_date, comparison: { less_than: :end_date }
    validate :check_email
    validates :gender, inclusion: { in: %w(male female), message: "%{value} enter valid gender" }
    validates :name, length: { minimum: 2 }
    validates :pincode, length: { is: 6 }
    validates :name, exclusion: { in: %w(akash yash), message: "%{value} is not available." }
    def check_email
        
        errors.add(:email_comfirmation, "Email confirmation is same ") if :email == :email_confirmation
    end
end
