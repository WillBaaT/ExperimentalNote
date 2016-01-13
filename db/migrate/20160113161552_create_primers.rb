class CreatePrimers < ActiveRecord::Migration
  def change
    create_table :primers do |t|
      t.string :f_or_r
      t.integer :length
      t.string :re
      t.string :string
      t.float :tm

      t.timestamps null: false
    end
  end
end
