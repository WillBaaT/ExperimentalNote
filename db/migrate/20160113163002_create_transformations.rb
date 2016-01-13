class CreateTransformations < ActiveRecord::Migration
  def change
    create_table :transformations do |t|
      t.integer :ligation_id
      t.string :bac
      t.integer :ice_time
      t.integer :liq_nitrogen
      t.integer :heat_time
      t.integer :recovery_time
      t.integer :plate_id
      t.integer :incubate

      t.timestamps null: false
    end
  end
end
