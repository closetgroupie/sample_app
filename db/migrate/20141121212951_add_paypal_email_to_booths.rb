class AddPaypalEmailToBooths < ActiveRecord::Migration
  def change
    add_column :booths, :paypal_email, :string
  end
end
