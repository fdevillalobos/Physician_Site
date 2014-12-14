class AddIsoToStates < ActiveRecord::Migration
  def change
    add_column :states, :iso, :string
  end
end
