# == Schema Information
#
# Table name: medical_schools
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  ranking    :integer
#  state_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class MedicalSchool < ActiveRecord::Base
  has_one :state
  has_many :physicians
  validates_presence_of :name
end
