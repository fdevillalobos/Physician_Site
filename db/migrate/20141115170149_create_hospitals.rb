class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.references :state, index: true
      t.integer :ranking

      t.timestamps
    end
  end
end
