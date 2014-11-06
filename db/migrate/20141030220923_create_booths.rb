class CreateBooths < ActiveRecord::Migration
  def change
    create_table :booths do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
    #add_index :booths, [:user_id]
  end
end
