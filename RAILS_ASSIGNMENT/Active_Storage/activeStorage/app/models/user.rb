class User < ApplicationRecord
  has_one_attached :avatar


  # def tubnail
  #   p avatar.class
  #   avatar.resize(500, 500)
  # end
end
