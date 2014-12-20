class AddSurnameToPhysician < ActiveRecord::Migration
  def change
    add_column :physicians, :surname, :string
  end
end
