class ChangeDataTypeForOrders < ActiveRecord::Migration[6.0]
  def self.up
    change_column :orders, :pay_type, :string
  end
  def self.down
    change_column :orders, :pay_type, :integer
  end
end
