# == Schema Information
#
# Table name: genders
#
#  id         :integer          not null, primary key
#  sex        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Gender < ActiveRecord::Base
  has_many :physicians
  validates_presence_of :sex
end
