# == Schema Information
#
# Table name: genders
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Gender < ActiveRecord::Base
end
