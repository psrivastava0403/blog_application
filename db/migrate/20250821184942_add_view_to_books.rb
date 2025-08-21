class AddViewToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :view, :integer, default: 0
  end
end
