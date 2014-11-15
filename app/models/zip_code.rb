# == Schema Information
#
# Table name: zip_codes
#
#  id         :integer          not null, primary key
#  zip        :integer
#  state_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class ZipCode < ActiveRecord::Base
  belongs_to :state
end
