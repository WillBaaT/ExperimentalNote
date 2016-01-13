class CreateLigations < ActiveRecord::Migration
  def change
    create_table :ligations do |t|
      t.integer :pcr_id
      t.float :insert_q
      t.string :vector
      t.float :vector_q
      t.string :ligase
      t.integer :temp
      t.string :during

      t.timestamps null: false
    end
  end
end
