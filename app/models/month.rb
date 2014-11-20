# == Schema Information
#
# Table name: months
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Month < ActiveRecord::Base
  validates_presence_of :name
end
