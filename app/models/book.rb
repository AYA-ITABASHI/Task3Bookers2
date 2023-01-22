class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end
   validates :title, presence: true
   validates :body, length: {maximum: 20}, presence: true
end
