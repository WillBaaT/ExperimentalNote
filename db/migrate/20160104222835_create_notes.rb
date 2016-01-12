class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :gene_name
      t.string :f_primer
      t.string :r_primer
      t.string :f_primer_sq
      t.string :r_primer_sq
      t.string :f_re
      t.string :r_re
      t.string :final_vector
      t.string :product_size
      
      t.timestamps null: false
    end
  end
end
