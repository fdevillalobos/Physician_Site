# == Schema Information
#
# Table name: specialties
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Specialty < ActiveRecord::Base
  has_many :group_practices
  has_and_belongs_to_many :physicians
  validates_presence_of :name
end
