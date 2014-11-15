# == Schema Information
#
# Table name: hospitals
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  state_id   :integer
#  ranking    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Hospital < ActiveRecord::Base
  has_one :state
end
