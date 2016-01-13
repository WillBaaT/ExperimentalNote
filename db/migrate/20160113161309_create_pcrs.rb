class CreatePcrs < ActiveRecord::Migration
  def change
    create_table :pcrs do |t|
      t.integer :gene_id
      t.string :fragment_name
      t.integer :product_size
      t.string :final_vector
      t.string :fuse

      t.string :machine
      t.string :enzyme
      t.integer :break
      t.integer :denature
      t.integer :annealing
      t.integer :elongation
      t.integer :polya
      t.integer :cycles

      t.timestamps null: false
    end
  end
end
