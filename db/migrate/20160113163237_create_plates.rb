class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :antibiotic
      t.integer :quantity
            
      t.timestamps null: false
    end
  end
end
