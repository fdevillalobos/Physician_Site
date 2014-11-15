class AddColumnToPhysicians < ActiveRecord::Migration
  def change
    add_reference :physicians, :state, index: true
  end
end
