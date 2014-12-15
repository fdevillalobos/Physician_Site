# == Schema Information
#
# Table name: physicians
#
#  id                      :integer          not null, primary key
#  name                    :string(255)
#  email                   :string(255)
#  country_id              :integer
#  created_at              :datetime
#  updated_at              :datetime
#  state_id                :integer
#  medical_school_id       :integer
#  NPI                     :integer
#  gender_id               :integer
#  birth                   :date
#  phone                   :integer
#  residency_hospital_id   :integer
#  affiliation_hospital_id :integer
#  credential_id           :integer
#  group_practice_id       :integer
#  latitude                :float
#  longitude               :float
#  street                  :text
#  suite                   :text
#  city                    :text
#

require 'rails_helper'

RSpec.describe Physician, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
