class Book < ApplicationRecord
  belongs_to :author
  has_many_attached :cover_photos
  validates :name,:cover_photos, presence: true

  validates :cover_photos, aspect_ratio: :is_1_1
  validates :cover_photos, attached: true, content_type: 'image/png'
  validates :cover_photos, attached: true, size: { less_than: 1.megabytes , message: 'is too large' }
end
