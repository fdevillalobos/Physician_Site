class AddColumnsToPhysicians < ActiveRecord::Migration
  def change
    add_reference :physicians, :specialty, index: true
    add_reference :physicians, :medical_school, index: true
    add_column :physicians, :NPI, :integer
    add_reference :physicians, :gender, index: true
    add_column :physicians, :birth, :date
    add_column :physicians, :phone, :integer
    add_reference :physicians, :residency_hospital, index: true
    add_reference :physicians, :affiliation_hospital, index: true
    add_reference :physicians, :credential, index: true
    add_reference :physicians, :group_practice, index: true
  end
end
