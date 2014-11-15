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

FactoryGirl.define do
  factory :physician do
    name "MyString"
email "MyString"
street "MyString"
suite "MyString"
zip_code nil
state nil
country nil
specialty nil
medical_school nil
NPI 1
gender nil
birth_day 1
birth_month "MyString"
birth_year 1
phone 1
residency_hospital "MyString"
affiliation_hospital "MyString"
credential nil
medical_school_grad_year 1
residency_grad_year 1
license_number 1
license_state "MyString"
group_prectice nil
medicare ""
  end

end
