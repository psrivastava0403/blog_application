class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :price
      t.string :about
      t.string :description
      t.string :launch_date
      t.string :writer

      t.timestamps
    end
  end
end
