class CreateZipCodes < ActiveRecord::Migration
  def change
    create_table :zip_codes do |t|
      t.integer :zip
      t.references :state, index: true

      t.timestamps
    end
  end
end
