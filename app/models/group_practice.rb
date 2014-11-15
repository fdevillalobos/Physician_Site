# == Schema Information
#
# Table name: group_practices
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  group_id      :integer
#  speciality_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class GroupPractice < ActiveRecord::Base
  has_many :specialties
  has_many :physicians
end
