class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :gene
      t.text :primer
      t.text :pcrp
      
      t.timestamps null: false
    end
  end
end
