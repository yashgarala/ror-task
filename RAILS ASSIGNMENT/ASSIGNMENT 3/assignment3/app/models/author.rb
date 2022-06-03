class Author < ApplicationRecord
  has_many :books,dependent: :delete_all
  has_one_attached :profile_picture
  validates :name,:address,:profile_picture, presence: true
  validates :profile_picture, aspect_ratio: :is_1_1
  validates :profile_picture, attached: true, content_type: 'image/png'
  validates :profile_picture, attached: true, size: { less_than: 1.megabytes , message: 'is too large' }
end
