# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  iso        :string(255)
#

class Country < ActiveRecord::Base
  has_many :physicians
  has_many :states
  validates_presence_of :name
end
