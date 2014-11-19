class Item < ActiveRecord::Base
  belongs_to :user 
  belongs_to :category 

  mount_uploader :image, ImageUploader
  mount_uploader :image_two, ImageTwoUploader

  validates :user_id, presence: true
  validates :name, presence: true, length: {minimum: 3, maximum: 100}
  validates :description, presence: true, length: {minimum: 10}
  validates :price, presence: true, numericality: true
  validates :image, presence: true
  validate  :image_size

  # Validates the size of an uploaded picture.
    def image_size
      if image.size > 5.megabytes
        errors.add(:image, "should be less than 5MB")
      end
    end


end
