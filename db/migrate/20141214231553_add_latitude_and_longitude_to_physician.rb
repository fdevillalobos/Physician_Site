class AddLatitudeAndLongitudeToPhysician < ActiveRecord::Migration
  def change
    add_column :physicians, :latitude, :float
    add_column :physicians, :longitude, :float
  end
end
