class Item < ActiveRecord::Base
  belongs_to :booth 
  belongs_to :category 
end
