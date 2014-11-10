class Booth < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 25}

attr_accessor :name, :user_id

end
