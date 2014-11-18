class RemoveSpecialtyIdFromPhysicians < ActiveRecord::Migration
  def change
    remove_column :physicians, :specialty_id, :integer
  end
end
