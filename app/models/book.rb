class Book < ApplicationRecord
  has_one_attached :profile_image
  belongs_to :user

  def get_image
    if profile_image.attached?
      image
    else
      'no_image.jpg'
    end
  end
   validates :title, presence: true
   validates :body, length: {maximum: 200}, presence: true
end
