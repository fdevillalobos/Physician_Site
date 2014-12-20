class ChangePhysicianBirthToDate < ActiveRecord::Migration
  def change
    change_column :physicians, :birth, :date
  end
end
