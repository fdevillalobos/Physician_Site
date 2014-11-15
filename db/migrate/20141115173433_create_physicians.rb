class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :email
      t.string :street
      t.string :suite
      t.references :zip_code, index: true
      t.references :state, index: true
      t.references :country, index: true
      t.references :specialty, index: true
      t.references :medical_school, index: true
      t.integer :NPI
      t.references :gender, index: true
      t.integer :birth_day
      t.string :birth_month
      t.integer :birth_year
      t.integer :phone
      t.string :residency_hospital
      t.string :affiliation_hospital
      t.references :credential, index: true
      t.integer :medical_school_grad_year
      t.integer :residency_grad_year
      t.integer :license_number
      t.string :license_state
      t.references :group_practice, index: true
      t.boolean :medicare

      t.timestamps
    end
  end
end
