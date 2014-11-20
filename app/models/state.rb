# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class State < ActiveRecord::Base
  has_many :medical_schools
  has_many :hospitals
  has_many :physicians
  validates_presence_of :name
end
