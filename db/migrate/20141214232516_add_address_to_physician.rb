class AddAddressToPhysician < ActiveRecord::Migration
  def change
    add_column :physicians, :street, :text
    add_column :physicians, :suite, :text
    add_column :physicians, :city, :text
  end
end
