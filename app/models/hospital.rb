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
  # One of these work, but not both at the same time... weird. Looking into it.
  # has_many :physicians, :class_name => "Physician", :foreign_key => "residency_hospital_id"
  has_many :physicians, :class_name => "Physician", :foreign_key => "affiliation_hospital_id"
  validates_presence_of :name
end
