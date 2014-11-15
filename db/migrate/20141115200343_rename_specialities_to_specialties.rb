class RenameSpecialitiesToSpecialties < ActiveRecord::Migration
  # Renames TABLES (in the database), but not the model, controller o views if you need them
  def self.up
    rename_table :specialities, :specialties
  end
  def self.down
    rename_table :specialties, :specialities
  end
end
