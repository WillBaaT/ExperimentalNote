class CreatePrimerPcrships < ActiveRecord::Migration
  def change
    create_table :primer_pcrships do |t|
      t.integer :pcr_id
      t.integer :primer_id

      t.timestamps null: false
    end
  end
end
