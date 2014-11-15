class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :email
      t.references :country, index: true

      t.timestamps
    end
  end
end
