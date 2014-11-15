# == Schema Information
#
# Table name: credentials
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Credential < ActiveRecord::Base
  has_many :physicians
end
