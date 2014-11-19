class AddImageTwoToItems < ActiveRecord::Migration
  def change
    add_column :items, :image_two, :string
  end
end
