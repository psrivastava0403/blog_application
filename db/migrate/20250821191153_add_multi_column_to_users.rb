class AddMultiColumnToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :mobile_no, :string
    add_column :users, :address, :text
  end
end
