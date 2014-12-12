# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# Create Guest User
user = User.find_or_create_by!(email: 'guest@guest.com') do |user|
  user.password = 'guest1234'
  user.password_confirmation = 'guest1234'
  user.name = 'Guest'
  user.admin = false
end
puts 'CREATED GUEST USER: ' << user.email

# Seed tables
# Country
country_list = ['United States', 'Canada', 'Mexico', 'Argentina']
country_list.each do |cname|
  Country.create( name: cname )
  puts 'Created country: ' << cname
end

# Credentials
credential_list = ['MD', 'DO']

credential_list.each do |cred|
  Credential.create( name: cred )
  puts 'Created credential: ' << cred
end

# Gender
sex_list = ['Male', 'Female', 'Other']
sex_list.each do |gender|
  Gender.create( sex: gender )
  puts 'Created gender: ' << gender
end

# Group Practice
group_list = ['Philly Practice', 'NY Partners', 'Pennsylvania Surgeons']
group_list.each do |group|
  GroupPractice.create( name: group )
  puts 'Created group practice: ' << group
end

# Hospitals
hospital_list = [
    'Penn Presbyterian Medical Center',
    'Eastern Virginia Medical School'
]
hospital_list.each do |hosp|
  Hospital.create( name: hosp )
  puts 'Created Hospital: ' << hosp
end

# Medical School
school_list = [
    'University of Pennsylvania',
    'University of Iowa',
    'The University of Texas'
]
school_list.each do |school|
  MedicalSchool.create( name: school )
  puts 'Created medical school: ' << school
end

# Months
month_list = ['January', 'February', 'March', 'April', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
month_list.each do |month|
  Month.create( name: month )
  puts 'Created month: ' << month
end

# Specialites
specialty_list = [
    'Neurosurgery',
    'Family Medicine',
    'Pediatrician'
]
specialty_list.each do |special|
  Specialty.create( name: special )
  puts 'Created specialty: ' << special
end

# States
state_list = [
    'Alabama',
    'Alaska',
    'Arizona',
    'Arkansas',
    'California',
    'Colorado ',
    'Connecticut',
    'Delaware',
    'Florida',
    'Georgia',
    'Hawaii',
    'Idaho',
    'Illinois',
    'Indiana',
    'Iowa',
    'Kansas',
    'Kentucky',
    'Louisiana',
    'Maine',
    'Maryland',
    'Massachusetts',
    'Michigan',
    'Minnesota',
    'Mississippi',
    'Missouri',
    'Montana',
    'Nebraska',
    'Nevada',
    'New Hampshire',
    'New Jersey',
    'New Mexico',
    'New York',
    'North Carolina',
    'North Dakota',
    'Ohio',
    'Oklahoma',
    'Oregon',
    'Pennsylvania',
    'Rhode Island',
    'South Carolina',
    'South Dakota',
    'Tennessee',
    'Texas',
    'Utah',
    'Vermont',
    'Virginia',
    'Washington',
    'West Virginia',
    'Wisconsin',
    'Wyoming'
]
state_list.each do |state|
  State.create( name: state )
  puts 'Created state: ' << state
end

