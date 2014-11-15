class CreateMedicalSchools < ActiveRecord::Migration
  def change
    create_table :medical_schools do |t|
      t.string :name
      t.integer :ranking
      t.references :state, index: true

      t.timestamps
    end
  end
end
