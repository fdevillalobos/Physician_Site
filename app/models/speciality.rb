# == Schema Information
#
# Table name: specialities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Speciality < ActiveRecord::Base
  has_many :group_practices
end
