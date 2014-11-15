# == Schema Information
#
# Table name: physicians
#
#  id                       :integer          not null, primary key
#  name                     :string(255)
#  email                    :string(255)
#  street                   :string(255)
#  suite                    :string(255)
#  zip_code_id              :integer
#  state_id                 :integer
#  country_id               :integer
#  specialty_id             :integer
#  medical_school_id        :integer
#  NPI                      :integer
#  gender_id                :integer
#  birth_day                :integer
#  birth_month              :string(255)
#  birth_year               :integer
#  phone                    :integer
#  residency_hospital       :string(255)
#  affiliation_hospital     :string(255)
#  credential_id            :integer
#  medical_school_grad_year :integer
#  residency_grad_year      :integer
#  license_number           :integer
#  license_state            :string(255)
#  group_practice_id        :integer
#  medicare                 :boolean
#  created_at               :datetime
#  updated_at               :datetime
#

class Physician < ActiveRecord::Base
  belongs_to :zip_code
  belongs_to :state
  belongs_to :country
  belongs_to :specialty
  belongs_to :medical_school
  belongs_to :gender
  belongs_to :credential
  belongs_to :group_prectice
  has_one :license_state, class_name: "State", foreign_key: "id"
end
