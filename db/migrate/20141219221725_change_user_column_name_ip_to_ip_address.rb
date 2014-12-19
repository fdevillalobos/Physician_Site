class ChangeUserColumnNameIpToIpAddress < ActiveRecord::Migration
  def change
    rename_column :users, :ip, :ip_address
  end
end
