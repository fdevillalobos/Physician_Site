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

require 'rails_helper'

RSpec.describe MedicalSchool, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
