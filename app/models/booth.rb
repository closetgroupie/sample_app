class Booth < ActiveRecord::Base
  belongs_to :user
  has_many :items 
  
  validates :user_id, presence: true
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 25}

end
