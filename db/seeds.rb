require 'csv'
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
  user.confirmed_at = DateTime.now
end
puts 'CREATED GUEST USER: ' << user.email

# Seed tables

# Credentials
# Credential.delete_all
credential_list = ['MD', 'DO']
credential_list.each do |cred|
  Credential.where( name: cred ).first_or_create
  # Credential.create( name: cred )
  puts 'Created credential: ' << cred
end

# Gender
# Gender.delete_all
sex_list = ['Male', 'Female', 'Other']
sex_list.each do |gender|
  Gender.where( sex: gender ).first_or_create
  puts 'Created gender: ' << gender
end

# Group Practice
# GroupPractice.delete_all
group_list = ['Philly Practice', 'NY Partners', 'Pennsylvania Surgeons']
group_list.each do |group|
  GroupPractice.where( name: group ).first_or_create
  puts 'Created group practice: ' << group
end

# Hospitals
# Hospital.delete_all
hospital_list = [
    'Penn Presbyterian Medical Center',
    'Eastern Virginia Medical School'
]
hospital_list.each do |hosp|
  Hospital.where( name: hosp ).first_or_create
  puts 'Created Hospital: ' << hosp
end

# Medical School
# MedicalSchool.delete_all
school_list = [
    'University of Pennsylvania',
    'University of Iowa',
    'The University of Texas'
]
school_list.each do |school|
  MedicalSchool.where( name: school ).first_or_create
  puts 'Created medical school: ' << school
end

# Months
# Month.delete_all
month_list = ['January', 'February', 'March', 'April', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
month_list.each do |month|
  Month.where( name: month ).first_or_create
  puts 'Created month: ' << month
end

# Specialites
# Specialty.delete_all
specialty_list = [
    'Neurosurgery',
    'Family Medicine',
    'Pediatrician'
]
specialty_list.each do |special|
  Specialty.where( name: special ).first_or_create
  puts 'Created specialty: ' << special
end



# Countries and States
# Country.delete_all
# connection.execute("ALTER TABLE countries AUTO_INCREMENT = 1")
Country.where(:id=>1,:iso=>"AD",:name=>"Andorra").first_or_create
Country.where(:id=>2,:iso=>"AE",:name=>"United Arab Emirates").first_or_create
Country.where(:id=>3,:iso=>"AF",:name=>"Afghanistan").first_or_create
Country.where(:id=>4,:iso=>"AG",:name=>"Antigua and Barbuda").first_or_create
Country.where(:id=>5,:iso=>"AI",:name=>"Anguilla").first_or_create
Country.where(:id=>6,:iso=>"AL",:name=>"Albania").first_or_create
Country.where(:id=>7,:iso=>"AM",:name=>"Armenia").first_or_create
Country.where(:id=>8,:iso=>"AO",:name=>"Angola").first_or_create
Country.where(:id=>9,:iso=>"AQ",:name=>"Antarctica").first_or_create
Country.where(:id=>10,:iso=>"AR",:name=>"Argentina").first_or_create
Country.where(:id=>11,:iso=>"AS",:name=>"American Samoa").first_or_create
Country.where(:id=>12,:iso=>"AT",:name=>"Austria").first_or_create
Country.where(:id=>13,:iso=>"AU",:name=>"Australia").first_or_create
Country.where(:id=>14,:iso=>"AW",:name=>"Aruba").first_or_create
Country.where(:id=>15,:iso=>"AX",:name=>"Aland Islands").first_or_create
Country.where(:id=>16,:iso=>"AZ",:name=>"Azerbaijan").first_or_create
Country.where(:id=>17,:iso=>"BA",:name=>"Bosnia and Herzegovina").first_or_create
Country.where(:id=>18,:iso=>"BB",:name=>"Barbados").first_or_create
Country.where(:id=>19,:iso=>"BD",:name=>"Bangladesh").first_or_create
Country.where(:id=>20,:iso=>"BE",:name=>"Belgium").first_or_create
Country.where(:id=>21,:iso=>"BF",:name=>"Burkina Faso").first_or_create
Country.where(:id=>22,:iso=>"BG",:name=>"Bulgaria").first_or_create
Country.where(:id=>23,:iso=>"BH",:name=>"Bahrain").first_or_create
Country.where(:id=>24,:iso=>"BI",:name=>"Burundi").first_or_create
Country.where(:id=>25,:iso=>"BJ",:name=>"Benin").first_or_create
Country.where(:id=>26,:iso=>"BL",:name=>"Saint Barthélemy").first_or_create
Country.where(:id=>27,:iso=>"BM",:name=>"Bermuda").first_or_create
Country.where(:id=>28,:iso=>"BN",:name=>"Brunei").first_or_create
Country.where(:id=>29,:iso=>"BO",:name=>"Bolivia").first_or_create
Country.where(:id=>30,:iso=>"BQ",:name=>"Bonaire, Saint Eustatius and Saba ").first_or_create
Country.where(:id=>31,:iso=>"BR",:name=>"Brazil").first_or_create
Country.where(:id=>32,:iso=>"BS",:name=>"Bahamas").first_or_create
Country.where(:id=>33,:iso=>"BT",:name=>"Bhutan").first_or_create
Country.where(:id=>34,:iso=>"BV",:name=>"Bouvet Island").first_or_create
Country.where(:id=>35,:iso=>"BW",:name=>"Botswana").first_or_create
Country.where(:id=>36,:iso=>"BY",:name=>"Belarus").first_or_create
Country.where(:id=>37,:iso=>"BZ",:name=>"Belize").first_or_create
Country.where(:id=>38,:iso=>"CA",:name=>"Canada").first_or_create
Country.where(:id=>39,:iso=>"CC",:name=>"Cocos Islands").first_or_create
Country.where(:id=>40,:iso=>"CD",:name=>"Democratic Republic of the Congo").first_or_create
Country.where(:id=>41,:iso=>"CF",:name=>"Central African Republic").first_or_create
Country.where(:id=>42,:iso=>"CG",:name=>"Republic of the Congo").first_or_create
Country.where(:id=>43,:iso=>"CH",:name=>"Switzerland").first_or_create
Country.where(:id=>44,:iso=>"CI",:name=>"Ivory Coast").first_or_create
Country.where(:id=>45,:iso=>"CK",:name=>"Cook Islands").first_or_create
Country.where(:id=>46,:iso=>"CL",:name=>"Chile").first_or_create
Country.where(:id=>47,:iso=>"CM",:name=>"Cameroon").first_or_create
Country.where(:id=>48,:iso=>"CN",:name=>"China").first_or_create
Country.where(:id=>49,:iso=>"CO",:name=>"Colombia").first_or_create
Country.where(:id=>50,:iso=>"CR",:name=>"Costa Rica").first_or_create
Country.where(:id=>51,:iso=>"CU",:name=>"Cuba").first_or_create
Country.where(:id=>52,:iso=>"CV",:name=>"Cape Verde").first_or_create
Country.where(:id=>53,:iso=>"CW",:name=>"Curaçao").first_or_create
Country.where(:id=>54,:iso=>"CX",:name=>"Christmas Island").first_or_create
Country.where(:id=>55,:iso=>"CY",:name=>"Cyprus").first_or_create
Country.where(:id=>56,:iso=>"CZ",:name=>"Czech Republic").first_or_create
Country.where(:id=>57,:iso=>"DE",:name=>"Germany").first_or_create
Country.where(:id=>58,:iso=>"DJ",:name=>"Djibouti").first_or_create
Country.where(:id=>59,:iso=>"DK",:name=>"Denmark").first_or_create
Country.where(:id=>60,:iso=>"DM",:name=>"Dominica").first_or_create
Country.where(:id=>61,:iso=>"DO",:name=>"Dominican Republic").first_or_create
Country.where(:id=>62,:iso=>"DZ",:name=>"Algeria").first_or_create
Country.where(:id=>63,:iso=>"EC",:name=>"Ecuador").first_or_create
Country.where(:id=>64,:iso=>"EE",:name=>"Estonia").first_or_create
Country.where(:id=>65,:iso=>"EG",:name=>"Egypt").first_or_create
Country.where(:id=>66,:iso=>"EH",:name=>"Western Sahara").first_or_create
Country.where(:id=>67,:iso=>"ER",:name=>"Eritrea").first_or_create
Country.where(:id=>68,:iso=>"ES",:name=>"Spain").first_or_create
Country.where(:id=>69,:iso=>"ET",:name=>"Ethiopia").first_or_create
Country.where(:id=>70,:iso=>"FI",:name=>"Finland").first_or_create
Country.where(:id=>71,:iso=>"FJ",:name=>"Fiji").first_or_create
Country.where(:id=>72,:iso=>"FK",:name=>"Falkland Islands").first_or_create
Country.where(:id=>73,:iso=>"FM",:name=>"Micronesia").first_or_create
Country.where(:id=>74,:iso=>"FO",:name=>"Faroe Islands").first_or_create
Country.where(:id=>75,:iso=>"FR",:name=>"France").first_or_create
Country.where(:id=>76,:iso=>"GA",:name=>"Gabon").first_or_create
Country.where(:id=>77,:iso=>"GB",:name=>"United Kingdom").first_or_create
Country.where(:id=>78,:iso=>"GD",:name=>"Grenada").first_or_create
Country.where(:id=>79,:iso=>"GE",:name=>"Georgia").first_or_create
Country.where(:id=>80,:iso=>"GF",:name=>"French Guiana").first_or_create
Country.where(:id=>81,:iso=>"GG",:name=>"Guernsey").first_or_create
Country.where(:id=>82,:iso=>"GH",:name=>"Ghana").first_or_create
Country.where(:id=>83,:iso=>"GI",:name=>"Gibraltar").first_or_create
Country.where(:id=>84,:iso=>"GL",:name=>"Greenland").first_or_create
Country.where(:id=>85,:iso=>"GM",:name=>"Gambia").first_or_create
Country.where(:id=>86,:iso=>"GN",:name=>"Guinea").first_or_create
Country.where(:id=>87,:iso=>"GP",:name=>"Guadeloupe").first_or_create
Country.where(:id=>88,:iso=>"GQ",:name=>"Equatorial Guinea").first_or_create
Country.where(:id=>89,:iso=>"GR",:name=>"Greece").first_or_create
Country.where(:id=>90,:iso=>"GS",:name=>"South Georgia and the South Sandwich Islands").first_or_create
Country.where(:id=>91,:iso=>"GT",:name=>"Guatemala").first_or_create
Country.where(:id=>92,:iso=>"GU",:name=>"Guam").first_or_create
Country.where(:id=>93,:iso=>"GW",:name=>"Guinea-Bissau").first_or_create
Country.where(:id=>94,:iso=>"GY",:name=>"Guyana").first_or_create
Country.where(:id=>95,:iso=>"HK",:name=>"Hong Kong").first_or_create
Country.where(:id=>96,:iso=>"HM",:name=>"Heard Island and McDonald Islands").first_or_create
Country.where(:id=>97,:iso=>"HN",:name=>"Honduras").first_or_create
Country.where(:id=>98,:iso=>"HR",:name=>"Croatia").first_or_create
Country.where(:id=>99,:iso=>"HT",:name=>"Haiti").first_or_create
Country.where(:id=>100,:iso=>"HU",:name=>"Hungary").first_or_create
Country.where(:id=>101,:iso=>"ID",:name=>"Indonesia").first_or_create
Country.where(:id=>102,:iso=>"IE",:name=>"Ireland").first_or_create
Country.where(:id=>103,:iso=>"IL",:name=>"Israel").first_or_create
Country.where(:id=>104,:iso=>"IM",:name=>"Isle of Man").first_or_create
Country.where(:id=>105,:iso=>"IN",:name=>"India").first_or_create
Country.where(:id=>106,:iso=>"IO",:name=>"British Indian Ocean Territory").first_or_create
Country.where(:id=>107,:iso=>"IQ",:name=>"Iraq").first_or_create
Country.where(:id=>108,:iso=>"IR",:name=>"Iran").first_or_create
Country.where(:id=>109,:iso=>"IS",:name=>"Iceland").first_or_create
Country.where(:id=>110,:iso=>"IT",:name=>"Italy").first_or_create
Country.where(:id=>111,:iso=>"JE",:name=>"Jersey").first_or_create
Country.where(:id=>112,:iso=>"JM",:name=>"Jamaica").first_or_create
Country.where(:id=>113,:iso=>"JO",:name=>"Jordan").first_or_create
Country.where(:id=>114,:iso=>"JP",:name=>"Japan").first_or_create
Country.where(:id=>115,:iso=>"KE",:name=>"Kenya").first_or_create
Country.where(:id=>116,:iso=>"KG",:name=>"Kyrgyzstan").first_or_create
Country.where(:id=>117,:iso=>"KH",:name=>"Cambodia").first_or_create
Country.where(:id=>118,:iso=>"KI",:name=>"Kiribati").first_or_create
Country.where(:id=>119,:iso=>"KM",:name=>"Comoros").first_or_create
Country.where(:id=>120,:iso=>"KN",:name=>"Saint Kitts and Nevis").first_or_create
Country.where(:id=>121,:iso=>"KP",:name=>"North Korea").first_or_create
Country.where(:id=>122,:iso=>"KR",:name=>"South Korea").first_or_create
Country.where(:id=>123,:iso=>"XK",:name=>"Kosovo").first_or_create
Country.where(:id=>124,:iso=>"KW",:name=>"Kuwait").first_or_create
Country.where(:id=>125,:iso=>"KY",:name=>"Cayman Islands").first_or_create
Country.where(:id=>126,:iso=>"KZ",:name=>"Kazakhstan").first_or_create
Country.where(:id=>127,:iso=>"LA",:name=>"Laos").first_or_create
Country.where(:id=>128,:iso=>"LB",:name=>"Lebanon").first_or_create
Country.where(:id=>129,:iso=>"LC",:name=>"Saint Lucia").first_or_create
Country.where(:id=>130,:iso=>"LI",:name=>"Liechtenstein").first_or_create
Country.where(:id=>131,:iso=>"LK",:name=>"Sri Lanka").first_or_create
Country.where(:id=>132,:iso=>"LR",:name=>"Liberia").first_or_create
Country.where(:id=>133,:iso=>"LS",:name=>"Lesotho").first_or_create
Country.where(:id=>134,:iso=>"LT",:name=>"Lithuania").first_or_create
Country.where(:id=>135,:iso=>"LU",:name=>"Luxembourg").first_or_create
Country.where(:id=>136,:iso=>"LV",:name=>"Latvia").first_or_create
Country.where(:id=>137,:iso=>"LY",:name=>"Libya").first_or_create
Country.where(:id=>138,:iso=>"MA",:name=>"Morocco").first_or_create
Country.where(:id=>139,:iso=>"MC",:name=>"Monaco").first_or_create
Country.where(:id=>140,:iso=>"MD",:name=>"Moldova").first_or_create
Country.where(:id=>141,:iso=>"ME",:name=>"Montenegro").first_or_create
Country.where(:id=>142,:iso=>"MF",:name=>"Saint Martin").first_or_create
Country.where(:id=>143,:iso=>"MG",:name=>"Madagascar").first_or_create
Country.where(:id=>144,:iso=>"MH",:name=>"Marshall Islands").first_or_create
Country.where(:id=>145,:iso=>"MK",:name=>"Macedonia").first_or_create
Country.where(:id=>146,:iso=>"ML",:name=>"Mali").first_or_create
Country.where(:id=>147,:iso=>"MM",:name=>"Myanmar").first_or_create
Country.where(:id=>148,:iso=>"MN",:name=>"Mongolia").first_or_create
Country.where(:id=>149,:iso=>"MO",:name=>"Macao").first_or_create
Country.where(:id=>150,:iso=>"MP",:name=>"Northern Mariana Islands").first_or_create
Country.where(:id=>151,:iso=>"MQ",:name=>"Martinique").first_or_create
Country.where(:id=>152,:iso=>"MR",:name=>"Mauritania").first_or_create
Country.where(:id=>153,:iso=>"MS",:name=>"Montserrat").first_or_create
Country.where(:id=>154,:iso=>"MT",:name=>"Malta").first_or_create
Country.where(:id=>155,:iso=>"MU",:name=>"Mauritius").first_or_create
Country.where(:id=>156,:iso=>"MV",:name=>"Maldives").first_or_create
Country.where(:id=>157,:iso=>"MW",:name=>"Malawi").first_or_create
Country.where(:id=>158,:iso=>"MX",:name=>"Mexico").first_or_create
Country.where(:id=>159,:iso=>"MY",:name=>"Malaysia").first_or_create
Country.where(:id=>160,:iso=>"MZ",:name=>"Mozambique").first_or_create
Country.where(:id=>161,:iso=>"NA",:name=>"Namibia").first_or_create
Country.where(:id=>162,:iso=>"NC",:name=>"New Caledonia").first_or_create
Country.where(:id=>163,:iso=>"NE",:name=>"Niger").first_or_create
Country.where(:id=>164,:iso=>"NF",:name=>"Norfolk Island").first_or_create
Country.where(:id=>165,:iso=>"NG",:name=>"Nigeria").first_or_create
Country.where(:id=>166,:iso=>"NI",:name=>"Nicaragua").first_or_create
Country.where(:id=>167,:iso=>"NL",:name=>"Netherlands").first_or_create
Country.where(:id=>168,:iso=>"NO",:name=>"Norway").first_or_create
Country.where(:id=>169,:iso=>"NP",:name=>"Nepal").first_or_create
Country.where(:id=>170,:iso=>"NR",:name=>"Nauru").first_or_create
Country.where(:id=>171,:iso=>"NU",:name=>"Niue").first_or_create
Country.where(:id=>172,:iso=>"NZ",:name=>"New Zealand").first_or_create
Country.where(:id=>173,:iso=>"OM",:name=>"Oman").first_or_create
Country.where(:id=>174,:iso=>"PA",:name=>"Panama").first_or_create
Country.where(:id=>175,:iso=>"PE",:name=>"Peru").first_or_create
Country.where(:id=>176,:iso=>"PF",:name=>"French Polynesia").first_or_create
Country.where(:id=>177,:iso=>"PG",:name=>"Papua New Guinea").first_or_create
Country.where(:id=>178,:iso=>"PH",:name=>"Philippines").first_or_create
Country.where(:id=>179,:iso=>"PK",:name=>"Pakistan").first_or_create
Country.where(:id=>180,:iso=>"PL",:name=>"Poland").first_or_create
Country.where(:id=>181,:iso=>"PM",:name=>"Saint Pierre and Miquelon").first_or_create
Country.where(:id=>182,:iso=>"PN",:name=>"Pitcairn").first_or_create
Country.where(:id=>183,:iso=>"PR",:name=>"Puerto Rico").first_or_create
Country.where(:id=>184,:iso=>"PS",:name=>"Palestinian Territory").first_or_create
Country.where(:id=>185,:iso=>"PT",:name=>"Portugal").first_or_create
Country.where(:id=>186,:iso=>"PW",:name=>"Palau").first_or_create
Country.where(:id=>187,:iso=>"PY",:name=>"Paraguay").first_or_create
Country.where(:id=>188,:iso=>"QA",:name=>"Qatar").first_or_create
Country.where(:id=>189,:iso=>"RE",:name=>"Reunion").first_or_create
Country.where(:id=>190,:iso=>"RO",:name=>"Romania").first_or_create
Country.where(:id=>191,:iso=>"RS",:name=>"Serbia").first_or_create
Country.where(:id=>192,:iso=>"RU",:name=>"Russia").first_or_create
Country.where(:id=>193,:iso=>"RW",:name=>"Rwanda").first_or_create
Country.where(:id=>194,:iso=>"SA",:name=>"Saudi Arabia").first_or_create
Country.where(:id=>195,:iso=>"SB",:name=>"Solomon Islands").first_or_create
Country.where(:id=>196,:iso=>"SC",:name=>"Seychelles").first_or_create
Country.where(:id=>197,:iso=>"SD",:name=>"Sudan").first_or_create
Country.where(:id=>198,:iso=>"SE",:name=>"Sweden").first_or_create
Country.where(:id=>199,:iso=>"SG",:name=>"Singapore").first_or_create
Country.where(:id=>200,:iso=>"SH",:name=>"Saint Helena").first_or_create
Country.where(:id=>201,:iso=>"SI",:name=>"Slovenia").first_or_create
Country.where(:id=>202,:iso=>"SJ",:name=>"Svalbard and Jan Mayen").first_or_create
Country.where(:id=>203,:iso=>"SK",:name=>"Slovakia").first_or_create
Country.where(:id=>204,:iso=>"SL",:name=>"Sierra Leone").first_or_create
Country.where(:id=>205,:iso=>"SM",:name=>"San Marino").first_or_create
Country.where(:id=>206,:iso=>"SN",:name=>"Senegal").first_or_create
Country.where(:id=>207,:iso=>"SO",:name=>"Somalia").first_or_create
Country.where(:id=>208,:iso=>"SR",:name=>"Suriname").first_or_create
Country.where(:id=>209,:iso=>"ST",:name=>"Sao Tome and Principe").first_or_create
Country.where(:id=>210,:iso=>"SV",:name=>"El Salvador").first_or_create
Country.where(:id=>211,:iso=>"SX",:name=>"Sint Maarten").first_or_create
Country.where(:id=>212,:iso=>"SY",:name=>"Syria").first_or_create
Country.where(:id=>213,:iso=>"SZ",:name=>"Swaziland").first_or_create
Country.where(:id=>214,:iso=>"TC",:name=>"Turks and Caicos Islands").first_or_create
Country.where(:id=>215,:iso=>"TD",:name=>"Chad").first_or_create
Country.where(:id=>216,:iso=>"TF",:name=>"French Southern Territories").first_or_create
Country.where(:id=>217,:iso=>"TG",:name=>"Togo").first_or_create
Country.where(:id=>218,:iso=>"TH",:name=>"Thailand").first_or_create
Country.where(:id=>219,:iso=>"TJ",:name=>"Tajikistan").first_or_create
Country.where(:id=>220,:iso=>"TK",:name=>"Tokelau").first_or_create
Country.where(:id=>221,:iso=>"TL",:name=>"East Timor").first_or_create
Country.where(:id=>222,:iso=>"TM",:name=>"Turkmenistan").first_or_create
Country.where(:id=>223,:iso=>"TN",:name=>"Tunisia").first_or_create
Country.where(:id=>224,:iso=>"TO",:name=>"Tonga").first_or_create
Country.where(:id=>225,:iso=>"TR",:name=>"Turkey").first_or_create
Country.where(:id=>226,:iso=>"TT",:name=>"Trinidad and Tobago").first_or_create
Country.where(:id=>227,:iso=>"TV",:name=>"Tuvalu").first_or_create
Country.where(:id=>228,:iso=>"TW",:name=>"Taiwan").first_or_create
Country.where(:id=>229,:iso=>"TZ",:name=>"Tanzania").first_or_create
Country.where(:id=>230,:iso=>"UA",:name=>"Ukraine").first_or_create
Country.where(:id=>231,:iso=>"UG",:name=>"Uganda").first_or_create
Country.where(:id=>232,:iso=>"UM",:name=>"United States Minor Outlying Islands").first_or_create
Country.where(:id=>233,:iso=>"US",:name=>"United States").first_or_create
Country.where(:id=>234,:iso=>"UY",:name=>"Uruguay").first_or_create
Country.where(:id=>235,:iso=>"UZ",:name=>"Uzbekistan").first_or_create
Country.where(:id=>236,:iso=>"VA",:name=>"Vatican").first_or_create
Country.where(:id=>237,:iso=>"VC",:name=>"Saint Vincent and the Grenadines").first_or_create
Country.where(:id=>238,:iso=>"VE",:name=>"Venezuela").first_or_create
Country.where(:id=>239,:iso=>"VG",:name=>"British Virgin Islands").first_or_create
Country.where(:id=>240,:iso=>"VI",:name=>"U.S. Virgin Islands").first_or_create
Country.where(:id=>241,:iso=>"VN",:name=>"Vietnam").first_or_create
Country.where(:id=>242,:iso=>"VU",:name=>"Vanuatu").first_or_create
Country.where(:id=>243,:iso=>"WF",:name=>"Wallis and Futuna").first_or_create
Country.where(:id=>244,:iso=>"WS",:name=>"Samoa").first_or_create
Country.where(:id=>245,:iso=>"YE",:name=>"Yemen").first_or_create
Country.where(:id=>246,:iso=>"YT",:name=>"Mayotte").first_or_create
Country.where(:id=>247,:iso=>"ZA",:name=>"South Africa").first_or_create
Country.where(:id=>248,:iso=>"ZM",:name=>"Zambia").first_or_create
Country.where(:id=>249,:iso=>"ZW",:name=>"Zimbabwe").first_or_create
Country.where(:id=>250,:iso=>"CS",:name=>"Serbia and Montenegro").first_or_create
Country.where(:id=>251,:iso=>"AN",:name=>"Netherlands Antilles").first_or_create
puts "Created all countries"
# State.delete_all
# connection.execute("ALTER TABLE states AUTO_INCREMENT=1").first_or_create
State.where(:id=>1,:iso=>"06",:name=>"Parròquia de Sant Julià de Lòria",:country_id=>1).first_or_create
State.where(:id=>2,:iso=>"05",:name=>"Parròquia d'Ordino",:country_id=>1).first_or_create
State.where(:id=>3,:iso=>"04",:name=>"Parròquia de la Massana",:country_id=>1).first_or_create
State.where(:id=>4,:iso=>"03",:name=>"Parròquia d'Encamp",:country_id=>1).first_or_create
State.where(:id=>5,:iso=>"02",:name=>"Parròquia de Canillo",:country_id=>1).first_or_create
State.where(:id=>6,:iso=>"07",:name=>"Parròquia d'Andorra la Vella",:country_id=>1).first_or_create
State.where(:id=>7,:iso=>"08",:name=>"Parròquia d'Escaldes-Engordany",:country_id=>1).first_or_create
State.where(:id=>8,:iso=>"07",:name=>"Umm al Qaywayn",:country_id=>2).first_or_create
State.where(:id=>9,:iso=>"05",:name=>"Raʼs al Khaymah",:country_id=>2).first_or_create
State.where(:id=>10,:iso=>"03",:name=>"Dubayy",:country_id=>2).first_or_create
State.where(:id=>11,:iso=>"06",:name=>"Ash Shāriqah",:country_id=>2).first_or_create
State.where(:id=>12,:iso=>"04",:name=>"Al Fujayrah",:country_id=>2).first_or_create
State.where(:id=>13,:iso=>"02",:name=>"Ajman",:country_id=>2).first_or_create
State.where(:id=>14,:iso=>"01",:name=>"Abū Z̧aby",:country_id=>2).first_or_create
State.where(:id=>15,:iso=>"28",:name=>"Zabul",:country_id=>3).first_or_create
State.where(:id=>16,:iso=>"27",:name=>"Vardak",:country_id=>3).first_or_create
State.where(:id=>17,:iso=>"26",:name=>"Takhār",:country_id=>3).first_or_create
State.where(:id=>18,:iso=>"33",:name=>"Sar-e Pol",:country_id=>3).first_or_create
State.where(:id=>19,:iso=>"32",:name=>"Samangān",:country_id=>3).first_or_create
State.where(:id=>20,:iso=>"40",:name=>"Parvān",:country_id=>3).first_or_create
State.where(:id=>21,:iso=>"29",:name=>"Paktīkā",:country_id=>3).first_or_create
State.where(:id=>22,:iso=>"36",:name=>"Paktia",:country_id=>3).first_or_create
State.where(:id=>23,:iso=>"39",:name=>"Orūzgān",:country_id=>3).first_or_create
State.where(:id=>24,:iso=>"19",:name=>"Nīmrūz",:country_id=>3).first_or_create
State.where(:id=>25,:iso=>"18",:name=>"Nangarhār",:country_id=>3).first_or_create
State.where(:id=>26,:iso=>"17",:name=>"Lowgar",:country_id=>3).first_or_create
State.where(:id=>27,:iso=>"35",:name=>"Laghmān",:country_id=>3).first_or_create
State.where(:id=>28,:iso=>"24",:name=>"Kunduz",:country_id=>3).first_or_create
State.where(:id=>29,:iso=>"34",:name=>"Konar",:country_id=>3).first_or_create
State.where(:id=>30,:iso=>"14",:name=>"Kāpīsā",:country_id=>3).first_or_create
State.where(:id=>31,:iso=>"23",:name=>"Kandahār",:country_id=>3).first_or_create
State.where(:id=>32,:iso=>"13",:name=>"Kabul",:country_id=>3).first_or_create
State.where(:id=>33,:iso=>"31",:name=>"Jowzjān",:country_id=>3).first_or_create
State.where(:id=>34,:iso=>"11",:name=>"Herat",:country_id=>3).first_or_create
State.where(:id=>35,:iso=>"10",:name=>"Helmand",:country_id=>3).first_or_create
State.where(:id=>36,:iso=>"09",:name=>"Ghowr",:country_id=>3).first_or_create
State.where(:id=>37,:iso=>"08",:name=>"Ghaznī",:country_id=>3).first_or_create
State.where(:id=>38,:iso=>"07",:name=>"Faryab",:country_id=>3).first_or_create
State.where(:id=>39,:iso=>"06",:name=>"Farah",:country_id=>3).first_or_create
State.where(:id=>40,:iso=>"05",:name=>"Bāmīān",:country_id=>3).first_or_create
State.where(:id=>41,:iso=>"30",:name=>"Balkh",:country_id=>3).first_or_create
State.where(:id=>42,:iso=>"03",:name=>"Baghlān",:country_id=>3).first_or_create
State.where(:id=>43,:iso=>"02",:name=>"Badghis",:country_id=>3).first_or_create
State.where(:id=>44,:iso=>"01",:name=>"Badakhshan",:country_id=>3).first_or_create
State.where(:id=>45,:iso=>"37",:name=>"Khowst",:country_id=>3).first_or_create
State.where(:id=>46,:iso=>"38",:name=>"Nūrestān",:country_id=>3).first_or_create
State.where(:id=>47,:iso=>"41",:name=>"Wilāyat-e Dāykundī",:country_id=>3).first_or_create
State.where(:id=>48,:iso=>"42",:name=>"Panjshir",:country_id=>3).first_or_create
State.where(:id=>49,:iso=>"08",:name=>"Saint Philip",:country_id=>4).first_or_create
State.where(:id=>50,:iso=>"07",:name=>"Saint Peter",:country_id=>4).first_or_create
State.where(:id=>51,:iso=>"06",:name=>"Saint Paul",:country_id=>4).first_or_create
State.where(:id=>52,:iso=>"05",:name=>"Saint Mary",:country_id=>4).first_or_create
State.where(:id=>53,:iso=>"04",:name=>"Saint John",:country_id=>4).first_or_create
State.where(:id=>54,:iso=>"03",:name=>"Saint George",:country_id=>4).first_or_create
State.where(:id=>55,:iso=>"09",:name=>"Redonda",:country_id=>4).first_or_create
State.where(:id=>56,:iso=>"01",:name=>"Barbuda",:country_id=>4).first_or_create
State.where(:id=>57,:iso=>"40",:name=>"Berat",:country_id=>6).first_or_create
State.where(:id=>58,:iso=>"41",:name=>"Dibër",:country_id=>6).first_or_create
State.where(:id=>59,:iso=>"43",:name=>"Elbasan",:country_id=>6).first_or_create
State.where(:id=>60,:iso=>"45",:name=>"Gjirokastër",:country_id=>6).first_or_create
State.where(:id=>61,:iso=>"46",:name=>"Korçë",:country_id=>6).first_or_create
State.where(:id=>62,:iso=>"47",:name=>"Kukës",:country_id=>6).first_or_create
State.where(:id=>63,:iso=>"42",:name=>"Durrës",:country_id=>6).first_or_create
State.where(:id=>64,:iso=>"44",:name=>"Fier",:country_id=>6).first_or_create
State.where(:id=>65,:iso=>"48",:name=>"Lezhë",:country_id=>6).first_or_create
State.where(:id=>66,:iso=>"49",:name=>"Shkodër",:country_id=>6).first_or_create
State.where(:id=>67,:iso=>"50",:name=>"Tiranë",:country_id=>6).first_or_create
State.where(:id=>68,:iso=>"51",:name=>"Vlorë",:country_id=>6).first_or_create
State.where(:id=>69,:iso=>"02",:name=>"Ararat",:country_id=>7).first_or_create
State.where(:id=>70,:iso=>"08",:name=>"Syunikʼ",:country_id=>7).first_or_create
State.where(:id=>71,:iso=>"10",:name=>"Vayotsʼ Dzor",:country_id=>7).first_or_create
State.where(:id=>72,:iso=>"11",:name=>"Yerevan",:country_id=>7).first_or_create
State.where(:id=>73,:iso=>"01",:name=>"Aragatsotn",:country_id=>7).first_or_create
State.where(:id=>74,:iso=>"03",:name=>"Armavir",:country_id=>7).first_or_create
State.where(:id=>75,:iso=>"04",:name=>"Gegharkʼunikʼ",:country_id=>7).first_or_create
State.where(:id=>76,:iso=>"05",:name=>"Kotaykʼ",:country_id=>7).first_or_create
State.where(:id=>77,:iso=>"06",:name=>"Lorri",:country_id=>7).first_or_create
State.where(:id=>78,:iso=>"07",:name=>"Shirak",:country_id=>7).first_or_create
State.where(:id=>79,:iso=>"09",:name=>"Tavush",:country_id=>7).first_or_create
State.where(:id=>80,:iso=>"18",:name=>"Lunda Sul",:country_id=>8).first_or_create
State.where(:id=>81,:iso=>"17",:name=>"Lunda Norte",:country_id=>8).first_or_create
State.where(:id=>82,:iso=>"14",:name=>"Moxico",:country_id=>8).first_or_create
State.where(:id=>83,:iso=>"04",:name=>"Cuando Cubango",:country_id=>8).first_or_create
State.where(:id=>84,:iso=>"16",:name=>"Zaire",:country_id=>8).first_or_create
State.where(:id=>85,:iso=>"15",:name=>"Uíge",:country_id=>8).first_or_create
State.where(:id=>86,:iso=>"12",:name=>"Malanje",:country_id=>8).first_or_create
State.where(:id=>87,:iso=>"20",:name=>"Luanda",:country_id=>8).first_or_create
State.where(:id=>88,:iso=>"05",:name=>"Cuanza Norte",:country_id=>8).first_or_create
State.where(:id=>89,:iso=>"03",:name=>"Cabinda",:country_id=>8).first_or_create
State.where(:id=>90,:iso=>"19",:name=>"Bengo",:country_id=>8).first_or_create
State.where(:id=>91,:iso=>"13",:name=>"Namibe",:country_id=>8).first_or_create
State.where(:id=>92,:iso=>"09",:name=>"Huíla",:country_id=>8).first_or_create
State.where(:id=>93,:iso=>"08",:name=>"Huambo",:country_id=>8).first_or_create
State.where(:id=>94,:iso=>"07",:name=>"Cunene",:country_id=>8).first_or_create
State.where(:id=>95,:iso=>"06",:name=>"Cuanza Sul",:country_id=>8).first_or_create
State.where(:id=>96,:iso=>"02",:name=>"Bié",:country_id=>8).first_or_create
State.where(:id=>97,:iso=>"01",:name=>"Benguela",:country_id=>8).first_or_create
State.where(:id=>98,:iso=>"14",:name=>"Misiones",:country_id=>10).first_or_create
State.where(:id=>99,:iso=>"09",:name=>"Formosa",:country_id=>10).first_or_create
State.where(:id=>100,:iso=>"07",:name=>"Buenos Aires F.D.",:country_id=>10).first_or_create
State.where(:id=>101,:iso=>"08",:name=>"Entre Ríos",:country_id=>10).first_or_create
State.where(:id=>102,:iso=>"06",:name=>"Corrientes",:country_id=>10).first_or_create
State.where(:id=>103,:iso=>"01",:name=>"Buenos Aires",:country_id=>10).first_or_create
State.where(:id=>104,:iso=>"24",:name=>"Tucumán",:country_id=>10).first_or_create
State.where(:id=>105,:iso=>"23",:name=>"Tierra del Fuego",:country_id=>10).first_or_create
State.where(:id=>106,:iso=>"22",:name=>"Santiago del Estero",:country_id=>10).first_or_create
State.where(:id=>107,:iso=>"21",:name=>"Santa Fe",:country_id=>10).first_or_create
State.where(:id=>108,:iso=>"20",:name=>"Santa Cruz",:country_id=>10).first_or_create
State.where(:id=>109,:iso=>"19",:name=>"San Luis",:country_id=>10).first_or_create
State.where(:id=>110,:iso=>"18",:name=>"San Juan",:country_id=>10).first_or_create
State.where(:id=>111,:iso=>"17",:name=>"Salta",:country_id=>10).first_or_create
State.where(:id=>112,:iso=>"16",:name=>"Río Negro",:country_id=>10).first_or_create
State.where(:id=>113,:iso=>"15",:name=>"Neuquén",:country_id=>10).first_or_create
State.where(:id=>114,:iso=>"13",:name=>"Mendoza",:country_id=>10).first_or_create
State.where(:id=>115,:iso=>"12",:name=>"La Rioja",:country_id=>10).first_or_create
State.where(:id=>116,:iso=>"11",:name=>"La Pampa",:country_id=>10).first_or_create
State.where(:id=>117,:iso=>"10",:name=>"Jujuy",:country_id=>10).first_or_create
State.where(:id=>118,:iso=>"05",:name=>"Córdoba",:country_id=>10).first_or_create
State.where(:id=>119,:iso=>"04",:name=>"Chubut",:country_id=>10).first_or_create
State.where(:id=>120,:iso=>"03",:name=>"Chaco",:country_id=>10).first_or_create
State.where(:id=>121,:iso=>"02",:name=>"Catamarca",:country_id=>10).first_or_create
State.where(:id=>122,:iso=>"050",:name=>"Western District",:country_id=>11).first_or_create
State.where(:id=>123,:iso=>"030",:name=>"Rose Island (inactive)",:country_id=>11).first_or_create
State.where(:id=>124,:iso=>"040",:name=>"Swains Island",:country_id=>11).first_or_create
State.where(:id=>125,:iso=>"010",:name=>"Eastern District",:country_id=>11).first_or_create
State.where(:id=>126,:iso=>"020",:name=>"Manu'a",:country_id=>11).first_or_create
State.where(:id=>127,:iso=>"09",:name=>"Vienna",:country_id=>12).first_or_create
State.where(:id=>128,:iso=>"08",:name=>"Vorarlberg",:country_id=>12).first_or_create
State.where(:id=>129,:iso=>"07",:name=>"Tyrol",:country_id=>12).first_or_create
State.where(:id=>130,:iso=>"06",:name=>"Styria",:country_id=>12).first_or_create
State.where(:id=>131,:iso=>"05",:name=>"Salzburg",:country_id=>12).first_or_create
State.where(:id=>132,:iso=>"04",:name=>"Upper Austria",:country_id=>12).first_or_create
State.where(:id=>133,:iso=>"03",:name=>"Lower Austria",:country_id=>12).first_or_create
State.where(:id=>134,:iso=>"02",:name=>"Carinthia",:country_id=>12).first_or_create
State.where(:id=>135,:iso=>"01",:name=>"Burgenland",:country_id=>12).first_or_create
State.where(:id=>136,:iso=>"08",:name=>"Western Australia",:country_id=>13).first_or_create
State.where(:id=>137,:iso=>"05",:name=>"South Australia",:country_id=>13).first_or_create
State.where(:id=>138,:iso=>"03",:name=>"Northern Territory",:country_id=>13).first_or_create
State.where(:id=>139,:iso=>"07",:name=>"Victoria",:country_id=>13).first_or_create
State.where(:id=>140,:iso=>"06",:name=>"Tasmania",:country_id=>13).first_or_create
State.where(:id=>141,:iso=>"04",:name=>"Queensland",:country_id=>13).first_or_create
State.where(:id=>142,:iso=>"02",:name=>"New South Wales",:country_id=>13).first_or_create
State.where(:id=>143,:iso=>"01",:name=>"Australian Capital Territory",:country_id=>13).first_or_create
State.where(:id=>144,:iso=>"941",:name=>"Vårdö",:country_id=>15).first_or_create
State.where(:id=>145,:iso=>"771",:name=>"Sund",:country_id=>15).first_or_create
State.where(:id=>146,:iso=>"766",:name=>"Sottunga",:country_id=>15).first_or_create
State.where(:id=>147,:iso=>"736",:name=>"Saltvik",:country_id=>15).first_or_create
State.where(:id=>148,:iso=>"438",:name=>"Lumparland",:country_id=>15).first_or_create
State.where(:id=>149,:iso=>"417",:name=>"Lemland",:country_id=>15).first_or_create
State.where(:id=>150,:iso=>"295",:name=>"Kumlinge",:country_id=>15).first_or_create
State.where(:id=>151,:iso=>"318",:name=>"Kökar",:country_id=>15).first_or_create
State.where(:id=>152,:iso=>"062",:name=>"Föglö",:country_id=>15).first_or_create
State.where(:id=>153,:iso=>"035",:name=>"Brändö",:country_id=>15).first_or_create
State.where(:id=>154,:iso=>"478",:name=>"Mariehamn",:country_id=>15).first_or_create
State.where(:id=>155,:iso=>"170",:name=>"Jomala",:country_id=>15).first_or_create
State.where(:id=>156,:iso=>"076",:name=>"Hammarland",:country_id=>15).first_or_create
State.where(:id=>157,:iso=>"065",:name=>"Geta",:country_id=>15).first_or_create
State.where(:id=>158,:iso=>"060",:name=>"Finström",:country_id=>15).first_or_create
State.where(:id=>159,:iso=>"043",:name=>"Eckerö",:country_id=>15).first_or_create
State.where(:id=>160,:iso=>"69",:name=>"Zǝngilan",:country_id=>16).first_or_create
State.where(:id=>161,:iso=>"66",:name=>"Yardımlı",:country_id=>16).first_or_create
State.where(:id=>162,:iso=>"55",:name=>"Şuşa",:country_id=>16).first_or_create
State.where(:id=>163,:iso=>"49",:name=>"Salyan",:country_id=>16).first_or_create
State.where(:id=>164,:iso=>"46",:name=>"Sabirabad",:country_id=>16).first_or_create
State.where(:id=>165,:iso=>"45",:name=>"Saatlı",:country_id=>16).first_or_create
State.where(:id=>166,:iso=>"36",:name=>"Neftçala",:country_id=>16).first_or_create
State.where(:id=>167,:iso=>"35",:name=>"Nakhichevan",:country_id=>16).first_or_create
State.where(:id=>168,:iso=>"32",:name=>"Masallı",:country_id=>16).first_or_create
State.where(:id=>169,:iso=>"31",:name=>"Lerik",:country_id=>16).first_or_create
State.where(:id=>170,:iso=>"29",:name=>"Lənkəran",:country_id=>16).first_or_create
State.where(:id=>171,:iso=>"28",:name=>"Laçın",:country_id=>16).first_or_create
State.where(:id=>172,:iso=>"43",:name=>"Qubadlı",:country_id=>16).first_or_create
State.where(:id=>173,:iso=>"24",:name=>"İmişli",:country_id=>16).first_or_create
State.where(:id=>174,:iso=>"18",:name=>"Füzuli",:country_id=>16).first_or_create
State.where(:id=>175,:iso=>"14",:name=>"Cǝbrayıl",:country_id=>16).first_or_create
State.where(:id=>176,:iso=>"15",:name=>"Cəlilabad",:country_id=>16).first_or_create
State.where(:id=>177,:iso=>"08",:name=>"Astara",:country_id=>16).first_or_create
State.where(:id=>178,:iso=>"64",:name=>"Xocalı",:country_id=>16).first_or_create
State.where(:id=>179,:iso=>"02",:name=>"Ağcabǝdi",:country_id=>16).first_or_create
State.where(:id=>180,:iso=>"03",:name=>"Ağdam",:country_id=>16).first_or_create
State.where(:id=>181,:iso=>"07",:name=>"Əli Bayramli",:country_id=>16).first_or_create
State.where(:id=>182,:iso=>"30",:name=>"Lənkəran Şəhəri",:country_id=>16).first_or_create
State.where(:id=>183,:iso=>"56",:name=>"Şuşa Şəhəri",:country_id=>16).first_or_create
State.where(:id=>184,:iso=>"57",:name=>"Tǝrtǝr",:country_id=>16).first_or_create
State.where(:id=>185,:iso=>"61",:name=>"Xankǝndi",:country_id=>16).first_or_create
State.where(:id=>186,:iso=>"65",:name=>"Xocavǝnd",:country_id=>16).first_or_create
State.where(:id=>187,:iso=>"71",:name=>"Zərdab",:country_id=>16).first_or_create
State.where(:id=>188,:iso=>"70",:name=>"Zaqatala",:country_id=>16).first_or_create
State.where(:id=>189,:iso=>"67",:name=>"Yevlax",:country_id=>16).first_or_create
State.where(:id=>190,:iso=>"37",:name=>"Oğuz",:country_id=>16).first_or_create
State.where(:id=>191,:iso=>"59",:name=>"Ucar",:country_id=>16).first_or_create
State.where(:id=>192,:iso=>"58",:name=>"Tovuz",:country_id=>16).first_or_create
State.where(:id=>193,:iso=>"50",:name=>"Şamaxı",:country_id=>16).first_or_create
State.where(:id=>194,:iso=>"47",:name=>"Şǝki",:country_id=>16).first_or_create
State.where(:id=>195,:iso=>"51",:name=>"Şǝmkir",:country_id=>16).first_or_create
State.where(:id=>196,:iso=>"27",:name=>"Kürdǝmir",:country_id=>16).first_or_create
State.where(:id=>197,:iso=>"38",:name=>"Qǝbǝlǝ",:country_id=>16).first_or_create
State.where(:id=>198,:iso=>"44",:name=>"Qusar",:country_id=>16).first_or_create
State.where(:id=>199,:iso=>"42",:name=>"Quba",:country_id=>16).first_or_create
State.where(:id=>200,:iso=>"62",:name=>"Xanlar",:country_id=>16).first_or_create
State.where(:id=>201,:iso=>"60",:name=>"Xaçmaz",:country_id=>16).first_or_create
State.where(:id=>202,:iso=>"26",:name=>"Kǝlbǝcǝr",:country_id=>16).first_or_create
State.where(:id=>203,:iso=>"40",:name=>"Qazax",:country_id=>16).first_or_create
State.where(:id=>204,:iso=>"21",:name=>"Goranboy",:country_id=>16).first_or_create
State.where(:id=>205,:iso=>"39",:name=>"Qǝx",:country_id=>16).first_or_create
State.where(:id=>206,:iso=>"25",:name=>"İsmayıllı",:country_id=>16).first_or_create
State.where(:id=>207,:iso=>"22",:name=>"Göyçay",:country_id=>16).first_or_create
State.where(:id=>208,:iso=>"17",:name=>"Dǝvǝçi",:country_id=>16).first_or_create
State.where(:id=>209,:iso=>"16",:name=>"Daşkǝsǝn",:country_id=>16).first_or_create
State.where(:id=>210,:iso=>"10",:name=>"Balakǝn",:country_id=>16).first_or_create
State.where(:id=>211,:iso=>"11",:name=>"Bǝrdǝ",:country_id=>16).first_or_create
State.where(:id=>212,:iso=>"09",:name=>"Baki",:country_id=>16).first_or_create
State.where(:id=>213,:iso=>"01",:name=>"Abşeron",:country_id=>16).first_or_create
State.where(:id=>214,:iso=>"06",:name=>"Ağsu",:country_id=>16).first_or_create
State.where(:id=>215,:iso=>"04",:name=>"Ağdaş",:country_id=>16).first_or_create
State.where(:id=>216,:iso=>"19",:name=>"Gǝdǝbǝy",:country_id=>16).first_or_create
State.where(:id=>217,:iso=>"05",:name=>"Ağstafa",:country_id=>16).first_or_create
State.where(:id=>218,:iso=>"20",:name=>"Gǝncǝ",:country_id=>16).first_or_create
State.where(:id=>219,:iso=>"33",:name=>"Mingǝcevir",:country_id=>16).first_or_create
State.where(:id=>220,:iso=>"34",:name=>"Naftalan",:country_id=>16).first_or_create
State.where(:id=>221,:iso=>"41",:name=>"Qobustan",:country_id=>16).first_or_create
State.where(:id=>222,:iso=>"52",:name=>"Samux",:country_id=>16).first_or_create
State.where(:id=>223,:iso=>"48",:name=>"Shaki City",:country_id=>16).first_or_create
State.where(:id=>224,:iso=>"53",:name=>"Siyǝzǝn",:country_id=>16).first_or_create
State.where(:id=>225,:iso=>"54",:name=>"Sumqayit",:country_id=>16).first_or_create
State.where(:id=>226,:iso=>"63",:name=>"Xızı",:country_id=>16).first_or_create
State.where(:id=>227,:iso=>"68",:name=>"Yevlax City",:country_id=>16).first_or_create
State.where(:id=>228,:iso=>"23",:name=>"Hacıqabul",:country_id=>16).first_or_create
State.where(:id=>229,:iso=>"BAB",:name=>"Babek",:country_id=>16).first_or_create
State.where(:id=>230,:iso=>"01",:name=>"Federation of Bosnia and Herzegovina",:country_id=>17).first_or_create
State.where(:id=>231,:iso=>"02",:name=>"Republika Srpska",:country_id=>17).first_or_create
State.where(:id=>232,:iso=>"BRC",:name=>"Brčko",:country_id=>17).first_or_create
State.where(:id=>233,:iso=>"11",:name=>"Saint Thomas",:country_id=>18).first_or_create
State.where(:id=>234,:iso=>"10",:name=>"Saint Philip",:country_id=>18).first_or_create
State.where(:id=>235,:iso=>"09",:name=>"Saint Peter",:country_id=>18).first_or_create
State.where(:id=>236,:iso=>"08",:name=>"Saint Michael",:country_id=>18).first_or_create
State.where(:id=>237,:iso=>"07",:name=>"Saint Lucy",:country_id=>18).first_or_create
State.where(:id=>238,:iso=>"06",:name=>"Saint Joseph",:country_id=>18).first_or_create
State.where(:id=>239,:iso=>"05",:name=>"Saint John",:country_id=>18).first_or_create
State.where(:id=>240,:iso=>"04",:name=>"Saint James",:country_id=>18).first_or_create
State.where(:id=>241,:iso=>"03",:name=>"Saint George",:country_id=>18).first_or_create
State.where(:id=>242,:iso=>"02",:name=>"Saint Andrew",:country_id=>18).first_or_create
State.where(:id=>243,:iso=>"01",:name=>"Christ Church",:country_id=>18).first_or_create
State.where(:id=>244,:iso=>"83",:name=>"Rājshāhi",:country_id=>19).first_or_create
State.where(:id=>245,:iso=>"81",:name=>"Dhaka",:country_id=>19).first_or_create
State.where(:id=>246,:iso=>"84",:name=>"Chittagong",:country_id=>19).first_or_create
State.where(:id=>247,:iso=>"82",:name=>"Khulna",:country_id=>19).first_or_create
State.where(:id=>248,:iso=>"85",:name=>"Barisāl",:country_id=>19).first_or_create
State.where(:id=>249,:iso=>"86",:name=>"Sylhet",:country_id=>19).first_or_create
State.where(:id=>250,:iso=>"87",:name=>"Rangpur Division",:country_id=>19).first_or_create
State.where(:id=>251,:iso=>"BRU",:name=>"Brussels Capital Region",:country_id=>20).first_or_create
State.where(:id=>252,:iso=>"WAL",:name=>"Walloon Region",:country_id=>20).first_or_create
State.where(:id=>253,:iso=>"VLG",:name=>"Flanders",:country_id=>20).first_or_create
State.where(:id=>254,:iso=>"01",:name=>"Boucle du Mouhoun",:country_id=>21).first_or_create
State.where(:id=>255,:iso=>"02",:name=>"Cascades",:country_id=>21).first_or_create
State.where(:id=>256,:iso=>"03",:name=>"Centre",:country_id=>21).first_or_create
State.where(:id=>257,:iso=>"04",:name=>"Centre-Est",:country_id=>21).first_or_create
State.where(:id=>258,:iso=>"05",:name=>"Centre-Nord",:country_id=>21).first_or_create
State.where(:id=>259,:iso=>"06",:name=>"Centre-Ouest",:country_id=>21).first_or_create
State.where(:id=>260,:iso=>"07",:name=>"Centre-Sud",:country_id=>21).first_or_create
State.where(:id=>261,:iso=>"08",:name=>"Est",:country_id=>21).first_or_create
State.where(:id=>262,:iso=>"09",:name=>"Hauts-Bassins",:country_id=>21).first_or_create
State.where(:id=>263,:iso=>"10",:name=>"Nord",:country_id=>21).first_or_create
State.where(:id=>264,:iso=>"11",:name=>"Plateau-Central",:country_id=>21).first_or_create
State.where(:id=>265,:iso=>"12",:name=>"Sahel",:country_id=>21).first_or_create
State.where(:id=>266,:iso=>"13",:name=>"Sud-Ouest",:country_id=>21).first_or_create
State.where(:id=>267,:iso=>"52",:name=>"Razgrad",:country_id=>22).first_or_create
State.where(:id=>268,:iso=>"47",:name=>"Montana",:country_id=>22).first_or_create
State.where(:id=>269,:iso=>"64",:name=>"Vratsa",:country_id=>22).first_or_create
State.where(:id=>270,:iso=>"61",:name=>"Varna",:country_id=>22).first_or_create
State.where(:id=>271,:iso=>"40",:name=>"Dobrich",:country_id=>22).first_or_create
State.where(:id=>272,:iso=>"58",:name=>"Sofiya",:country_id=>22).first_or_create
State.where(:id=>273,:iso=>"53",:name=>"Ruse",:country_id=>22).first_or_create
State.where(:id=>274,:iso=>"51",:name=>"Plovdiv",:country_id=>22).first_or_create
State.where(:id=>275,:iso=>"50",:name=>"Pleven",:country_id=>22).first_or_create
State.where(:id=>276,:iso=>"49",:name=>"Pernik",:country_id=>22).first_or_create
State.where(:id=>277,:iso=>"48",:name=>"Pazardzhit",:country_id=>22).first_or_create
State.where(:id=>278,:iso=>"46",:name=>"Lovech",:country_id=>22).first_or_create
State.where(:id=>279,:iso=>"43",:name=>"Khaskovo",:country_id=>22).first_or_create
State.where(:id=>280,:iso=>"42",:name=>"Oblast Sofiya-Grad",:country_id=>22).first_or_create
State.where(:id=>281,:iso=>"39",:name=>"Burgas",:country_id=>22).first_or_create
State.where(:id=>282,:iso=>"38",:name=>"Blagoevgrad",:country_id=>22).first_or_create
State.where(:id=>283,:iso=>"41",:name=>"Gabrovo",:country_id=>22).first_or_create
State.where(:id=>284,:iso=>"44",:name=>"Kŭrdzhali",:country_id=>22).first_or_create
State.where(:id=>285,:iso=>"45",:name=>"Kyustendil",:country_id=>22).first_or_create
State.where(:id=>286,:iso=>"54",:name=>"Shumen",:country_id=>22).first_or_create
State.where(:id=>287,:iso=>"55",:name=>"Silistra",:country_id=>22).first_or_create
State.where(:id=>288,:iso=>"56",:name=>"Sliven",:country_id=>22).first_or_create
State.where(:id=>289,:iso=>"57",:name=>"Smolyan",:country_id=>22).first_or_create
State.where(:id=>290,:iso=>"59",:name=>"Stara Zagora",:country_id=>22).first_or_create
State.where(:id=>291,:iso=>"60",:name=>"Tŭrgovishte",:country_id=>22).first_or_create
State.where(:id=>292,:iso=>"62",:name=>"Veliko Tŭrnovo",:country_id=>22).first_or_create
State.where(:id=>293,:iso=>"63",:name=>"Vidin",:country_id=>22).first_or_create
State.where(:id=>294,:iso=>"65",:name=>"Yambol",:country_id=>22).first_or_create
State.where(:id=>295,:iso=>"15",:name=>"Muharraq",:country_id=>23).first_or_create
State.where(:id=>296,:iso=>"16",:name=>"Capital Governorate",:country_id=>23).first_or_create
State.where(:id=>297,:iso=>"17",:name=>"Southern Governorate",:country_id=>23).first_or_create
State.where(:id=>298,:iso=>"18",:name=>"Central Governorate",:country_id=>23).first_or_create
State.where(:id=>299,:iso=>"19",:name=>"Northern Governorate",:country_id=>23).first_or_create
State.where(:id=>300,:iso=>"17",:name=>"Makamba",:country_id=>24).first_or_create
State.where(:id=>301,:iso=>"10",:name=>"Bururi",:country_id=>24).first_or_create
State.where(:id=>302,:iso=>"22",:name=>"Muramvya",:country_id=>24).first_or_create
State.where(:id=>303,:iso=>"13",:name=>"Gitega",:country_id=>24).first_or_create
State.where(:id=>304,:iso=>"21",:name=>"Ruyigi",:country_id=>24).first_or_create
State.where(:id=>305,:iso=>"11",:name=>"Cankuzo",:country_id=>24).first_or_create
State.where(:id=>306,:iso=>"14",:name=>"Karuzi",:country_id=>24).first_or_create
State.where(:id=>307,:iso=>"09",:name=>"Bubanza",:country_id=>24).first_or_create
State.where(:id=>308,:iso=>"12",:name=>"Cibitoke",:country_id=>24).first_or_create
State.where(:id=>309,:iso=>"19",:name=>"Ngozi",:country_id=>24).first_or_create
State.where(:id=>310,:iso=>"15",:name=>"Kayanza",:country_id=>24).first_or_create
State.where(:id=>311,:iso=>"18",:name=>"Muyinga",:country_id=>24).first_or_create
State.where(:id=>312,:iso=>"16",:name=>"Kirundo",:country_id=>24).first_or_create
State.where(:id=>313,:iso=>"20",:name=>"Rutana",:country_id=>24).first_or_create
State.where(:id=>314,:iso=>"23",:name=>"Mwaro",:country_id=>24).first_or_create
State.where(:id=>315,:iso=>"24",:name=>"Bujumbura Mairie",:country_id=>24).first_or_create
State.where(:id=>316,:iso=>"25",:name=>"Bujumbura Rural",:country_id=>24).first_or_create
State.where(:id=>317,:iso=>"18",:name=>"Zou",:country_id=>25).first_or_create
State.where(:id=>318,:iso=>"16",:name=>"Quémé",:country_id=>25).first_or_create
State.where(:id=>319,:iso=>"15",:name=>"Mono",:country_id=>25).first_or_create
State.where(:id=>320,:iso=>"10",:name=>"Borgou",:country_id=>25).first_or_create
State.where(:id=>321,:iso=>"09",:name=>"Atlantique",:country_id=>25).first_or_create
State.where(:id=>322,:iso=>"08",:name=>"Atakora",:country_id=>25).first_or_create
State.where(:id=>323,:iso=>"07",:name=>"Alibori",:country_id=>25).first_or_create
State.where(:id=>324,:iso=>"11",:name=>"Collines",:country_id=>25).first_or_create
State.where(:id=>325,:iso=>"12",:name=>"Kouffo",:country_id=>25).first_or_create
State.where(:id=>326,:iso=>"13",:name=>"Donga",:country_id=>25).first_or_create
State.where(:id=>327,:iso=>"14",:name=>"Littoral",:country_id=>25).first_or_create
State.where(:id=>328,:iso=>"17",:name=>"Plateau",:country_id=>25).first_or_create
State.where(:id=>329,:iso=>"11",:name=>"Warwick",:country_id=>27).first_or_create
State.where(:id=>330,:iso=>"10",:name=>"Southampton",:country_id=>27).first_or_create
State.where(:id=>331,:iso=>"09",:name=>"Smithʼs",:country_id=>27).first_or_create
State.where(:id=>332,:iso=>"08",:name=>"Sandys",:country_id=>27).first_or_create
State.where(:id=>333,:iso=>"07",:name=>"Saint Georgeʼs",:country_id=>27).first_or_create
State.where(:id=>334,:iso=>"06",:name=>"Saint George",:country_id=>27).first_or_create
State.where(:id=>335,:iso=>"05",:name=>"Pembroke",:country_id=>27).first_or_create
State.where(:id=>336,:iso=>"04",:name=>"Paget",:country_id=>27).first_or_create
State.where(:id=>337,:iso=>"02",:name=>"Hamilton Parish",:country_id=>27).first_or_create
State.where(:id=>338,:iso=>"03",:name=>"Hamilton city",:country_id=>27).first_or_create
State.where(:id=>339,:iso=>"01",:name=>"Devonshire",:country_id=>27).first_or_create
State.where(:id=>340,:iso=>"04",:name=>"Tutong",:country_id=>28).first_or_create
State.where(:id=>341,:iso=>"03",:name=>"Temburong",:country_id=>28).first_or_create
State.where(:id=>342,:iso=>"02",:name=>"Brunei and Muara",:country_id=>28).first_or_create
State.where(:id=>343,:iso=>"01",:name=>"Belait",:country_id=>28).first_or_create
State.where(:id=>344,:iso=>"09",:name=>"Tarija",:country_id=>29).first_or_create
State.where(:id=>345,:iso=>"08",:name=>"Santa Cruz",:country_id=>29).first_or_create
State.where(:id=>346,:iso=>"07",:name=>"Potosí",:country_id=>29).first_or_create
State.where(:id=>347,:iso=>"06",:name=>"Pando",:country_id=>29).first_or_create
State.where(:id=>348,:iso=>"05",:name=>"Oruro",:country_id=>29).first_or_create
State.where(:id=>349,:iso=>"04",:name=>"La Paz",:country_id=>29).first_or_create
State.where(:id=>350,:iso=>"02",:name=>"Cochabamba",:country_id=>29).first_or_create
State.where(:id=>351,:iso=>"01",:name=>"Chuquisaca",:country_id=>29).first_or_create
State.where(:id=>352,:iso=>"03",:name=>"El Beni",:country_id=>29).first_or_create
State.where(:id=>353,:iso=>"BO",:name=>"Bonaire",:country_id=>30).first_or_create
State.where(:id=>354,:iso=>"SB",:name=>"Saba",:country_id=>30).first_or_create
State.where(:id=>355,:iso=>"SE",:name=>"Sint Eustatius",:country_id=>30).first_or_create
State.where(:id=>356,:iso=>"22",:name=>"Rio Grande do Norte",:country_id=>31).first_or_create
State.where(:id=>357,:iso=>"20",:name=>"Piauí",:country_id=>31).first_or_create
State.where(:id=>358,:iso=>"30",:name=>"Estado de Pernambuco",:country_id=>31).first_or_create
State.where(:id=>359,:iso=>"17",:name=>"Paraíba",:country_id=>31).first_or_create
State.where(:id=>360,:iso=>"16",:name=>"Pará",:country_id=>31).first_or_create
State.where(:id=>361,:iso=>"13",:name=>"Maranhão",:country_id=>31).first_or_create
State.where(:id=>362,:iso=>"06",:name=>"Ceará",:country_id=>31).first_or_create
State.where(:id=>363,:iso=>"03",:name=>"Amapá",:country_id=>31).first_or_create
State.where(:id=>364,:iso=>"02",:name=>"Alagoas",:country_id=>31).first_or_create
State.where(:id=>365,:iso=>"28",:name=>"Sergipe",:country_id=>31).first_or_create
State.where(:id=>366,:iso=>"27",:name=>"São Paulo",:country_id=>31).first_or_create
State.where(:id=>367,:iso=>"26",:name=>"Santa Catarina",:country_id=>31).first_or_create
State.where(:id=>368,:iso=>"23",:name=>"Rio Grande do Sul",:country_id=>31).first_or_create
State.where(:id=>369,:iso=>"21",:name=>"Rio de Janeiro",:country_id=>31).first_or_create
State.where(:id=>370,:iso=>"18",:name=>"Paraná",:country_id=>31).first_or_create
State.where(:id=>371,:iso=>"15",:name=>"Estado de Minas Gerais",:country_id=>31).first_or_create
State.where(:id=>372,:iso=>"11",:name=>"Mato Grosso do Sul",:country_id=>31).first_or_create
State.where(:id=>373,:iso=>"14",:name=>"Mato Grosso",:country_id=>31).first_or_create
State.where(:id=>374,:iso=>"29",:name=>"Goiás",:country_id=>31).first_or_create
State.where(:id=>375,:iso=>"07",:name=>"Distrito Federal",:country_id=>31).first_or_create
State.where(:id=>376,:iso=>"08",:name=>"Estado de Espírito Santo",:country_id=>31).first_or_create
State.where(:id=>377,:iso=>"05",:name=>"Bahia",:country_id=>31).first_or_create
State.where(:id=>378,:iso=>"31",:name=>"Tocantins",:country_id=>31).first_or_create
State.where(:id=>379,:iso=>"25",:name=>"Roraima",:country_id=>31).first_or_create
State.where(:id=>380,:iso=>"04",:name=>"Amazonas",:country_id=>31).first_or_create
State.where(:id=>381,:iso=>"01",:name=>"Acre",:country_id=>31).first_or_create
State.where(:id=>382,:iso=>"24",:name=>"Rondônia",:country_id=>31).first_or_create
State.where(:id=>383,:iso=>"35",:name=>"San Salvador and Rum Cay",:country_id=>32).first_or_create
State.where(:id=>384,:iso=>"34",:name=>"Sandy Point",:country_id=>32).first_or_create
State.where(:id=>385,:iso=>"33",:name=>"Rock Sound",:country_id=>32).first_or_create
State.where(:id=>386,:iso=>"18",:name=>"Ragged Island",:country_id=>32).first_or_create
State.where(:id=>387,:iso=>"32",:name=>"Nichollstown and Berry Islands",:country_id=>32).first_or_create
State.where(:id=>388,:iso=>"23",:name=>"New Providence",:country_id=>32).first_or_create
State.where(:id=>389,:iso=>"16",:name=>"Mayaguana",:country_id=>32).first_or_create
State.where(:id=>390,:iso=>"31",:name=>"Marsh Harbour",:country_id=>32).first_or_create
State.where(:id=>391,:iso=>"15",:name=>"Long Island",:country_id=>32).first_or_create
State.where(:id=>392,:iso=>"30",:name=>"Kemps Bay",:country_id=>32).first_or_create
State.where(:id=>393,:iso=>"13",:name=>"Inagua",:country_id=>32).first_or_create
State.where(:id=>394,:iso=>"29",:name=>"High Rock",:country_id=>32).first_or_create
State.where(:id=>395,:iso=>"22",:name=>"Harbour Island",:country_id=>32).first_or_create
State.where(:id=>396,:iso=>"28",:name=>"Green Turtle Cay",:country_id=>32).first_or_create
State.where(:id=>397,:iso=>"27",:name=>"Governorʼs Harbour",:country_id=>32).first_or_create
State.where(:id=>398,:iso=>"26",:name=>"Fresh Creek",:country_id=>32).first_or_create
State.where(:id=>399,:iso=>"25",:name=>"Freeport",:country_id=>32).first_or_create
State.where(:id=>400,:iso=>"10",:name=>"Exuma",:country_id=>32).first_or_create
State.where(:id=>401,:iso=>"06",:name=>"Cat Island",:country_id=>32).first_or_create
State.where(:id=>402,:iso=>"05",:name=>"Bimini",:country_id=>32).first_or_create
State.where(:id=>403,:iso=>"24",:name=>"Acklins and Crooked Islands",:country_id=>32).first_or_create
State.where(:id=>404,:iso=>"05",:name=>"Bumthang",:country_id=>33).first_or_create
State.where(:id=>405,:iso=>"06",:name=>"Chhukha",:country_id=>33).first_or_create
State.where(:id=>406,:iso=>"08",:name=>"Daga",:country_id=>33).first_or_create
State.where(:id=>407,:iso=>"07",:name=>"Chirang",:country_id=>33).first_or_create
State.where(:id=>408,:iso=>"09",:name=>"Geylegphug",:country_id=>33).first_or_create
State.where(:id=>409,:iso=>"10",:name=>"Ha",:country_id=>33).first_or_create
State.where(:id=>410,:iso=>"11",:name=>"Lhuntshi",:country_id=>33).first_or_create
State.where(:id=>411,:iso=>"12",:name=>"Mongar",:country_id=>33).first_or_create
State.where(:id=>412,:iso=>"13",:name=>"Paro",:country_id=>33).first_or_create
State.where(:id=>413,:iso=>"14",:name=>"Pemagatsel",:country_id=>33).first_or_create
State.where(:id=>414,:iso=>"15",:name=>"Punakha",:country_id=>33).first_or_create
State.where(:id=>415,:iso=>"16",:name=>"Samchi",:country_id=>33).first_or_create
State.where(:id=>416,:iso=>"17",:name=>"Samdrup Jongkhar",:country_id=>33).first_or_create
State.where(:id=>417,:iso=>"18",:name=>"Shemgang",:country_id=>33).first_or_create
State.where(:id=>418,:iso=>"19",:name=>"Tashigang",:country_id=>33).first_or_create
State.where(:id=>419,:iso=>"20",:name=>"Thimphu",:country_id=>33).first_or_create
State.where(:id=>420,:iso=>"21",:name=>"Tongsa",:country_id=>33).first_or_create
State.where(:id=>421,:iso=>"22",:name=>"Wangdi Phodrang",:country_id=>33).first_or_create
State.where(:id=>422,:iso=>"23",:name=>"Gasa",:country_id=>33).first_or_create
State.where(:id=>423,:iso=>"24",:name=>"Trashi Yangste",:country_id=>33).first_or_create
State.where(:id=>424,:iso=>"10",:name=>"Southern",:country_id=>35).first_or_create
State.where(:id=>425,:iso=>"09",:name=>"South East",:country_id=>35).first_or_create
State.where(:id=>426,:iso=>"08",:name=>"North East",:country_id=>35).first_or_create
State.where(:id=>427,:iso=>"11",:name=>"North West",:country_id=>35).first_or_create
State.where(:id=>428,:iso=>"06",:name=>"Kweneng",:country_id=>35).first_or_create
State.where(:id=>429,:iso=>"05",:name=>"Kgatleng",:country_id=>35).first_or_create
State.where(:id=>430,:iso=>"04",:name=>"Kgalagadi",:country_id=>35).first_or_create
State.where(:id=>431,:iso=>"03",:name=>"Ghanzi",:country_id=>35).first_or_create
State.where(:id=>432,:iso=>"01",:name=>"Central",:country_id=>35).first_or_create
State.where(:id=>433,:iso=>"07",:name=>"Vitsyebskaya Voblastsʼ",:country_id=>36).first_or_create
State.where(:id=>434,:iso=>"06",:name=>"Mahilyowskaya Voblastsʼ",:country_id=>36).first_or_create
State.where(:id=>435,:iso=>"05",:name=>"Minskaya Voblastsʼ",:country_id=>36).first_or_create
State.where(:id=>436,:iso=>"04",:name=>"Horad Minsk",:country_id=>36).first_or_create
State.where(:id=>437,:iso=>"03",:name=>"Hrodzyenskaya Voblastsʼ",:country_id=>36).first_or_create
State.where(:id=>438,:iso=>"02",:name=>"Homyelʼskaya Voblastsʼ",:country_id=>36).first_or_create
State.where(:id=>439,:iso=>"01",:name=>"Brestskaya Voblastsʼ",:country_id=>36).first_or_create
State.where(:id=>440,:iso=>"06",:name=>"Toledo",:country_id=>37).first_or_create
State.where(:id=>441,:iso=>"05",:name=>"Stann Creek",:country_id=>37).first_or_create
State.where(:id=>442,:iso=>"04",:name=>"Orange Walk",:country_id=>37).first_or_create
State.where(:id=>443,:iso=>"03",:name=>"Corozal",:country_id=>37).first_or_create
State.where(:id=>444,:iso=>"02",:name=>"Cayo",:country_id=>37).first_or_create
State.where(:id=>445,:iso=>"01",:name=>"Belize",:country_id=>37).first_or_create
State.where(:id=>446,:iso=>"01",:name=>"Alberta",:country_id=>38).first_or_create
State.where(:id=>447,:iso=>"02",:name=>"British Columbia",:country_id=>38).first_or_create
State.where(:id=>448,:iso=>"03",:name=>"Manitoba",:country_id=>38).first_or_create
State.where(:id=>449,:iso=>"04",:name=>"New Brunswick",:country_id=>38).first_or_create
State.where(:id=>450,:iso=>"13",:name=>"Northwest Territories",:country_id=>38).first_or_create
State.where(:id=>451,:iso=>"07",:name=>"Nova Scotia",:country_id=>38).first_or_create
State.where(:id=>452,:iso=>"14",:name=>"Nunavut",:country_id=>38).first_or_create
State.where(:id=>453,:iso=>"08",:name=>"Ontario",:country_id=>38).first_or_create
State.where(:id=>454,:iso=>"09",:name=>"Prince Edward Island",:country_id=>38).first_or_create
State.where(:id=>455,:iso=>"10",:name=>"Quebec",:country_id=>38).first_or_create
State.where(:id=>456,:iso=>"11",:name=>"Saskatchewan",:country_id=>38).first_or_create
State.where(:id=>457,:iso=>"12",:name=>"Yukon",:country_id=>38).first_or_create
State.where(:id=>458,:iso=>"05",:name=>"Newfoundland and Labrador",:country_id=>38).first_or_create
State.where(:id=>459,:iso=>"12",:name=>"Sud-Kivu",:country_id=>40).first_or_create
State.where(:id=>460,:iso=>"05",:name=>"Katanga",:country_id=>40).first_or_create
State.where(:id=>461,:iso=>"11",:name=>"Nord-Kivu",:country_id=>40).first_or_create
State.where(:id=>462,:iso=>"10",:name=>"Maniema",:country_id=>40).first_or_create
State.where(:id=>463,:iso=>"04",:name=>"Kasaï-Oriental",:country_id=>40).first_or_create
State.where(:id=>464,:iso=>"03",:name=>"Kasaï-Occidental",:country_id=>40).first_or_create
State.where(:id=>465,:iso=>"09",:name=>"Orientale",:country_id=>40).first_or_create
State.where(:id=>466,:iso=>"02",:name=>"Équateur",:country_id=>40).first_or_create
State.where(:id=>467,:iso=>"06",:name=>"Kinshasa",:country_id=>40).first_or_create
State.where(:id=>468,:iso=>"08",:name=>"Bas-Congo",:country_id=>40).first_or_create
State.where(:id=>469,:iso=>"01",:name=>"Bandundu",:country_id=>40).first_or_create
State.where(:id=>470,:iso=>"14",:name=>"Vakaga",:country_id=>41).first_or_create
State.where(:id=>471,:iso=>"11",:name=>"Ouaka",:country_id=>41).first_or_create
State.where(:id=>472,:iso=>"08",:name=>"Mbomou",:country_id=>41).first_or_create
State.where(:id=>473,:iso=>"05",:name=>"Haut-Mbomou",:country_id=>41).first_or_create
State.where(:id=>474,:iso=>"03",:name=>"Haute-Kotto",:country_id=>41).first_or_create
State.where(:id=>475,:iso=>"02",:name=>"Basse-Kotto",:country_id=>41).first_or_create
State.where(:id=>476,:iso=>"01",:name=>"Bamingui-Bangoran",:country_id=>41).first_or_create
State.where(:id=>477,:iso=>"16",:name=>"Sangha-Mbaéré",:country_id=>41).first_or_create
State.where(:id=>478,:iso=>"13",:name=>"Ouham-Pendé",:country_id=>41).first_or_create
State.where(:id=>479,:iso=>"12",:name=>"Ouham",:country_id=>41).first_or_create
State.where(:id=>480,:iso=>"17",:name=>"Ombella-Mpoko",:country_id=>41).first_or_create
State.where(:id=>481,:iso=>"09",:name=>"Nana-Mambéré",:country_id=>41).first_or_create
State.where(:id=>482,:iso=>"07",:name=>"Lobaye",:country_id=>41).first_or_create
State.where(:id=>483,:iso=>"06",:name=>"Kémo",:country_id=>41).first_or_create
State.where(:id=>484,:iso=>"04",:name=>"Mambéré-Kadéï",:country_id=>41).first_or_create
State.where(:id=>485,:iso=>"15",:name=>"Nana-Grébizi",:country_id=>41).first_or_create
State.where(:id=>486,:iso=>"18",:name=>"Bangui",:country_id=>41).first_or_create
State.where(:id=>487,:iso=>"10",:name=>"Sangha",:country_id=>42).first_or_create
State.where(:id=>488,:iso=>"11",:name=>"Pool",:country_id=>42).first_or_create
State.where(:id=>489,:iso=>"08",:name=>"Plateaux",:country_id=>42).first_or_create
State.where(:id=>490,:iso=>"07",:name=>"Niari",:country_id=>42).first_or_create
State.where(:id=>491,:iso=>"06",:name=>"Likouala",:country_id=>42).first_or_create
State.where(:id=>492,:iso=>"05",:name=>"Lékoumou",:country_id=>42).first_or_create
State.where(:id=>493,:iso=>"04",:name=>"Kouilou",:country_id=>42).first_or_create
State.where(:id=>494,:iso=>"13",:name=>"Cuvette",:country_id=>42).first_or_create
State.where(:id=>495,:iso=>"01",:name=>"Bouenza",:country_id=>42).first_or_create
State.where(:id=>496,:iso=>"12",:name=>"Brazzaville",:country_id=>42).first_or_create
State.where(:id=>497,:iso=>"14",:name=>"Cuvette-Ouest",:country_id=>42).first_or_create
State.where(:id=>498,:iso=>"7280295",:name=>"Pointe-Noire",:country_id=>42).first_or_create
State.where(:id=>499,:iso=>"ZH",:name=>"Zürich",:country_id=>43).first_or_create
State.where(:id=>500,:iso=>"ZG",:name=>"Zug",:country_id=>43).first_or_create
State.where(:id=>501,:iso=>"VD",:name=>"Vaud",:country_id=>43).first_or_create
State.where(:id=>502,:iso=>"VS",:name=>"Valais",:country_id=>43).first_or_create
State.where(:id=>503,:iso=>"UR",:name=>"Uri",:country_id=>43).first_or_create
State.where(:id=>504,:iso=>"TI",:name=>"Ticino",:country_id=>43).first_or_create
State.where(:id=>505,:iso=>"TG",:name=>"Thurgau",:country_id=>43).first_or_create
State.where(:id=>506,:iso=>"SO",:name=>"Solothurn",:country_id=>43).first_or_create
State.where(:id=>507,:iso=>"SZ",:name=>"Schwyz",:country_id=>43).first_or_create
State.where(:id=>508,:iso=>"SH",:name=>"Schaffhausen",:country_id=>43).first_or_create
State.where(:id=>509,:iso=>"SG",:name=>"Sankt Gallen",:country_id=>43).first_or_create
State.where(:id=>510,:iso=>"OW",:name=>"Obwalden",:country_id=>43).first_or_create
State.where(:id=>511,:iso=>"NW",:name=>"Nidwalden",:country_id=>43).first_or_create
State.where(:id=>512,:iso=>"NE",:name=>"Neuchâtel",:country_id=>43).first_or_create
State.where(:id=>513,:iso=>"LU",:name=>"Luzern",:country_id=>43).first_or_create
State.where(:id=>514,:iso=>"JU",:name=>"Jura",:country_id=>43).first_or_create
State.where(:id=>515,:iso=>"GR",:name=>"Graubünden",:country_id=>43).first_or_create
State.where(:id=>516,:iso=>"GL",:name=>"Glarus",:country_id=>43).first_or_create
State.where(:id=>517,:iso=>"GE",:name=>"Genève",:country_id=>43).first_or_create
State.where(:id=>518,:iso=>"FR",:name=>"Fribourg",:country_id=>43).first_or_create
State.where(:id=>519,:iso=>"BE",:name=>"Bern",:country_id=>43).first_or_create
State.where(:id=>520,:iso=>"BS",:name=>"Basel-City",:country_id=>43).first_or_create
State.where(:id=>521,:iso=>"BL",:name=>"Basel-Landschaft",:country_id=>43).first_or_create
State.where(:id=>522,:iso=>"AR",:name=>"Appenzell Ausserrhoden",:country_id=>43).first_or_create
State.where(:id=>523,:iso=>"AI",:name=>"Appenzell Innerrhoden",:country_id=>43).first_or_create
State.where(:id=>524,:iso=>"AG",:name=>"Aargau",:country_id=>43).first_or_create
State.where(:id=>525,:iso=>"82",:name=>"Lagunes",:country_id=>44).first_or_create
State.where(:id=>526,:iso=>"89",:name=>"Sud-Comoé",:country_id=>44).first_or_create
State.where(:id=>527,:iso=>"74",:name=>"Agnéby",:country_id=>44).first_or_create
State.where(:id=>528,:iso=>"80",:name=>"Haut-Sassandra",:country_id=>44).first_or_create
State.where(:id=>529,:iso=>"87",:name=>"Savanes",:country_id=>44).first_or_create
State.where(:id=>530,:iso=>"90",:name=>"Vallée du Bandama",:country_id=>44).first_or_create
State.where(:id=>531,:iso=>"85",:name=>"Moyen-Comoé",:country_id=>44).first_or_create
State.where(:id=>532,:iso=>"78",:name=>"Dix-Huit Montagnes",:country_id=>44).first_or_create
State.where(:id=>533,:iso=>"81",:name=>"Lacs",:country_id=>44).first_or_create
State.where(:id=>534,:iso=>"92",:name=>"Zanzan",:country_id=>44).first_or_create
State.where(:id=>535,:iso=>"76",:name=>"Bas-Sassandra",:country_id=>44).first_or_create
State.where(:id=>536,:iso=>"91",:name=>"Worodougou",:country_id=>44).first_or_create
State.where(:id=>537,:iso=>"77",:name=>"Denguélé",:country_id=>44).first_or_create
State.where(:id=>538,:iso=>"88",:name=>"Sud-Bandama",:country_id=>44).first_or_create
State.where(:id=>539,:iso=>"79",:name=>"Fromager",:country_id=>44).first_or_create
State.where(:id=>540,:iso=>"86",:name=>"Nʼzi-Comoé",:country_id=>44).first_or_create
State.where(:id=>541,:iso=>"83",:name=>"Marahoué",:country_id=>44).first_or_create
State.where(:id=>542,:iso=>"84",:name=>"Moyen-Cavally",:country_id=>44).first_or_create
State.where(:id=>543,:iso=>"75",:name=>"Bafing",:country_id=>44).first_or_create
State.where(:id=>544,:iso=>"01",:name=>"Valparaíso",:country_id=>46).first_or_create
State.where(:id=>545,:iso=>"15",:name=>"Tarapacá",:country_id=>46).first_or_create
State.where(:id=>546,:iso=>"12",:name=>"Región Metropolitana",:country_id=>46).first_or_create
State.where(:id=>547,:iso=>"11",:name=>"Maule",:country_id=>46).first_or_create
State.where(:id=>548,:iso=>"14",:name=>"Los Lagos",:country_id=>46).first_or_create
State.where(:id=>549,:iso=>"08",:name=>"Libertador General Bernardo OʼHiggins",:country_id=>46).first_or_create
State.where(:id=>550,:iso=>"07",:name=>"Coquimbo",:country_id=>46).first_or_create
State.where(:id=>551,:iso=>"06",:name=>"Bío-Bío",:country_id=>46).first_or_create
State.where(:id=>552,:iso=>"05",:name=>"Atacama",:country_id=>46).first_or_create
State.where(:id=>553,:iso=>"04",:name=>"Araucanía",:country_id=>46).first_or_create
State.where(:id=>554,:iso=>"03",:name=>"Antofagasta",:country_id=>46).first_or_create
State.where(:id=>555,:iso=>"02",:name=>"Aisén del General Carlos Ibáñez del Campo",:country_id=>46).first_or_create
State.where(:id=>556,:iso=>"10",:name=>"Magallanes y Antártica Chilena",:country_id=>46).first_or_create
State.where(:id=>557,:iso=>"16",:name=>"Región de Arica y Parinacota",:country_id=>46).first_or_create
State.where(:id=>558,:iso=>"17",:name=>"Región de Los Ríos",:country_id=>46).first_or_create
State.where(:id=>559,:iso=>"09",:name=>"South-West Province",:country_id=>47).first_or_create
State.where(:id=>560,:iso=>"14",:name=>"South Region",:country_id=>47).first_or_create
State.where(:id=>561,:iso=>"08",:name=>"West Region",:country_id=>47).first_or_create
State.where(:id=>562,:iso=>"07",:name=>"North-West Region",:country_id=>47).first_or_create
State.where(:id=>563,:iso=>"13",:name=>"North Province",:country_id=>47).first_or_create
State.where(:id=>564,:iso=>"05",:name=>"Littoral Region",:country_id=>47).first_or_create
State.where(:id=>565,:iso=>"12",:name=>"Far North Region",:country_id=>47).first_or_create
State.where(:id=>566,:iso=>"04",:name=>"East Province",:country_id=>47).first_or_create
State.where(:id=>567,:iso=>"11",:name=>"Centre Region",:country_id=>47).first_or_create
State.where(:id=>568,:iso=>"10",:name=>"Adamaoua Region",:country_id=>47).first_or_create
State.where(:id=>569,:iso=>"14",:name=>"Tibet Autonomous Region",:country_id=>48).first_or_create
State.where(:id=>570,:iso=>"06",:name=>"Qinghai Sheng",:country_id=>48).first_or_create
State.where(:id=>571,:iso=>"13",:name=>"Xinjiang Uygur Zizhiqu",:country_id=>48).first_or_create
State.where(:id=>572,:iso=>"02",:name=>"Zhejiang Sheng",:country_id=>48).first_or_create
State.where(:id=>573,:iso=>"29",:name=>"Yunnan",:country_id=>48).first_or_create
State.where(:id=>574,:iso=>"28",:name=>"Tianjin Shi",:country_id=>48).first_or_create
State.where(:id=>575,:iso=>"32",:name=>"Sichuan",:country_id=>48).first_or_create
State.where(:id=>576,:iso=>"24",:name=>"Shanxi Sheng",:country_id=>48).first_or_create
State.where(:id=>577,:iso=>"23",:name=>"Shanghai Shi",:country_id=>48).first_or_create
State.where(:id=>578,:iso=>"25",:name=>"Shandong Sheng",:country_id=>48).first_or_create
State.where(:id=>579,:iso=>"26",:name=>"Shaanxi Sheng",:country_id=>48).first_or_create
State.where(:id=>580,:iso=>"21",:name=>"Ningxia Huizu Zizhiqu",:country_id=>48).first_or_create
State.where(:id=>581,:iso=>"03",:name=>"Jiangxi",:country_id=>48).first_or_create
State.where(:id=>582,:iso=>"04",:name=>"Jiangsu Sheng",:country_id=>48).first_or_create
State.where(:id=>583,:iso=>"11",:name=>"Hunan",:country_id=>48).first_or_create
State.where(:id=>584,:iso=>"12",:name=>"Hubei",:country_id=>48).first_or_create
State.where(:id=>585,:iso=>"09",:name=>"Henan Sheng",:country_id=>48).first_or_create
State.where(:id=>586,:iso=>"10",:name=>"Hebei Sheng",:country_id=>48).first_or_create
State.where(:id=>587,:iso=>"31",:name=>"Hainan",:country_id=>48).first_or_create
State.where(:id=>588,:iso=>"18",:name=>"Guizhou Sheng",:country_id=>48).first_or_create
State.where(:id=>589,:iso=>"16",:name=>"Guangxi Zhuangzu Zizhiqu",:country_id=>48).first_or_create
State.where(:id=>590,:iso=>"30",:name=>"Guangdong Sheng",:country_id=>48).first_or_create
State.where(:id=>591,:iso=>"15",:name=>"Gansu Sheng",:country_id=>48).first_or_create
State.where(:id=>592,:iso=>"07",:name=>"Fujian",:country_id=>48).first_or_create
State.where(:id=>593,:iso=>"33",:name=>"Chongqing Shi",:country_id=>48).first_or_create
State.where(:id=>594,:iso=>"01",:name=>"Anhui Sheng",:country_id=>48).first_or_create
State.where(:id=>595,:iso=>"20",:name=>"Inner Mongolia",:country_id=>48).first_or_create
State.where(:id=>596,:iso=>"19",:name=>"Liaoning",:country_id=>48).first_or_create
State.where(:id=>597,:iso=>"05",:name=>"Jilin Sheng",:country_id=>48).first_or_create
State.where(:id=>598,:iso=>"08",:name=>"Heilongjiang Sheng",:country_id=>48).first_or_create
State.where(:id=>599,:iso=>"22",:name=>"Beijing",:country_id=>48).first_or_create
State.where(:id=>600,:iso=>"31",:name=>"Vichada",:country_id=>49).first_or_create
State.where(:id=>601,:iso=>"30",:name=>"Vaupés",:country_id=>49).first_or_create
State.where(:id=>602,:iso=>"29",:name=>"Valle del Cauca",:country_id=>49).first_or_create
State.where(:id=>603,:iso=>"28",:name=>"Tolima",:country_id=>49).first_or_create
State.where(:id=>604,:iso=>"27",:name=>"Sucre",:country_id=>49).first_or_create
State.where(:id=>605,:iso=>"26",:name=>"Santander",:country_id=>49).first_or_create
State.where(:id=>606,:iso=>"25",:name=>"Archipiélago de San Andrés, Providencia y Santa Catalina",:country_id=>49).first_or_create
State.where(:id=>607,:iso=>"24",:name=>"Risaralda",:country_id=>49).first_or_create
State.where(:id=>608,:iso=>"23",:name=>"Quindío",:country_id=>49).first_or_create
State.where(:id=>609,:iso=>"22",:name=>"Putumayo",:country_id=>49).first_or_create
State.where(:id=>610,:iso=>"21",:name=>"Norte de Santander",:country_id=>49).first_or_create
State.where(:id=>611,:iso=>"20",:name=>"Nariño",:country_id=>49).first_or_create
State.where(:id=>612,:iso=>"19",:name=>"Meta",:country_id=>49).first_or_create
State.where(:id=>613,:iso=>"38",:name=>"Magdalena",:country_id=>49).first_or_create
State.where(:id=>614,:iso=>"17",:name=>"La Guajira",:country_id=>49).first_or_create
State.where(:id=>615,:iso=>"16",:name=>"Huila",:country_id=>49).first_or_create
State.where(:id=>616,:iso=>"14",:name=>"Guaviare",:country_id=>49).first_or_create
State.where(:id=>617,:iso=>"15",:name=>"Guainía",:country_id=>49).first_or_create
State.where(:id=>618,:iso=>"33",:name=>"Cundinamarca",:country_id=>49).first_or_create
State.where(:id=>619,:iso=>"12",:name=>"Córdoba",:country_id=>49).first_or_create
State.where(:id=>620,:iso=>"11",:name=>"Chocó",:country_id=>49).first_or_create
State.where(:id=>621,:iso=>"10",:name=>"Cesar",:country_id=>49).first_or_create
State.where(:id=>622,:iso=>"09",:name=>"Cauca",:country_id=>49).first_or_create
State.where(:id=>623,:iso=>"32",:name=>"Casanare",:country_id=>49).first_or_create
State.where(:id=>624,:iso=>"08",:name=>"Caquetá",:country_id=>49).first_or_create
State.where(:id=>625,:iso=>"37",:name=>"Caldas",:country_id=>49).first_or_create
State.where(:id=>626,:iso=>"36",:name=>"Boyacá",:country_id=>49).first_or_create
State.where(:id=>627,:iso=>"35",:name=>"Bolívar",:country_id=>49).first_or_create
State.where(:id=>628,:iso=>"34",:name=>"Bogota D.C.",:country_id=>49).first_or_create
State.where(:id=>629,:iso=>"04",:name=>"Atlántico",:country_id=>49).first_or_create
State.where(:id=>630,:iso=>"03",:name=>"Arauca",:country_id=>49).first_or_create
State.where(:id=>631,:iso=>"02",:name=>"Antioquia",:country_id=>49).first_or_create
State.where(:id=>632,:iso=>"01",:name=>"Amazonas",:country_id=>49).first_or_create
State.where(:id=>633,:iso=>"08",:name=>"San José",:country_id=>50).first_or_create
State.where(:id=>634,:iso=>"07",:name=>"Puntarenas",:country_id=>50).first_or_create
State.where(:id=>635,:iso=>"06",:name=>"Limón",:country_id=>50).first_or_create
State.where(:id=>636,:iso=>"04",:name=>"Heredia",:country_id=>50).first_or_create
State.where(:id=>637,:iso=>"03",:name=>"Guanacaste",:country_id=>50).first_or_create
State.where(:id=>638,:iso=>"02",:name=>"Cartago",:country_id=>50).first_or_create
State.where(:id=>639,:iso=>"01",:name=>"Alajuela",:country_id=>50).first_or_create
State.where(:id=>640,:iso=>"16",:name=>"Villa Clara",:country_id=>51).first_or_create
State.where(:id=>641,:iso=>"15",:name=>"Santiago de Cuba",:country_id=>51).first_or_create
State.where(:id=>642,:iso=>"14",:name=>"Sancti Spíritus",:country_id=>51).first_or_create
State.where(:id=>643,:iso=>"01",:name=>"Pinar del Río",:country_id=>51).first_or_create
State.where(:id=>644,:iso=>"03",:name=>"Matanzas",:country_id=>51).first_or_create
State.where(:id=>645,:iso=>"13",:name=>"Las Tunas",:country_id=>51).first_or_create
State.where(:id=>646,:iso=>"04",:name=>"Isla de la Juventud",:country_id=>51).first_or_create
State.where(:id=>647,:iso=>"12",:name=>"Holguín",:country_id=>51).first_or_create
State.where(:id=>648,:iso=>"10",:name=>"Guantánamo",:country_id=>51).first_or_create
State.where(:id=>649,:iso=>"09",:name=>"Granma",:country_id=>51).first_or_create
State.where(:id=>650,:iso=>"02",:name=>"Ciudad de La Habana",:country_id=>51).first_or_create
State.where(:id=>651,:iso=>"08",:name=>"Cienfuegos",:country_id=>51).first_or_create
State.where(:id=>652,:iso=>"07",:name=>"Ciego de Ávila",:country_id=>51).first_or_create
State.where(:id=>653,:iso=>"05",:name=>"Camagüey",:country_id=>51).first_or_create
State.where(:id=>654,:iso=>"AR",:name=>"Provincia Artemisa",:country_id=>51).first_or_create
State.where(:id=>655,:iso=>"MA",:name=>"Provincia Mayabeque",:country_id=>51).first_or_create
State.where(:id=>656,:iso=>"20",:name=>"Tarrafal",:country_id=>52).first_or_create
State.where(:id=>657,:iso=>"11",:name=>"São Vicente",:country_id=>52).first_or_create
State.where(:id=>658,:iso=>"15",:name=>"Santa Catarina",:country_id=>52).first_or_create
State.where(:id=>659,:iso=>"08",:name=>"Sal",:country_id=>52).first_or_create
State.where(:id=>660,:iso=>"07",:name=>"Ribeira Grande",:country_id=>52).first_or_create
State.where(:id=>661,:iso=>"14",:name=>"Praia",:country_id=>52).first_or_create
State.where(:id=>662,:iso=>"05",:name=>"Paul",:country_id=>52).first_or_create
State.where(:id=>663,:iso=>"04",:name=>"Maio",:country_id=>52).first_or_create
State.where(:id=>664,:iso=>"02",:name=>"Brava",:country_id=>52).first_or_create
State.where(:id=>665,:iso=>"01",:name=>"Boa Vista",:country_id=>52).first_or_create
State.where(:id=>666,:iso=>"13",:name=>"Mosteiros",:country_id=>52).first_or_create
State.where(:id=>667,:iso=>"16",:name=>"Santa Cruz",:country_id=>52).first_or_create
State.where(:id=>668,:iso=>"17",:name=>"São Domingos",:country_id=>52).first_or_create
State.where(:id=>669,:iso=>"18",:name=>"São Filipe",:country_id=>52).first_or_create
State.where(:id=>670,:iso=>"19",:name=>"São Miguel",:country_id=>52).first_or_create
State.where(:id=>671,:iso=>"21",:name=>"Concelho do Porto Novo",:country_id=>52).first_or_create
State.where(:id=>672,:iso=>"22",:name=>"Concelho da Ribeira Brava",:country_id=>52).first_or_create
State.where(:id=>673,:iso=>"24",:name=>"Concelho de Santa Catarina do Fogo",:country_id=>52).first_or_create
State.where(:id=>674,:iso=>"26",:name=>"Concelho de São Salvador do Mundo",:country_id=>52).first_or_create
State.where(:id=>675,:iso=>"27",:name=>"Concelho do Tarrafal de São Nicolau",:country_id=>52).first_or_create
State.where(:id=>676,:iso=>"25",:name=>"Concelho de São Lourenço dos Orgãos",:country_id=>52).first_or_create
State.where(:id=>677,:iso=>"23",:name=>"Concelho de Ribeira Grande de Santiago",:country_id=>52).first_or_create
State.where(:id=>678,:iso=>"06",:name=>"Paphos",:country_id=>55).first_or_create
State.where(:id=>679,:iso=>"04",:name=>"Nicosia",:country_id=>55).first_or_create
State.where(:id=>680,:iso=>"05",:name=>"Limassol",:country_id=>55).first_or_create
State.where(:id=>681,:iso=>"03",:name=>"Larnaca",:country_id=>55).first_or_create
State.where(:id=>682,:iso=>"02",:name=>"Kyrenia",:country_id=>55).first_or_create
State.where(:id=>683,:iso=>"01",:name=>"Famagusta",:country_id=>55).first_or_create
State.where(:id=>684,:iso=>"52",:name=>"Hlavní Mesto Praha",:country_id=>56).first_or_create
State.where(:id=>685,:iso=>"78",:name=>"South Moravian Region",:country_id=>56).first_or_create
State.where(:id=>686,:iso=>"79",:name=>"Jihočeský Kraj",:country_id=>56).first_or_create
State.where(:id=>687,:iso=>"80",:name=>"Vysočina",:country_id=>56).first_or_create
State.where(:id=>688,:iso=>"81",:name=>"Karlovarský Kraj",:country_id=>56).first_or_create
State.where(:id=>689,:iso=>"82",:name=>"Královéhradecký Kraj",:country_id=>56).first_or_create
State.where(:id=>690,:iso=>"83",:name=>"Liberecký Kraj",:country_id=>56).first_or_create
State.where(:id=>691,:iso=>"84",:name=>"Olomoucký Kraj",:country_id=>56).first_or_create
State.where(:id=>692,:iso=>"85",:name=>"Moravskoslezský Kraj",:country_id=>56).first_or_create
State.where(:id=>693,:iso=>"86",:name=>"Pardubický Kraj",:country_id=>56).first_or_create
State.where(:id=>694,:iso=>"87",:name=>"Plzeňský Kraj",:country_id=>56).first_or_create
State.where(:id=>695,:iso=>"88",:name=>"Středočeský Kraj",:country_id=>56).first_or_create
State.where(:id=>696,:iso=>"89",:name=>"Ústecký Kraj",:country_id=>56).first_or_create
State.where(:id=>697,:iso=>"90",:name=>"Zlínský Kraj",:country_id=>56).first_or_create
State.where(:id=>698,:iso=>"15",:name=>"Thuringia",:country_id=>57).first_or_create
State.where(:id=>699,:iso=>"10",:name=>"Schleswig-Holstein",:country_id=>57).first_or_create
State.where(:id=>700,:iso=>"14",:name=>"Saxony-Anhalt",:country_id=>57).first_or_create
State.where(:id=>701,:iso=>"13",:name=>"Saxony",:country_id=>57).first_or_create
State.where(:id=>702,:iso=>"09",:name=>"Saarland",:country_id=>57).first_or_create
State.where(:id=>703,:iso=>"08",:name=>"Rhineland-Palatinate",:country_id=>57).first_or_create
State.where(:id=>704,:iso=>"07",:name=>"North Rhine-Westphalia",:country_id=>57).first_or_create
State.where(:id=>705,:iso=>"06",:name=>"Lower Saxony",:country_id=>57).first_or_create
State.where(:id=>706,:iso=>"12",:name=>"Mecklenburg-Vorpommern",:country_id=>57).first_or_create
State.where(:id=>707,:iso=>"05",:name=>"Hesse",:country_id=>57).first_or_create
State.where(:id=>708,:iso=>"04",:name=>"Hamburg",:country_id=>57).first_or_create
State.where(:id=>709,:iso=>"03",:name=>"Bremen",:country_id=>57).first_or_create
State.where(:id=>710,:iso=>"11",:name=>"Brandenburg",:country_id=>57).first_or_create
State.where(:id=>711,:iso=>"16",:name=>"Berlin",:country_id=>57).first_or_create
State.where(:id=>712,:iso=>"02",:name=>"Bavaria",:country_id=>57).first_or_create
State.where(:id=>713,:iso=>"01",:name=>"Baden-Württemberg",:country_id=>57).first_or_create
State.where(:id=>714,:iso=>"05",:name=>"Tadjourah",:country_id=>58).first_or_create
State.where(:id=>715,:iso=>"04",:name=>"Obock",:country_id=>58).first_or_create
State.where(:id=>716,:iso=>"07",:name=>"Djibouti",:country_id=>58).first_or_create
State.where(:id=>717,:iso=>"06",:name=>"Dikhil",:country_id=>58).first_or_create
State.where(:id=>718,:iso=>"01",:name=>"Ali Sabieh",:country_id=>58).first_or_create
State.where(:id=>719,:iso=>"08",:name=>"Arta",:country_id=>58).first_or_create
State.where(:id=>720,:iso=>"17",:name=>"Capital Region",:country_id=>59).first_or_create
State.where(:id=>721,:iso=>"18",:name=>"Central Jutland",:country_id=>59).first_or_create
State.where(:id=>722,:iso=>"19",:name=>"Region North Jutland",:country_id=>59).first_or_create
State.where(:id=>723,:iso=>"20",:name=>"Zealand",:country_id=>59).first_or_create
State.where(:id=>724,:iso=>"21",:name=>"South Denmark",:country_id=>59).first_or_create
State.where(:id=>725,:iso=>"11",:name=>"Saint Peter",:country_id=>60).first_or_create
State.where(:id=>726,:iso=>"10",:name=>"Saint Paul",:country_id=>60).first_or_create
State.where(:id=>727,:iso=>"09",:name=>"Saint Patrick",:country_id=>60).first_or_create
State.where(:id=>728,:iso=>"08",:name=>"Saint Mark",:country_id=>60).first_or_create
State.where(:id=>729,:iso=>"07",:name=>"Saint Luke",:country_id=>60).first_or_create
State.where(:id=>730,:iso=>"06",:name=>"Saint Joseph",:country_id=>60).first_or_create
State.where(:id=>731,:iso=>"05",:name=>"Saint John",:country_id=>60).first_or_create
State.where(:id=>732,:iso=>"04",:name=>"Saint George",:country_id=>60).first_or_create
State.where(:id=>733,:iso=>"03",:name=>"Saint David",:country_id=>60).first_or_create
State.where(:id=>734,:iso=>"02",:name=>"Saint Andrew",:country_id=>60).first_or_create
State.where(:id=>735,:iso=>"27",:name=>"Valverde",:country_id=>61).first_or_create
State.where(:id=>736,:iso=>"26",:name=>"Santiago Rodríguez",:country_id=>61).first_or_create
State.where(:id=>737,:iso=>"25",:name=>"Santiago",:country_id=>61).first_or_create
State.where(:id=>738,:iso=>"24",:name=>"San Pedro de Macorís",:country_id=>61).first_or_create
State.where(:id=>739,:iso=>"23",:name=>"San Juan",:country_id=>61).first_or_create
State.where(:id=>740,:iso=>"33",:name=>"San Cristóbal",:country_id=>61).first_or_create
State.where(:id=>741,:iso=>"21",:name=>"Sánchez Ramírez",:country_id=>61).first_or_create
State.where(:id=>742,:iso=>"20",:name=>"Samaná",:country_id=>61).first_or_create
State.where(:id=>743,:iso=>"19",:name=>"Hermanas Mirabal",:country_id=>61).first_or_create
State.where(:id=>744,:iso=>"18",:name=>"Puerto Plata",:country_id=>61).first_or_create
State.where(:id=>745,:iso=>"35",:name=>"Peravia",:country_id=>61).first_or_create
State.where(:id=>746,:iso=>"16",:name=>"Pedernales",:country_id=>61).first_or_create
State.where(:id=>747,:iso=>"34",:name=>"Distrito Nacional",:country_id=>61).first_or_create
State.where(:id=>748,:iso=>"32",:name=>"Monte Plata",:country_id=>61).first_or_create
State.where(:id=>749,:iso=>"15",:name=>"Monte Cristi",:country_id=>61).first_or_create
State.where(:id=>750,:iso=>"31",:name=>"Monseñor Nouel",:country_id=>61).first_or_create
State.where(:id=>751,:iso=>"14",:name=>"María Trinidad Sánchez",:country_id=>61).first_or_create
State.where(:id=>752,:iso=>"30",:name=>"La Vega",:country_id=>61).first_or_create
State.where(:id=>753,:iso=>"12",:name=>"La Romana",:country_id=>61).first_or_create
State.where(:id=>754,:iso=>"10",:name=>"La Altagracia",:country_id=>61).first_or_create
State.where(:id=>755,:iso=>"09",:name=>"Independencia",:country_id=>61).first_or_create
State.where(:id=>756,:iso=>"29",:name=>"Hato Mayor",:country_id=>61).first_or_create
State.where(:id=>757,:iso=>"08",:name=>"Espaillat",:country_id=>61).first_or_create
State.where(:id=>758,:iso=>"28",:name=>"El Seíbo",:country_id=>61).first_or_create
State.where(:id=>759,:iso=>"11",:name=>"Elías Piña",:country_id=>61).first_or_create
State.where(:id=>760,:iso=>"06",:name=>"Duarte",:country_id=>61).first_or_create
State.where(:id=>761,:iso=>"04",:name=>"Dajabón",:country_id=>61).first_or_create
State.where(:id=>762,:iso=>"03",:name=>"Barahona",:country_id=>61).first_or_create
State.where(:id=>763,:iso=>"02",:name=>"Baoruco",:country_id=>61).first_or_create
State.where(:id=>764,:iso=>"01",:name=>"Azua",:country_id=>61).first_or_create
State.where(:id=>765,:iso=>"36",:name=>"San José de Ocoa",:country_id=>61).first_or_create
State.where(:id=>766,:iso=>"37",:name=>"Santo Domingo",:country_id=>61).first_or_create
State.where(:id=>767,:iso=>"15",:name=>"Tlemcen",:country_id=>62).first_or_create
State.where(:id=>768,:iso=>"14",:name=>"Tizi Ouzou",:country_id=>62).first_or_create
State.where(:id=>769,:iso=>"56",:name=>"Tissemsilt",:country_id=>62).first_or_create
State.where(:id=>770,:iso=>"55",:name=>"Tipaza",:country_id=>62).first_or_create
State.where(:id=>771,:iso=>"54",:name=>"Tindouf",:country_id=>62).first_or_create
State.where(:id=>772,:iso=>"13",:name=>"Tiaret",:country_id=>62).first_or_create
State.where(:id=>773,:iso=>"33",:name=>"Tébessa",:country_id=>62).first_or_create
State.where(:id=>774,:iso=>"53",:name=>"Tamanghasset",:country_id=>62).first_or_create
State.where(:id=>775,:iso=>"52",:name=>"Souk Ahras",:country_id=>62).first_or_create
State.where(:id=>776,:iso=>"31",:name=>"Skikda",:country_id=>62).first_or_create
State.where(:id=>777,:iso=>"30",:name=>"Sidi Bel Abbès",:country_id=>62).first_or_create
State.where(:id=>778,:iso=>"12",:name=>"Sétif",:country_id=>62).first_or_create
State.where(:id=>779,:iso=>"10",:name=>"Saïda",:country_id=>62).first_or_create
State.where(:id=>780,:iso=>"51",:name=>"Relizane",:country_id=>62).first_or_create
State.where(:id=>781,:iso=>"29",:name=>"Oum el Bouaghi",:country_id=>62).first_or_create
State.where(:id=>782,:iso=>"50",:name=>"Ouargla",:country_id=>62).first_or_create
State.where(:id=>783,:iso=>"09",:name=>"Oran",:country_id=>62).first_or_create
State.where(:id=>784,:iso=>"49",:name=>"Naama النعامة",:country_id=>62).first_or_create
State.where(:id=>785,:iso=>"27",:name=>"Mʼsila",:country_id=>62).first_or_create
State.where(:id=>786,:iso=>"07",:name=>"Mostaganem",:country_id=>62).first_or_create
State.where(:id=>787,:iso=>"48",:name=>"Mila",:country_id=>62).first_or_create
State.where(:id=>788,:iso=>"06",:name=>"Médéa",:country_id=>62).first_or_create
State.where(:id=>789,:iso=>"26",:name=>"Mascara",:country_id=>62).first_or_create
State.where(:id=>790,:iso=>"25",:name=>"Laghouat",:country_id=>62).first_or_create
State.where(:id=>791,:iso=>"47",:name=>"Khenchela",:country_id=>62).first_or_create
State.where(:id=>792,:iso=>"24",:name=>"Jijel",:country_id=>62).first_or_create
State.where(:id=>793,:iso=>"46",:name=>"Illizi",:country_id=>62).first_or_create
State.where(:id=>794,:iso=>"23",:name=>"Guelma",:country_id=>62).first_or_create
State.where(:id=>795,:iso=>"45",:name=>"Ghardaïa",:country_id=>62).first_or_create
State.where(:id=>796,:iso=>"44",:name=>"El Tarf",:country_id=>62).first_or_create
State.where(:id=>797,:iso=>"43",:name=>"El Oued",:country_id=>62).first_or_create
State.where(:id=>798,:iso=>"42",:name=>"El Bayadh",:country_id=>62).first_or_create
State.where(:id=>799,:iso=>"22",:name=>"Djelfa",:country_id=>62).first_or_create
State.where(:id=>800,:iso=>"04",:name=>"Constantine",:country_id=>62).first_or_create
State.where(:id=>801,:iso=>"41",:name=>"Chlef",:country_id=>62).first_or_create
State.where(:id=>802,:iso=>"40",:name=>"Boumerdes",:country_id=>62).first_or_create
State.where(:id=>803,:iso=>"21",:name=>"Bouira",:country_id=>62).first_or_create
State.where(:id=>804,:iso=>"39",:name=>"Bordj Bou Arréridj",:country_id=>62).first_or_create
State.where(:id=>805,:iso=>"20",:name=>"Blida",:country_id=>62).first_or_create
State.where(:id=>806,:iso=>"19",:name=>"Biskra",:country_id=>62).first_or_create
State.where(:id=>807,:iso=>"18",:name=>"Bejaïa",:country_id=>62).first_or_create
State.where(:id=>808,:iso=>"38",:name=>"Béchar",:country_id=>62).first_or_create
State.where(:id=>809,:iso=>"03",:name=>"Batna",:country_id=>62).first_or_create
State.where(:id=>810,:iso=>"37",:name=>"Annaba",:country_id=>62).first_or_create
State.where(:id=>811,:iso=>"01",:name=>"Alger",:country_id=>62).first_or_create
State.where(:id=>812,:iso=>"36",:name=>"Aïn Temouchent",:country_id=>62).first_or_create
State.where(:id=>813,:iso=>"35",:name=>"Aïn Defla",:country_id=>62).first_or_create
State.where(:id=>814,:iso=>"34",:name=>"Adrar",:country_id=>62).first_or_create
State.where(:id=>815,:iso=>"20",:name=>"Zamora-Chinchipe",:country_id=>63).first_or_create
State.where(:id=>816,:iso=>"19",:name=>"Tungurahua",:country_id=>63).first_or_create
State.where(:id=>817,:iso=>"18",:name=>"Pichincha",:country_id=>63).first_or_create
State.where(:id=>818,:iso=>"17",:name=>"Pastaza",:country_id=>63).first_or_create
State.where(:id=>819,:iso=>"23",:name=>"Napo",:country_id=>63).first_or_create
State.where(:id=>820,:iso=>"15",:name=>"Morona-Santiago",:country_id=>63).first_or_create
State.where(:id=>821,:iso=>"14",:name=>"Manabí",:country_id=>63).first_or_create
State.where(:id=>822,:iso=>"13",:name=>"Los Ríos",:country_id=>63).first_or_create
State.where(:id=>823,:iso=>"12",:name=>"Loja",:country_id=>63).first_or_create
State.where(:id=>824,:iso=>"11",:name=>"Imbabura",:country_id=>63).first_or_create
State.where(:id=>825,:iso=>"10",:name=>"Guayas",:country_id=>63).first_or_create
State.where(:id=>826,:iso=>"01",:name=>"Galápagos",:country_id=>63).first_or_create
State.where(:id=>827,:iso=>"09",:name=>"Esmeraldas",:country_id=>63).first_or_create
State.where(:id=>828,:iso=>"08",:name=>"El Oro",:country_id=>63).first_or_create
State.where(:id=>829,:iso=>"07",:name=>"Cotopaxi",:country_id=>63).first_or_create
State.where(:id=>830,:iso=>"06",:name=>"Chimborazo",:country_id=>63).first_or_create
State.where(:id=>831,:iso=>"05",:name=>"Carchi",:country_id=>63).first_or_create
State.where(:id=>832,:iso=>"04",:name=>"Cañar",:country_id=>63).first_or_create
State.where(:id=>833,:iso=>"03",:name=>"Bolívar",:country_id=>63).first_or_create
State.where(:id=>834,:iso=>"02",:name=>"Azuay",:country_id=>63).first_or_create
State.where(:id=>835,:iso=>"22",:name=>"Sucumbios",:country_id=>63).first_or_create
State.where(:id=>836,:iso=>"24",:name=>"Orellana",:country_id=>63).first_or_create
State.where(:id=>837,:iso=>"26",:name=>"Santo Domingo de los Tsáchilas",:country_id=>63).first_or_create
State.where(:id=>838,:iso=>"25",:name=>"Santa Elena",:country_id=>63).first_or_create
State.where(:id=>839,:iso=>"21",:name=>"Võrumaa",:country_id=>64).first_or_create
State.where(:id=>840,:iso=>"20",:name=>"Viljandimaa",:country_id=>64).first_or_create
State.where(:id=>841,:iso=>"19",:name=>"Valgamaa",:country_id=>64).first_or_create
State.where(:id=>842,:iso=>"18",:name=>"Tartumaa",:country_id=>64).first_or_create
State.where(:id=>843,:iso=>"14",:name=>"Saaremaa",:country_id=>64).first_or_create
State.where(:id=>844,:iso=>"13",:name=>"Raplamaa",:country_id=>64).first_or_create
State.where(:id=>845,:iso=>"12",:name=>"Põlvamaa",:country_id=>64).first_or_create
State.where(:id=>846,:iso=>"11",:name=>"Pärnumaa",:country_id=>64).first_or_create
State.where(:id=>847,:iso=>"08",:name=>"Lääne-Virumaa",:country_id=>64).first_or_create
State.where(:id=>848,:iso=>"07",:name=>"Läänemaa",:country_id=>64).first_or_create
State.where(:id=>849,:iso=>"05",:name=>"Jõgevamaa",:country_id=>64).first_or_create
State.where(:id=>850,:iso=>"04",:name=>"Järvamaa",:country_id=>64).first_or_create
State.where(:id=>851,:iso=>"03",:name=>"Ida-Virumaa",:country_id=>64).first_or_create
State.where(:id=>852,:iso=>"02",:name=>"Hiiumaa",:country_id=>64).first_or_create
State.where(:id=>853,:iso=>"01",:name=>"Harjumaa",:country_id=>64).first_or_create
State.where(:id=>854,:iso=>"24",:name=>"Sūhāj",:country_id=>65).first_or_create
State.where(:id=>855,:iso=>"27",:name=>"Shamāl Sīnāʼ",:country_id=>65).first_or_create
State.where(:id=>856,:iso=>"23",:name=>"Qinā",:country_id=>65).first_or_create
State.where(:id=>857,:iso=>"22",:name=>"Maţrūḩ",:country_id=>65).first_or_create
State.where(:id=>858,:iso=>"21",:name=>"Kafr ash Shaykh",:country_id=>65).first_or_create
State.where(:id=>859,:iso=>"26",:name=>"Janūb Sīnāʼ",:country_id=>65).first_or_create
State.where(:id=>860,:iso=>"20",:name=>"Dumyāţ",:country_id=>65).first_or_create
State.where(:id=>861,:iso=>"19",:name=>"Būr Sa‘īd",:country_id=>65).first_or_create
State.where(:id=>862,:iso=>"18",:name=>"Banī Suwayf",:country_id=>65).first_or_create
State.where(:id=>863,:iso=>"17",:name=>"Asyūţ",:country_id=>65).first_or_create
State.where(:id=>864,:iso=>"16",:name=>"Aswān",:country_id=>65).first_or_create
State.where(:id=>865,:iso=>"15",:name=>"As Suways",:country_id=>65).first_or_create
State.where(:id=>866,:iso=>"14",:name=>"Eastern Province",:country_id=>65).first_or_create
State.where(:id=>867,:iso=>"13",:name=>"Al Wādī al Jadīd",:country_id=>65).first_or_create
State.where(:id=>868,:iso=>"12",:name=>"Al Qalyūbīyah",:country_id=>65).first_or_create
State.where(:id=>869,:iso=>"11",:name=>"Al Qāhirah",:country_id=>65).first_or_create
State.where(:id=>870,:iso=>"10",:name=>"Al Minyā",:country_id=>65).first_or_create
State.where(:id=>871,:iso=>"09",:name=>"Al Minūfīyah",:country_id=>65).first_or_create
State.where(:id=>872,:iso=>"08",:name=>"Al Jīzah",:country_id=>65).first_or_create
State.where(:id=>873,:iso=>"07",:name=>"Al Ismā‘īlīyah",:country_id=>65).first_or_create
State.where(:id=>874,:iso=>"06",:name=>"Alexandria",:country_id=>65).first_or_create
State.where(:id=>875,:iso=>"05",:name=>"Al Gharbīyah",:country_id=>65).first_or_create
State.where(:id=>876,:iso=>"04",:name=>"Al Fayyūm",:country_id=>65).first_or_create
State.where(:id=>877,:iso=>"03",:name=>"Al Buḩayrah",:country_id=>65).first_or_create
State.where(:id=>878,:iso=>"02",:name=>"Al Baḩr al Aḩmar",:country_id=>65).first_or_create
State.where(:id=>879,:iso=>"01",:name=>"Ad Daqahlīyah",:country_id=>65).first_or_create
State.where(:id=>880,:iso=>"28",:name=>"Muḩāfaz̧at al Uqşur",:country_id=>65).first_or_create
State.where(:id=>881,:iso=>"CE",:name=>"Oued Ed-Dahab-Lagouira",:country_id=>66).first_or_create
State.where(:id=>882,:iso=>"01",:name=>"Ānseba",:country_id=>67).first_or_create
State.where(:id=>883,:iso=>"02",:name=>"Debub",:country_id=>67).first_or_create
State.where(:id=>884,:iso=>"03",:name=>"Debubawī Kʼeyih Bahrī",:country_id=>67).first_or_create
State.where(:id=>885,:iso=>"04",:name=>"Gash Barka",:country_id=>67).first_or_create
State.where(:id=>886,:iso=>"05",:name=>"Maʼākel",:country_id=>67).first_or_create
State.where(:id=>887,:iso=>"06",:name=>"Semēnawī Kʼeyih Bahrī",:country_id=>67).first_or_create
State.where(:id=>888,:iso=>"31",:name=>"Murcia",:country_id=>68).first_or_create
State.where(:id=>889,:iso=>"CE",:name=>"Ceuta",:country_id=>68).first_or_create
State.where(:id=>890,:iso=>"07",:name=>"Balearic Islands",:country_id=>68).first_or_create
State.where(:id=>891,:iso=>"51",:name=>"Andalusia",:country_id=>68).first_or_create
State.where(:id=>892,:iso=>"53",:name=>"Canary Islands",:country_id=>68).first_or_create
State.where(:id=>893,:iso=>"54",:name=>"Castille-La Mancha",:country_id=>68).first_or_create
State.where(:id=>894,:iso=>"57",:name=>"Extremadura",:country_id=>68).first_or_create
State.where(:id=>895,:iso=>"60",:name=>"Valencia",:country_id=>68).first_or_create
State.where(:id=>896,:iso=>"34",:name=>"Asturias",:country_id=>68).first_or_create
State.where(:id=>897,:iso=>"32",:name=>"Navarre",:country_id=>68).first_or_create
State.where(:id=>898,:iso=>"29",:name=>"Madrid",:country_id=>68).first_or_create
State.where(:id=>899,:iso=>"27",:name=>"La Rioja",:country_id=>68).first_or_create
State.where(:id=>900,:iso=>"39",:name=>"Cantabria",:country_id=>68).first_or_create
State.where(:id=>901,:iso=>"52",:name=>"Aragon",:country_id=>68).first_or_create
State.where(:id=>902,:iso=>"55",:name=>"Castile and León",:country_id=>68).first_or_create
State.where(:id=>903,:iso=>"56",:name=>"Catalonia",:country_id=>68).first_or_create
State.where(:id=>904,:iso=>"58",:name=>"Galicia",:country_id=>68).first_or_create
State.where(:id=>905,:iso=>"59",:name=>"Basque Country",:country_id=>68).first_or_create
State.where(:id=>906,:iso=>"ML",:name=>"Melilla",:country_id=>68).first_or_create
State.where(:id=>907,:iso=>"44",:name=>"Ādīs Ābeba",:country_id=>69).first_or_create
State.where(:id=>908,:iso=>"45",:name=>"Afar Regional State",:country_id=>69).first_or_create
State.where(:id=>909,:iso=>"46",:name=>"The State of Amhara",:country_id=>69).first_or_create
State.where(:id=>910,:iso=>"47",:name=>"Beneshangual Gumz Regional State",:country_id=>69).first_or_create
State.where(:id=>911,:iso=>"48",:name=>"Dire Dawa Region",:country_id=>69).first_or_create
State.where(:id=>912,:iso=>"49",:name=>"Gambela",:country_id=>69).first_or_create
State.where(:id=>913,:iso=>"50",:name=>"The State of Harari People",:country_id=>69).first_or_create
State.where(:id=>914,:iso=>"51",:name=>"Oromia Regional State",:country_id=>69).first_or_create
State.where(:id=>915,:iso=>"52",:name=>"Somalia Regional State",:country_id=>69).first_or_create
State.where(:id=>916,:iso=>"53",:name=>"Tigray Regional State",:country_id=>69).first_or_create
State.where(:id=>917,:iso=>"54",:name=>"SSNPR",:country_id=>69).first_or_create
State.where(:id=>918,:iso=>"40",:name=>"Ilubabor",:country_id=>69).first_or_create
State.where(:id=>919,:iso=>"08",:name=>"Oulu",:country_id=>70).first_or_create
State.where(:id=>920,:iso=>"06",:name=>"Lapponia",:country_id=>70).first_or_create
State.where(:id=>921,:iso=>"13",:name=>"Southern Finland",:country_id=>70).first_or_create
State.where(:id=>922,:iso=>"14",:name=>"Province of Eastern Finland",:country_id=>70).first_or_create
State.where(:id=>923,:iso=>"15",:name=>"Western Finland",:country_id=>70).first_or_create
State.where(:id=>924,:iso=>"05",:name=>"Western",:country_id=>71).first_or_create
State.where(:id=>925,:iso=>"03",:name=>"Northern",:country_id=>71).first_or_create
State.where(:id=>926,:iso=>"01",:name=>"Central",:country_id=>71).first_or_create
State.where(:id=>927,:iso=>"02",:name=>"Eastern",:country_id=>71).first_or_create
State.where(:id=>928,:iso=>"04",:name=>"Rotuma",:country_id=>71).first_or_create
State.where(:id=>929,:iso=>"04",:name=>"Yap",:country_id=>73).first_or_create
State.where(:id=>930,:iso=>"02",:name=>"Pohnpei",:country_id=>73).first_or_create
State.where(:id=>931,:iso=>"01",:name=>"Kosrae",:country_id=>73).first_or_create
State.where(:id=>932,:iso=>"03",:name=>"Chuuk",:country_id=>73).first_or_create
State.where(:id=>933,:iso=>"VG",:name=>"Vágar",:country_id=>74).first_or_create
State.where(:id=>934,:iso=>"SU",:name=>"Suðuroy",:country_id=>74).first_or_create
State.where(:id=>935,:iso=>"ST",:name=>"Streymoy",:country_id=>74).first_or_create
State.where(:id=>936,:iso=>"SA",:name=>"Sandoy",:country_id=>74).first_or_create
State.where(:id=>937,:iso=>"NO",:name=>"Norðoyar",:country_id=>74).first_or_create
State.where(:id=>938,:iso=>"OS",:name=>"Eysturoy",:country_id=>74).first_or_create
State.where(:id=>939,:iso=>"B9",:name=>"Rhône-Alpes",:country_id=>75).first_or_create
State.where(:id=>940,:iso=>"B8",:name=>"Provence-Alpes-Côte d'Azur",:country_id=>75).first_or_create
State.where(:id=>941,:iso=>"B7",:name=>"Poitou-Charentes",:country_id=>75).first_or_create
State.where(:id=>942,:iso=>"B6",:name=>"Picardie",:country_id=>75).first_or_create
State.where(:id=>943,:iso=>"B5",:name=>"Pays de la Loire",:country_id=>75).first_or_create
State.where(:id=>944,:iso=>"B4",:name=>"Nord-Pas-de-Calais",:country_id=>75).first_or_create
State.where(:id=>945,:iso=>"B3",:name=>"Midi-Pyrénées",:country_id=>75).first_or_create
State.where(:id=>946,:iso=>"B2",:name=>"Lorraine",:country_id=>75).first_or_create
State.where(:id=>947,:iso=>"B1",:name=>"Limousin",:country_id=>75).first_or_create
State.where(:id=>948,:iso=>"A9",:name=>"Languedoc-Roussillon",:country_id=>75).first_or_create
State.where(:id=>949,:iso=>"A8",:name=>"Île-de-France",:country_id=>75).first_or_create
State.where(:id=>950,:iso=>"A7",:name=>"Haute-Normandie",:country_id=>75).first_or_create
State.where(:id=>951,:iso=>"A6",:name=>"Franche-Comté",:country_id=>75).first_or_create
State.where(:id=>952,:iso=>"A5",:name=>"Corsica",:country_id=>75).first_or_create
State.where(:id=>953,:iso=>"A4",:name=>"Champagne-Ardenne",:country_id=>75).first_or_create
State.where(:id=>954,:iso=>"A3",:name=>"Centre",:country_id=>75).first_or_create
State.where(:id=>955,:iso=>"A2",:name=>"Brittany",:country_id=>75).first_or_create
State.where(:id=>956,:iso=>"A1",:name=>"Bourgogne",:country_id=>75).first_or_create
State.where(:id=>957,:iso=>"99",:name=>"Basse-Normandie",:country_id=>75).first_or_create
State.where(:id=>958,:iso=>"98",:name=>"Auvergne",:country_id=>75).first_or_create
State.where(:id=>959,:iso=>"97",:name=>"Aquitaine",:country_id=>75).first_or_create
State.where(:id=>960,:iso=>"C1",:name=>"Alsace",:country_id=>75).first_or_create
State.where(:id=>961,:iso=>"09",:name=>"Woleu-Ntem",:country_id=>76).first_or_create
State.where(:id=>962,:iso=>"08",:name=>"Ogooué-Maritime",:country_id=>76).first_or_create
State.where(:id=>963,:iso=>"07",:name=>"Ogooué-Lolo",:country_id=>76).first_or_create
State.where(:id=>964,:iso=>"06",:name=>"Ogooué-Ivindo",:country_id=>76).first_or_create
State.where(:id=>965,:iso=>"05",:name=>"Nyanga",:country_id=>76).first_or_create
State.where(:id=>966,:iso=>"04",:name=>"Ngounié",:country_id=>76).first_or_create
State.where(:id=>967,:iso=>"03",:name=>"Moyen-Ogooué",:country_id=>76).first_or_create
State.where(:id=>968,:iso=>"02",:name=>"Haut-Ogooué",:country_id=>76).first_or_create
State.where(:id=>969,:iso=>"01",:name=>"Estuaire",:country_id=>76).first_or_create
State.where(:id=>970,:iso=>"WLS",:name=>"Wales",:country_id=>77).first_or_create
State.where(:id=>971,:iso=>"SCT",:name=>"Scotland",:country_id=>77).first_or_create
State.where(:id=>972,:iso=>"NIR",:name=>"N Ireland",:country_id=>77).first_or_create
State.where(:id=>973,:iso=>"ENG",:name=>"England",:country_id=>77).first_or_create
State.where(:id=>974,:iso=>"06",:name=>"Saint Patrick",:country_id=>78).first_or_create
State.where(:id=>975,:iso=>"05",:name=>"Saint Mark",:country_id=>78).first_or_create
State.where(:id=>976,:iso=>"04",:name=>"Saint John",:country_id=>78).first_or_create
State.where(:id=>977,:iso=>"03",:name=>"Saint George",:country_id=>78).first_or_create
State.where(:id=>978,:iso=>"02",:name=>"Saint David",:country_id=>78).first_or_create
State.where(:id=>979,:iso=>"01",:name=>"Saint Andrew",:country_id=>78).first_or_create
State.where(:id=>980,:iso=>"10",:name=>"Carriacou and Petite Martinique",:country_id=>78).first_or_create
State.where(:id=>981,:iso=>"51",:name=>"T'bilisi",:country_id=>79).first_or_create
State.where(:id=>982,:iso=>"04",:name=>"Ajaria",:country_id=>79).first_or_create
State.where(:id=>983,:iso=>"68",:name=>"Kvemo Kartli",:country_id=>79).first_or_create
State.where(:id=>984,:iso=>"67",:name=>"Kakheti",:country_id=>79).first_or_create
State.where(:id=>985,:iso=>"65",:name=>"Guria",:country_id=>79).first_or_create
State.where(:id=>986,:iso=>"66",:name=>"Imereti",:country_id=>79).first_or_create
State.where(:id=>987,:iso=>"73",:name=>"Shida Kartli",:country_id=>79).first_or_create
State.where(:id=>988,:iso=>"69",:name=>"Mtskheta-Mtianeti",:country_id=>79).first_or_create
State.where(:id=>989,:iso=>"70",:name=>"Racha-Lechkhumi and Kvemo Svaneti",:country_id=>79).first_or_create
State.where(:id=>990,:iso=>"71",:name=>"Samegrelo and Zemo Svaneti",:country_id=>79).first_or_create
State.where(:id=>991,:iso=>"72",:name=>"Samtskhe-Javakheti",:country_id=>79).first_or_create
State.where(:id=>992,:iso=>"02",:name=>"Abkhazia",:country_id=>79).first_or_create
State.where(:id=>993,:iso=>"GF",:name=>"Guyane",:country_id=>80).first_or_create
State.where(:id=>994,:iso=>"09",:name=>"Western",:country_id=>82).first_or_create
State.where(:id=>995,:iso=>"08",:name=>"Volta",:country_id=>82).first_or_create
State.where(:id=>996,:iso=>"11",:name=>"Upper West",:country_id=>82).first_or_create
State.where(:id=>997,:iso=>"10",:name=>"Upper East",:country_id=>82).first_or_create
State.where(:id=>998,:iso=>"06",:name=>"Northern",:country_id=>82).first_or_create
State.where(:id=>999,:iso=>"01",:name=>"Greater Accra",:country_id=>82).first_or_create
State.where(:id=>1000,:iso=>"05",:name=>"Eastern",:country_id=>82).first_or_create
State.where(:id=>1001,:iso=>"04",:name=>"Central",:country_id=>82).first_or_create
State.where(:id=>1002,:iso=>"03",:name=>"Brong-Ahafo",:country_id=>82).first_or_create
State.where(:id=>1003,:iso=>"02",:name=>"Ashanti",:country_id=>82).first_or_create
State.where(:id=>1004,:iso=>"05",:name=>"Qaasuitsup",:country_id=>84).first_or_create
State.where(:id=>1005,:iso=>"04",:name=>"Kujalleq",:country_id=>84).first_or_create
State.where(:id=>1006,:iso=>"06",:name=>"Qeqqata",:country_id=>84).first_or_create
State.where(:id=>1007,:iso=>"07",:name=>"Sermersooq",:country_id=>84).first_or_create
State.where(:id=>1008,:iso=>"05",:name=>"Western",:country_id=>85).first_or_create
State.where(:id=>1009,:iso=>"04",:name=>"Upper River",:country_id=>85).first_or_create
State.where(:id=>1010,:iso=>"07",:name=>"North Bank",:country_id=>85).first_or_create
State.where(:id=>1011,:iso=>"03",:name=>"Central River",:country_id=>85).first_or_create
State.where(:id=>1012,:iso=>"02",:name=>"Lower River",:country_id=>85).first_or_create
State.where(:id=>1013,:iso=>"01",:name=>"Banjul",:country_id=>85).first_or_create
State.where(:id=>1014,:iso=>"29",:name=>"Yomou",:country_id=>86).first_or_create
State.where(:id=>1015,:iso=>"28",:name=>"Tougué",:country_id=>86).first_or_create
State.where(:id=>1016,:iso=>"27",:name=>"Télimélé",:country_id=>86).first_or_create
State.where(:id=>1017,:iso=>"39",:name=>"Siguiri",:country_id=>86).first_or_create
State.where(:id=>1018,:iso=>"25",:name=>"Pita",:country_id=>86).first_or_create
State.where(:id=>1019,:iso=>"38",:name=>"Nzérékoré",:country_id=>86).first_or_create
State.where(:id=>1020,:iso=>"23",:name=>"Mamou",:country_id=>86).first_or_create
State.where(:id=>1021,:iso=>"22",:name=>"Mali",:country_id=>86).first_or_create
State.where(:id=>1022,:iso=>"21",:name=>"Macenta",:country_id=>86).first_or_create
State.where(:id=>1023,:iso=>"34",:name=>"Labé",:country_id=>86).first_or_create
State.where(:id=>1024,:iso=>"19",:name=>"Kouroussa",:country_id=>86).first_or_create
State.where(:id=>1025,:iso=>"18",:name=>"Koundara",:country_id=>86).first_or_create
State.where(:id=>1026,:iso=>"17",:name=>"Kissidougou",:country_id=>86).first_or_create
State.where(:id=>1027,:iso=>"16",:name=>"Kindia",:country_id=>86).first_or_create
State.where(:id=>1028,:iso=>"15",:name=>"Kérouané",:country_id=>86).first_or_create
State.where(:id=>1029,:iso=>"32",:name=>"Kankan",:country_id=>86).first_or_create
State.where(:id=>1030,:iso=>"13",:name=>"Guéckédou",:country_id=>86).first_or_create
State.where(:id=>1031,:iso=>"12",:name=>"Gaoual",:country_id=>86).first_or_create
State.where(:id=>1032,:iso=>"11",:name=>"Fria",:country_id=>86).first_or_create
State.where(:id=>1033,:iso=>"10",:name=>"Forécariah",:country_id=>86).first_or_create
State.where(:id=>1034,:iso=>"09",:name=>"Faranah",:country_id=>86).first_or_create
State.where(:id=>1035,:iso=>"31",:name=>"Dubréka",:country_id=>86).first_or_create
State.where(:id=>1036,:iso=>"07",:name=>"Dinguiraye",:country_id=>86).first_or_create
State.where(:id=>1037,:iso=>"06",:name=>"Dalaba",:country_id=>86).first_or_create
State.where(:id=>1038,:iso=>"05",:name=>"Dabola",:country_id=>86).first_or_create
State.where(:id=>1039,:iso=>"04",:name=>"Conakry",:country_id=>86).first_or_create
State.where(:id=>1040,:iso=>"03",:name=>"Boké",:country_id=>86).first_or_create
State.where(:id=>1041,:iso=>"02",:name=>"Boffa",:country_id=>86).first_or_create
State.where(:id=>1042,:iso=>"01",:name=>"Beyla",:country_id=>86).first_or_create
State.where(:id=>1043,:iso=>"30",:name=>"Coyah",:country_id=>86).first_or_create
State.where(:id=>1044,:iso=>"33",:name=>"Koubia",:country_id=>86).first_or_create
State.where(:id=>1045,:iso=>"35",:name=>"Lélouma",:country_id=>86).first_or_create
State.where(:id=>1046,:iso=>"36",:name=>"Lola",:country_id=>86).first_or_create
State.where(:id=>1047,:iso=>"37",:name=>"Mandiana",:country_id=>86).first_or_create
State.where(:id=>1048,:iso=>"GP",:name=>"Guadeloupe",:country_id=>87).first_or_create
State.where(:id=>1049,:iso=>"03",:name=>"Annobón",:country_id=>88).first_or_create
State.where(:id=>1050,:iso=>"04",:name=>"Bioko Norte",:country_id=>88).first_or_create
State.where(:id=>1051,:iso=>"05",:name=>"Bioko Sur",:country_id=>88).first_or_create
State.where(:id=>1052,:iso=>"06",:name=>"Centro Sur",:country_id=>88).first_or_create
State.where(:id=>1053,:iso=>"07",:name=>"Kié-Ntem",:country_id=>88).first_or_create
State.where(:id=>1054,:iso=>"08",:name=>"Litoral",:country_id=>88).first_or_create
State.where(:id=>1055,:iso=>"09",:name=>"Wele-Nzas",:country_id=>88).first_or_create
State.where(:id=>1056,:iso=>"736572",:name=>"Mount Athos",:country_id=>89).first_or_create
State.where(:id=>1057,:iso=>"ESYE31",:name=>"Attiki",:country_id=>89).first_or_create
State.where(:id=>1058,:iso=>"ESYE24",:name=>"Central Greece",:country_id=>89).first_or_create
State.where(:id=>1059,:iso=>"ESYE12",:name=>"Kentriki Makedonia",:country_id=>89).first_or_create
State.where(:id=>1060,:iso=>"ESYE43",:name=>"Kriti",:country_id=>89).first_or_create
State.where(:id=>1061,:iso=>"ESYE11",:name=>"Anatoliki Makedonia kai Thraki",:country_id=>89).first_or_create
State.where(:id=>1062,:iso=>"ESYE21",:name=>"Ipeiros",:country_id=>89).first_or_create
State.where(:id=>1063,:iso=>"ESYE22",:name=>"Ionia Nisia",:country_id=>89).first_or_create
State.where(:id=>1064,:iso=>"ESYE41",:name=>"Voreio Aigaio",:country_id=>89).first_or_create
State.where(:id=>1065,:iso=>"ESYE25",:name=>"Peloponnisos",:country_id=>89).first_or_create
State.where(:id=>1066,:iso=>"ESYE42",:name=>"Notio Aigaio",:country_id=>89).first_or_create
State.where(:id=>1067,:iso=>"ESYE14",:name=>"Thessalia",:country_id=>89).first_or_create
State.where(:id=>1068,:iso=>"ESYE23",:name=>"Ditiki Ellada",:country_id=>89).first_or_create
State.where(:id=>1069,:iso=>"ESYE13",:name=>"Ditiki Makedonia",:country_id=>89).first_or_create
State.where(:id=>1070,:iso=>"22",:name=>"Zacapa",:country_id=>91).first_or_create
State.where(:id=>1071,:iso=>"21",:name=>"Totonicapán",:country_id=>91).first_or_create
State.where(:id=>1072,:iso=>"20",:name=>"Suchitepéquez",:country_id=>91).first_or_create
State.where(:id=>1073,:iso=>"19",:name=>"Sololá",:country_id=>91).first_or_create
State.where(:id=>1074,:iso=>"18",:name=>"Santa Rosa",:country_id=>91).first_or_create
State.where(:id=>1075,:iso=>"17",:name=>"San Marcos",:country_id=>91).first_or_create
State.where(:id=>1076,:iso=>"16",:name=>"Sacatepéquez",:country_id=>91).first_or_create
State.where(:id=>1077,:iso=>"15",:name=>"Retalhuleu",:country_id=>91).first_or_create
State.where(:id=>1078,:iso=>"14",:name=>"Quiché",:country_id=>91).first_or_create
State.where(:id=>1079,:iso=>"13",:name=>"Quetzaltenango",:country_id=>91).first_or_create
State.where(:id=>1080,:iso=>"12",:name=>"Petén",:country_id=>91).first_or_create
State.where(:id=>1081,:iso=>"11",:name=>"Jutiapa",:country_id=>91).first_or_create
State.where(:id=>1082,:iso=>"10",:name=>"Jalapa",:country_id=>91).first_or_create
State.where(:id=>1083,:iso=>"09",:name=>"Izabal",:country_id=>91).first_or_create
State.where(:id=>1084,:iso=>"08",:name=>"Huehuetenango",:country_id=>91).first_or_create
State.where(:id=>1085,:iso=>"07",:name=>"Guatemala",:country_id=>91).first_or_create
State.where(:id=>1086,:iso=>"06",:name=>"Escuintla",:country_id=>91).first_or_create
State.where(:id=>1087,:iso=>"05",:name=>"El Progreso",:country_id=>91).first_or_create
State.where(:id=>1088,:iso=>"04",:name=>"Chiquimula",:country_id=>91).first_or_create
State.where(:id=>1089,:iso=>"03",:name=>"Chimaltenango",:country_id=>91).first_or_create
State.where(:id=>1090,:iso=>"02",:name=>"Baja Verapaz",:country_id=>91).first_or_create
State.where(:id=>1091,:iso=>"01",:name=>"Alta Verapaz",:country_id=>91).first_or_create
State.where(:id=>1092,:iso=>"PI",:name=>"Piti Municipality",:country_id=>92).first_or_create
State.where(:id=>1093,:iso=>"SR",:name=>"Santa Rita Municipality",:country_id=>92).first_or_create
State.where(:id=>1094,:iso=>"SJ",:name=>"Sinajana Municipality",:country_id=>92).first_or_create
State.where(:id=>1095,:iso=>"TF",:name=>"Talofofo Municipality",:country_id=>92).first_or_create
State.where(:id=>1096,:iso=>"TM",:name=>"Tamuning-Tumon-Harmon Municipality",:country_id=>92).first_or_create
State.where(:id=>1097,:iso=>"UM",:name=>"Umatac Municipality",:country_id=>92).first_or_create
State.where(:id=>1098,:iso=>"YG",:name=>"Yigo Municipality",:country_id=>92).first_or_create
State.where(:id=>1099,:iso=>"YN",:name=>"Yona Municipality",:country_id=>92).first_or_create
State.where(:id=>1100,:iso=>"ME",:name=>"Merizo Municipality",:country_id=>92).first_or_create
State.where(:id=>1101,:iso=>"MA",:name=>"Mangilao Municipality",:country_id=>92).first_or_create
State.where(:id=>1102,:iso=>"AH",:name=>"Agana Heights Municipality",:country_id=>92).first_or_create
State.where(:id=>1103,:iso=>"CP",:name=>"Chalan Pago-Ordot Municipality",:country_id=>92).first_or_create
State.where(:id=>1104,:iso=>"AS",:name=>"Asan-Maina Municipality",:country_id=>92).first_or_create
State.where(:id=>1105,:iso=>"AT",:name=>"Agat Municipality",:country_id=>92).first_or_create
State.where(:id=>1106,:iso=>"DD",:name=>"Dededo Municipality",:country_id=>92).first_or_create
State.where(:id=>1107,:iso=>"BA",:name=>"Barrigada Municipality",:country_id=>92).first_or_create
State.where(:id=>1108,:iso=>"AN",:name=>"Hagatna Municipality",:country_id=>92).first_or_create
State.where(:id=>1109,:iso=>"IN",:name=>"Inarajan Municipality",:country_id=>92).first_or_create
State.where(:id=>1110,:iso=>"MT",:name=>"Mongmong-Toto-Maite Municipality",:country_id=>92).first_or_create
State.where(:id=>1111,:iso=>"07",:name=>"Tombali",:country_id=>93).first_or_create
State.where(:id=>1112,:iso=>"02",:name=>"Quinara",:country_id=>93).first_or_create
State.where(:id=>1113,:iso=>"04",:name=>"Oio",:country_id=>93).first_or_create
State.where(:id=>1114,:iso=>"10",:name=>"Gabú",:country_id=>93).first_or_create
State.where(:id=>1115,:iso=>"06",:name=>"Cacheu",:country_id=>93).first_or_create
State.where(:id=>1116,:iso=>"05",:name=>"Bolama and Bijagos",:country_id=>93).first_or_create
State.where(:id=>1117,:iso=>"11",:name=>"Bissau Autonomous Region",:country_id=>93).first_or_create
State.where(:id=>1118,:iso=>"12",:name=>"Biombo",:country_id=>93).first_or_create
State.where(:id=>1119,:iso=>"01",:name=>"Bafatá",:country_id=>93).first_or_create
State.where(:id=>1120,:iso=>"19",:name=>"Upper Takutu-Upper Essequibo",:country_id=>94).first_or_create
State.where(:id=>1121,:iso=>"18",:name=>"Upper Demerara-Berbice",:country_id=>94).first_or_create
State.where(:id=>1122,:iso=>"17",:name=>"Potaro-Siparuni",:country_id=>94).first_or_create
State.where(:id=>1123,:iso=>"16",:name=>"Pomeroon-Supenaam",:country_id=>94).first_or_create
State.where(:id=>1124,:iso=>"15",:name=>"Mahaica-Berbice",:country_id=>94).first_or_create
State.where(:id=>1125,:iso=>"14",:name=>"Essequibo Islands-West Demerara",:country_id=>94).first_or_create
State.where(:id=>1126,:iso=>"13",:name=>"East Berbice-Corentyne",:country_id=>94).first_or_create
State.where(:id=>1127,:iso=>"12",:name=>"Demerara-Mahaica",:country_id=>94).first_or_create
State.where(:id=>1128,:iso=>"11",:name=>"Cuyuni-Mazaruni",:country_id=>94).first_or_create
State.where(:id=>1129,:iso=>"10",:name=>"Barima-Waini",:country_id=>94).first_or_create
State.where(:id=>1130,:iso=>"NYL",:name=>"Yuen Long",:country_id=>95).first_or_create
State.where(:id=>1131,:iso=>"NTW",:name=>"Tsuen Wan",:country_id=>95).first_or_create
State.where(:id=>1132,:iso=>"NTP",:name=>"Tai Po",:country_id=>95).first_or_create
State.where(:id=>1133,:iso=>"NSK",:name=>"Sai Kung",:country_id=>95).first_or_create
State.where(:id=>1134,:iso=>"NIS",:name=>"Islands",:country_id=>95).first_or_create
State.where(:id=>1135,:iso=>"HCW",:name=>"Central and Western",:country_id=>95).first_or_create
State.where(:id=>1136,:iso=>"HWC",:name=>"Wan Chai",:country_id=>95).first_or_create
State.where(:id=>1137,:iso=>"HEA",:name=>"Eastern",:country_id=>95).first_or_create
State.where(:id=>1138,:iso=>"HSO",:name=>"Southern",:country_id=>95).first_or_create
State.where(:id=>1139,:iso=>"KYT",:name=>"Yau Tsim Mong",:country_id=>95).first_or_create
State.where(:id=>1140,:iso=>"KSS",:name=>"Sham Shui Po",:country_id=>95).first_or_create
State.where(:id=>1141,:iso=>"KKC",:name=>"Kowloon City",:country_id=>95).first_or_create
State.where(:id=>1142,:iso=>"KWT",:name=>"Wong Tai Sin",:country_id=>95).first_or_create
State.where(:id=>1143,:iso=>"KKT",:name=>"Kwon Tong",:country_id=>95).first_or_create
State.where(:id=>1144,:iso=>"NKT",:name=>"Kwai Tsing",:country_id=>95).first_or_create
State.where(:id=>1145,:iso=>"NTM",:name=>"Tuen Mun",:country_id=>95).first_or_create
State.where(:id=>1146,:iso=>"NNO",:name=>"North",:country_id=>95).first_or_create
State.where(:id=>1147,:iso=>"NST",:name=>"Sha Tin",:country_id=>95).first_or_create
State.where(:id=>1148,:iso=>"18",:name=>"Yoro",:country_id=>97).first_or_create
State.where(:id=>1149,:iso=>"17",:name=>"Valle",:country_id=>97).first_or_create
State.where(:id=>1150,:iso=>"16",:name=>"Santa Bárbara",:country_id=>97).first_or_create
State.where(:id=>1151,:iso=>"15",:name=>"Olancho",:country_id=>97).first_or_create
State.where(:id=>1152,:iso=>"14",:name=>"Ocotepeque",:country_id=>97).first_or_create
State.where(:id=>1153,:iso=>"13",:name=>"Lempira",:country_id=>97).first_or_create
State.where(:id=>1154,:iso=>"12",:name=>"La Paz",:country_id=>97).first_or_create
State.where(:id=>1155,:iso=>"11",:name=>"Islas de la Bahía",:country_id=>97).first_or_create
State.where(:id=>1156,:iso=>"10",:name=>"Intibucá",:country_id=>97).first_or_create
State.where(:id=>1157,:iso=>"09",:name=>"Gracias a Dios",:country_id=>97).first_or_create
State.where(:id=>1158,:iso=>"08",:name=>"Francisco Morazán",:country_id=>97).first_or_create
State.where(:id=>1159,:iso=>"07",:name=>"El Paraíso",:country_id=>97).first_or_create
State.where(:id=>1160,:iso=>"06",:name=>"Cortés",:country_id=>97).first_or_create
State.where(:id=>1161,:iso=>"05",:name=>"Copán",:country_id=>97).first_or_create
State.where(:id=>1162,:iso=>"04",:name=>"Comayagua",:country_id=>97).first_or_create
State.where(:id=>1163,:iso=>"03",:name=>"Colón",:country_id=>97).first_or_create
State.where(:id=>1164,:iso=>"02",:name=>"Choluteca",:country_id=>97).first_or_create
State.where(:id=>1165,:iso=>"01",:name=>"Atlántida",:country_id=>97).first_or_create
State.where(:id=>1166,:iso=>"01",:name=>"Bjelovarsko-Bilogorska",:country_id=>98).first_or_create
State.where(:id=>1167,:iso=>"02",:name=>"Brodsko-Posavska",:country_id=>98).first_or_create
State.where(:id=>1168,:iso=>"03",:name=>"Dubrovačko-Neretvanska",:country_id=>98).first_or_create
State.where(:id=>1169,:iso=>"04",:name=>"Istarska",:country_id=>98).first_or_create
State.where(:id=>1170,:iso=>"05",:name=>"Karlovačka",:country_id=>98).first_or_create
State.where(:id=>1171,:iso=>"06",:name=>"Koprivničko-Križevačka",:country_id=>98).first_or_create
State.where(:id=>1172,:iso=>"07",:name=>"Krapinsko-Zagorska",:country_id=>98).first_or_create
State.where(:id=>1173,:iso=>"08",:name=>"Ličko-Senjska",:country_id=>98).first_or_create
State.where(:id=>1174,:iso=>"09",:name=>"Međimurska",:country_id=>98).first_or_create
State.where(:id=>1175,:iso=>"10",:name=>"Osječko-Baranjska",:country_id=>98).first_or_create
State.where(:id=>1176,:iso=>"11",:name=>"Požeško-Slavonska",:country_id=>98).first_or_create
State.where(:id=>1177,:iso=>"12",:name=>"Primorsko-Goranska",:country_id=>98).first_or_create
State.where(:id=>1178,:iso=>"13",:name=>"Šibensko-Kniniska",:country_id=>98).first_or_create
State.where(:id=>1179,:iso=>"14",:name=>"Sisačko-Moslavačka",:country_id=>98).first_or_create
State.where(:id=>1180,:iso=>"15",:name=>"Splitsko-Dalmatinska",:country_id=>98).first_or_create
State.where(:id=>1181,:iso=>"16",:name=>"Varaždinska",:country_id=>98).first_or_create
State.where(:id=>1182,:iso=>"18",:name=>"Vukovarsko-Srijemska",:country_id=>98).first_or_create
State.where(:id=>1183,:iso=>"19",:name=>"Zadarska",:country_id=>98).first_or_create
State.where(:id=>1184,:iso=>"20",:name=>"Zagrebačka",:country_id=>98).first_or_create
State.where(:id=>1185,:iso=>"21",:name=>"Grad Zagreb",:country_id=>98).first_or_create
State.where(:id=>1186,:iso=>"17",:name=>"Virovitičk-Podravska",:country_id=>98).first_or_create
State.where(:id=>1187,:iso=>"13",:name=>"Sud-Est",:country_id=>99).first_or_create
State.where(:id=>1188,:iso=>"12",:name=>"Sud",:country_id=>99).first_or_create
State.where(:id=>1189,:iso=>"11",:name=>"Ouest",:country_id=>99).first_or_create
State.where(:id=>1190,:iso=>"03",:name=>"Nord-Ouest",:country_id=>99).first_or_create
State.where(:id=>1191,:iso=>"10",:name=>"Nord-Est",:country_id=>99).first_or_create
State.where(:id=>1192,:iso=>"09",:name=>"Nord",:country_id=>99).first_or_create
State.where(:id=>1193,:iso=>"14",:name=>"GrandʼAnse",:country_id=>99).first_or_create
State.where(:id=>1194,:iso=>"07",:name=>"Centre",:country_id=>99).first_or_create
State.where(:id=>1195,:iso=>"06",:name=>"Artibonite",:country_id=>99).first_or_create
State.where(:id=>1196,:iso=>"15",:name=>"Nippes",:country_id=>99).first_or_create
State.where(:id=>1197,:iso=>"18",:name=>"Szabolcs-Szatmár-Bereg",:country_id=>100).first_or_create
State.where(:id=>1198,:iso=>"20",:name=>"Jász-Nagykun-Szolnok",:country_id=>100).first_or_create
State.where(:id=>1199,:iso=>"11",:name=>"Heves",:country_id=>100).first_or_create
State.where(:id=>1200,:iso=>"10",:name=>"Hajdú-Bihar",:country_id=>100).first_or_create
State.where(:id=>1201,:iso=>"06",:name=>"Csongrád",:country_id=>100).first_or_create
State.where(:id=>1202,:iso=>"04",:name=>"Borsod-Abaúj-Zemplén",:country_id=>100).first_or_create
State.where(:id=>1203,:iso=>"03",:name=>"Békés",:country_id=>100).first_or_create
State.where(:id=>1204,:iso=>"24",:name=>"Zala",:country_id=>100).first_or_create
State.where(:id=>1205,:iso=>"23",:name=>"Veszprém",:country_id=>100).first_or_create
State.where(:id=>1206,:iso=>"22",:name=>"Vas",:country_id=>100).first_or_create
State.where(:id=>1207,:iso=>"21",:name=>"Tolna",:country_id=>100).first_or_create
State.where(:id=>1208,:iso=>"17",:name=>"Somogy",:country_id=>100).first_or_create
State.where(:id=>1209,:iso=>"16",:name=>"Pest",:country_id=>100).first_or_create
State.where(:id=>1210,:iso=>"14",:name=>"Nógrád",:country_id=>100).first_or_create
State.where(:id=>1211,:iso=>"12",:name=>"Komárom-Esztergom",:country_id=>100).first_or_create
State.where(:id=>1212,:iso=>"09",:name=>"Győr-Moson-Sopron",:country_id=>100).first_or_create
State.where(:id=>1213,:iso=>"08",:name=>"Fejér",:country_id=>100).first_or_create
State.where(:id=>1214,:iso=>"05",:name=>"Budapest",:country_id=>100).first_or_create
State.where(:id=>1215,:iso=>"02",:name=>"Baranya",:country_id=>100).first_or_create
State.where(:id=>1216,:iso=>"01",:name=>"Bács-Kiskun",:country_id=>100).first_or_create
State.where(:id=>1217,:iso=>"26",:name=>"North Sumatra",:country_id=>101).first_or_create
State.where(:id=>1218,:iso=>"01",:name=>"Aceh",:country_id=>101).first_or_create
State.where(:id=>1219,:iso=>"10",:name=>"Daerah Istimewa Yogyakarta",:country_id=>101).first_or_create
State.where(:id=>1220,:iso=>"32",:name=>"South Sumatra",:country_id=>101).first_or_create
State.where(:id=>1221,:iso=>"24",:name=>"West Sumatra",:country_id=>101).first_or_create
State.where(:id=>1222,:iso=>"31",:name=>"North Sulawesi",:country_id=>101).first_or_create
State.where(:id=>1223,:iso=>"22",:name=>"Sulawesi Tenggara",:country_id=>101).first_or_create
State.where(:id=>1224,:iso=>"21",:name=>"Central Sulawesi",:country_id=>101).first_or_create
State.where(:id=>1225,:iso=>"38",:name=>"South Sulawesi",:country_id=>101).first_or_create
State.where(:id=>1226,:iso=>"37",:name=>"Riau",:country_id=>101).first_or_create
State.where(:id=>1227,:iso=>"18",:name=>"East Nusa Tenggara",:country_id=>101).first_or_create
State.where(:id=>1228,:iso=>"17",:name=>"Nusa Tenggara Barat",:country_id=>101).first_or_create
State.where(:id=>1229,:iso=>"28",:name=>"Maluku",:country_id=>101).first_or_create
State.where(:id=>1230,:iso=>"15",:name=>"Lampung",:country_id=>101).first_or_create
State.where(:id=>1231,:iso=>"14",:name=>"East Kalimantan",:country_id=>101).first_or_create
State.where(:id=>1232,:iso=>"13",:name=>"Kalimantan Tengah",:country_id=>101).first_or_create
State.where(:id=>1233,:iso=>"12",:name=>"South Kalimantan",:country_id=>101).first_or_create
State.where(:id=>1234,:iso=>"11",:name=>"West Kalimantan",:country_id=>101).first_or_create
State.where(:id=>1235,:iso=>"08",:name=>"East Java",:country_id=>101).first_or_create
State.where(:id=>1236,:iso=>"07",:name=>"Central Java",:country_id=>101).first_or_create
State.where(:id=>1237,:iso=>"30",:name=>"West Java",:country_id=>101).first_or_create
State.where(:id=>1238,:iso=>"05",:name=>"Jambi",:country_id=>101).first_or_create
State.where(:id=>1239,:iso=>"04",:name=>"Jakarta Raya",:country_id=>101).first_or_create
State.where(:id=>1240,:iso=>"36",:name=>"Papua",:country_id=>101).first_or_create
State.where(:id=>1241,:iso=>"03",:name=>"Bengkulu",:country_id=>101).first_or_create
State.where(:id=>1242,:iso=>"02",:name=>"Bali",:country_id=>101).first_or_create
State.where(:id=>1243,:iso=>"33",:name=>"Banten",:country_id=>101).first_or_create
State.where(:id=>1244,:iso=>"34",:name=>"Gorontalo",:country_id=>101).first_or_create
State.where(:id=>1245,:iso=>"35",:name=>"Bangka-Belitung",:country_id=>101).first_or_create
State.where(:id=>1246,:iso=>"29",:name=>"Maluku Utara",:country_id=>101).first_or_create
State.where(:id=>1247,:iso=>"39",:name=>"Irian Jaya Barat",:country_id=>101).first_or_create
State.where(:id=>1248,:iso=>"41",:name=>"Sulawesi Barat",:country_id=>101).first_or_create
State.where(:id=>1249,:iso=>"40",:name=>"Riau Islands",:country_id=>101).first_or_create
State.where(:id=>1250,:iso=>"C",:name=>"Connaught",:country_id=>102).first_or_create
State.where(:id=>1251,:iso=>"L",:name=>"Leinster",:country_id=>102).first_or_create
State.where(:id=>1252,:iso=>"M",:name=>"Munster",:country_id=>102).first_or_create
State.where(:id=>1253,:iso=>"U",:name=>"Ulster",:country_id=>102).first_or_create
State.where(:id=>1254,:iso=>"06",:name=>"Jerusalem District",:country_id=>103).first_or_create
State.where(:id=>1255,:iso=>"05",:name=>"Tel Aviv",:country_id=>103).first_or_create
State.where(:id=>1256,:iso=>"04",:name=>"Haifa",:country_id=>103).first_or_create
State.where(:id=>1257,:iso=>"03",:name=>"Northern District",:country_id=>103).first_or_create
State.where(:id=>1258,:iso=>"02",:name=>"Central District",:country_id=>103).first_or_create
State.where(:id=>1259,:iso=>"01",:name=>"Southern District",:country_id=>103).first_or_create
State.where(:id=>1260,:iso=>"28",:name=>"Bengal",:country_id=>105).first_or_create
State.where(:id=>1261,:iso=>"36",:name=>"Uttar Pradesh",:country_id=>105).first_or_create
State.where(:id=>1262,:iso=>"26",:name=>"Tripura",:country_id=>105).first_or_create
State.where(:id=>1263,:iso=>"25",:name=>"Tamil Nādu",:country_id=>105).first_or_create
State.where(:id=>1264,:iso=>"29",:name=>"Sikkim",:country_id=>105).first_or_create
State.where(:id=>1265,:iso=>"24",:name=>"Rajasthan",:country_id=>105).first_or_create
State.where(:id=>1266,:iso=>"23",:name=>"Punjab",:country_id=>105).first_or_create
State.where(:id=>1267,:iso=>"22",:name=>"Pondicherry",:country_id=>105).first_or_create
State.where(:id=>1268,:iso=>"21",:name=>"Orissa",:country_id=>105).first_or_create
State.where(:id=>1269,:iso=>"20",:name=>"Nāgāland",:country_id=>105).first_or_create
State.where(:id=>1270,:iso=>"31",:name=>"Mizoram",:country_id=>105).first_or_create
State.where(:id=>1271,:iso=>"18",:name=>"Meghālaya",:country_id=>105).first_or_create
State.where(:id=>1272,:iso=>"17",:name=>"Manipur",:country_id=>105).first_or_create
State.where(:id=>1273,:iso=>"16",:name=>"Mahārāshtra",:country_id=>105).first_or_create
State.where(:id=>1274,:iso=>"35",:name=>"Madhya Pradesh",:country_id=>105).first_or_create
State.where(:id=>1275,:iso=>"14",:name=>"Laccadives",:country_id=>105).first_or_create
State.where(:id=>1276,:iso=>"13",:name=>"Kerala",:country_id=>105).first_or_create
State.where(:id=>1277,:iso=>"19",:name=>"Karnātaka",:country_id=>105).first_or_create
State.where(:id=>1278,:iso=>"12",:name=>"Jammu and Kashmir",:country_id=>105).first_or_create
State.where(:id=>1279,:iso=>"11",:name=>"Himachal Pradesh",:country_id=>105).first_or_create
State.where(:id=>1280,:iso=>"10",:name=>"Haryana",:country_id=>105).first_or_create
State.where(:id=>1281,:iso=>"09",:name=>"Gujarāt",:country_id=>105).first_or_create
State.where(:id=>1282,:iso=>"32",:name=>"Daman and Diu",:country_id=>105).first_or_create
State.where(:id=>1283,:iso=>"33",:name=>"Goa",:country_id=>105).first_or_create
State.where(:id=>1284,:iso=>"07",:name=>"NCT",:country_id=>105).first_or_create
State.where(:id=>1285,:iso=>"06",:name=>"Dādra and Nagar Haveli",:country_id=>105).first_or_create
State.where(:id=>1286,:iso=>"05",:name=>"Chandīgarh",:country_id=>105).first_or_create
State.where(:id=>1287,:iso=>"34",:name=>"Bihār",:country_id=>105).first_or_create
State.where(:id=>1288,:iso=>"03",:name=>"Assam",:country_id=>105).first_or_create
State.where(:id=>1289,:iso=>"30",:name=>"Arunāchal Pradesh",:country_id=>105).first_or_create
State.where(:id=>1290,:iso=>"02",:name=>"Andhra Pradesh",:country_id=>105).first_or_create
State.where(:id=>1291,:iso=>"01",:name=>"Andaman and Nicobar Islands",:country_id=>105).first_or_create
State.where(:id=>1292,:iso=>"37",:name=>"Chhattisgarh",:country_id=>105).first_or_create
State.where(:id=>1293,:iso=>"38",:name=>"Jharkhand",:country_id=>105).first_or_create
State.where(:id=>1294,:iso=>"39",:name=>"Uttarakhand",:country_id=>105).first_or_create
State.where(:id=>1295,:iso=>"02",:name=>"Al Başrah",:country_id=>107).first_or_create
State.where(:id=>1296,:iso=>"16",:name=>"Wāsiţ",:country_id=>107).first_or_create
State.where(:id=>1297,:iso=>"18",:name=>"Şalāḩ ad Dīn",:country_id=>107).first_or_create
State.where(:id=>1298,:iso=>"15",:name=>"Nīnawá",:country_id=>107).first_or_create
State.where(:id=>1299,:iso=>"14",:name=>"Maysan",:country_id=>107).first_or_create
State.where(:id=>1300,:iso=>"12",:name=>"Karbalāʼ",:country_id=>107).first_or_create
State.where(:id=>1301,:iso=>"11",:name=>"Arbīl",:country_id=>107).first_or_create
State.where(:id=>1302,:iso=>"10",:name=>"Diyala",:country_id=>107).first_or_create
State.where(:id=>1303,:iso=>"09",:name=>"Dhi Qar",:country_id=>107).first_or_create
State.where(:id=>1304,:iso=>"08",:name=>"Dahūk",:country_id=>107).first_or_create
State.where(:id=>1305,:iso=>"07",:name=>"Baghdād",:country_id=>107).first_or_create
State.where(:id=>1306,:iso=>"06",:name=>"Bābil",:country_id=>107).first_or_create
State.where(:id=>1307,:iso=>"13",:name=>"At Taʼmīm",:country_id=>107).first_or_create
State.where(:id=>1308,:iso=>"05",:name=>"As Sulaymānīyah",:country_id=>107).first_or_create
State.where(:id=>1309,:iso=>"17",:name=>"An Najaf",:country_id=>107).first_or_create
State.where(:id=>1310,:iso=>"04",:name=>"Al Qādisīyah",:country_id=>107).first_or_create
State.where(:id=>1311,:iso=>"03",:name=>"Al Muthanná",:country_id=>107).first_or_create
State.where(:id=>1312,:iso=>"01",:name=>"Anbar",:country_id=>107).first_or_create
State.where(:id=>1313,:iso=>"26",:name=>"Tehrān",:country_id=>108).first_or_create
State.where(:id=>1314,:iso=>"36",:name=>"Zanjan",:country_id=>108).first_or_create
State.where(:id=>1315,:iso=>"40",:name=>"Yazd",:country_id=>108).first_or_create
State.where(:id=>1316,:iso=>"25",:name=>"Semnān",:country_id=>108).first_or_create
State.where(:id=>1317,:iso=>"35",:name=>"Māzandarān",:country_id=>108).first_or_create
State.where(:id=>1318,:iso=>"34",:name=>"Markazi",:country_id=>108).first_or_create
State.where(:id=>1319,:iso=>"23",:name=>"Lorestān",:country_id=>108).first_or_create
State.where(:id=>1320,:iso=>"16",:name=>"Kordestān",:country_id=>108).first_or_create
State.where(:id=>1321,:iso=>"05",:name=>"Kohgīlūyeh va Būyer Aḩmad",:country_id=>108).first_or_create
State.where(:id=>1322,:iso=>"15",:name=>"Khūzestān",:country_id=>108).first_or_create
State.where(:id=>1323,:iso=>"13",:name=>"Kermānshāh",:country_id=>108).first_or_create
State.where(:id=>1324,:iso=>"29",:name=>"Kermān",:country_id=>108).first_or_create
State.where(:id=>1325,:iso=>"10",:name=>"Īlām",:country_id=>108).first_or_create
State.where(:id=>1326,:iso=>"11",:name=>"Hormozgān",:country_id=>108).first_or_create
State.where(:id=>1327,:iso=>"09",:name=>"Hamadān",:country_id=>108).first_or_create
State.where(:id=>1328,:iso=>"08",:name=>"Gīlān",:country_id=>108).first_or_create
State.where(:id=>1329,:iso=>"07",:name=>"Fārs",:country_id=>108).first_or_create
State.where(:id=>1330,:iso=>"03",:name=>"Chahār Maḩāll va Bakhtīārī",:country_id=>108).first_or_create
State.where(:id=>1331,:iso=>"22",:name=>"Bushehr",:country_id=>108).first_or_create
State.where(:id=>1332,:iso=>"33",:name=>"East Azarbaijan",:country_id=>108).first_or_create
State.where(:id=>1333,:iso=>"01",:name=>"Āz̄ārbāyjān-e Gharbī",:country_id=>108).first_or_create
State.where(:id=>1334,:iso=>"32",:name=>"Ardabīl",:country_id=>108).first_or_create
State.where(:id=>1335,:iso=>"28",:name=>"Eşfahān",:country_id=>108).first_or_create
State.where(:id=>1336,:iso=>"37",:name=>"Golestān",:country_id=>108).first_or_create
State.where(:id=>1337,:iso=>"38",:name=>"Qazvīn",:country_id=>108).first_or_create
State.where(:id=>1338,:iso=>"39",:name=>"Qom",:country_id=>108).first_or_create
State.where(:id=>1339,:iso=>"04",:name=>"Sīstān va Balūchestān",:country_id=>108).first_or_create
State.where(:id=>1340,:iso=>"41",:name=>"Khorāsān-e Jonūbī",:country_id=>108).first_or_create
State.where(:id=>1341,:iso=>"42",:name=>"Razavi Khorasan",:country_id=>108).first_or_create
State.where(:id=>1342,:iso=>"43",:name=>"Khorāsān-e Shomālī",:country_id=>108).first_or_create
State.where(:id=>1343,:iso=>"44",:name=>"Ostān-e Alborz",:country_id=>108).first_or_create
State.where(:id=>1344,:iso=>"41",:name=>"Northwest",:country_id=>109).first_or_create
State.where(:id=>1345,:iso=>"40",:name=>"Northeast",:country_id=>109).first_or_create
State.where(:id=>1346,:iso=>"38",:name=>"East",:country_id=>109).first_or_create
State.where(:id=>1347,:iso=>"42",:name=>"South",:country_id=>109).first_or_create
State.where(:id=>1348,:iso=>"39",:name=>"Capital Region",:country_id=>109).first_or_create
State.where(:id=>1349,:iso=>"43",:name=>"Southern Peninsula",:country_id=>109).first_or_create
State.where(:id=>1350,:iso=>"45",:name=>"West",:country_id=>109).first_or_create
State.where(:id=>1351,:iso=>"44",:name=>"Westfjords",:country_id=>109).first_or_create
State.where(:id=>1352,:iso=>"15",:name=>"Sicily",:country_id=>110).first_or_create
State.where(:id=>1353,:iso=>"14",:name=>"Sardinia",:country_id=>110).first_or_create
State.where(:id=>1354,:iso=>"03",:name=>"Calabria",:country_id=>110).first_or_create
State.where(:id=>1355,:iso=>"20",:name=>"Veneto",:country_id=>110).first_or_create
State.where(:id=>1356,:iso=>"19",:name=>"Aosta Valley",:country_id=>110).first_or_create
State.where(:id=>1357,:iso=>"18",:name=>"Umbria",:country_id=>110).first_or_create
State.where(:id=>1358,:iso=>"17",:name=>"Trentino-Alto Adige",:country_id=>110).first_or_create
State.where(:id=>1359,:iso=>"16",:name=>"Tuscany",:country_id=>110).first_or_create
State.where(:id=>1360,:iso=>"13",:name=>"Apulia",:country_id=>110).first_or_create
State.where(:id=>1361,:iso=>"12",:name=>"Piedmont",:country_id=>110).first_or_create
State.where(:id=>1362,:iso=>"11",:name=>"Molise",:country_id=>110).first_or_create
State.where(:id=>1363,:iso=>"10",:name=>"The Marches",:country_id=>110).first_or_create
State.where(:id=>1364,:iso=>"09",:name=>"Lombardy",:country_id=>110).first_or_create
State.where(:id=>1365,:iso=>"08",:name=>"Liguria",:country_id=>110).first_or_create
State.where(:id=>1366,:iso=>"07",:name=>"Latium",:country_id=>110).first_or_create
State.where(:id=>1367,:iso=>"06",:name=>"Friuli Venezia Giulia",:country_id=>110).first_or_create
State.where(:id=>1368,:iso=>"05",:name=>"Emilia-Romagna",:country_id=>110).first_or_create
State.where(:id=>1369,:iso=>"04",:name=>"Campania",:country_id=>110).first_or_create
State.where(:id=>1370,:iso=>"02",:name=>"Basilicate",:country_id=>110).first_or_create
State.where(:id=>1371,:iso=>"01",:name=>"Abruzzo",:country_id=>110).first_or_create
State.where(:id=>1372,:iso=>"16",:name=>"Westmoreland",:country_id=>112).first_or_create
State.where(:id=>1373,:iso=>"15",:name=>"Trelawny",:country_id=>112).first_or_create
State.where(:id=>1374,:iso=>"14",:name=>"Saint Thomas",:country_id=>112).first_or_create
State.where(:id=>1375,:iso=>"13",:name=>"Saint Mary",:country_id=>112).first_or_create
State.where(:id=>1376,:iso=>"12",:name=>"Saint James",:country_id=>112).first_or_create
State.where(:id=>1377,:iso=>"11",:name=>"St. Elizabeth",:country_id=>112).first_or_create
State.where(:id=>1378,:iso=>"10",:name=>"Saint Catherine",:country_id=>112).first_or_create
State.where(:id=>1379,:iso=>"09",:name=>"Saint Ann",:country_id=>112).first_or_create
State.where(:id=>1380,:iso=>"08",:name=>"Saint Andrew",:country_id=>112).first_or_create
State.where(:id=>1381,:iso=>"07",:name=>"Portland",:country_id=>112).first_or_create
State.where(:id=>1382,:iso=>"04",:name=>"Manchester",:country_id=>112).first_or_create
State.where(:id=>1383,:iso=>"17",:name=>"Kingston",:country_id=>112).first_or_create
State.where(:id=>1384,:iso=>"02",:name=>"Hanover Parish",:country_id=>112).first_or_create
State.where(:id=>1385,:iso=>"01",:name=>"Clarendon",:country_id=>112).first_or_create
State.where(:id=>1386,:iso=>"19",:name=>"Ma’an",:country_id=>113).first_or_create
State.where(:id=>1387,:iso=>"18",:name=>"Irbid",:country_id=>113).first_or_create
State.where(:id=>1388,:iso=>"17",:name=>"Zarqa",:country_id=>113).first_or_create
State.where(:id=>1389,:iso=>"12",:name=>"Tafielah",:country_id=>113).first_or_create
State.where(:id=>1390,:iso=>"16",:name=>"Amman",:country_id=>113).first_or_create
State.where(:id=>1391,:iso=>"15",:name=>"Mafraq",:country_id=>113).first_or_create
State.where(:id=>1392,:iso=>"09",:name=>"Karak",:country_id=>113).first_or_create
State.where(:id=>1393,:iso=>"02",:name=>"Balqa",:country_id=>113).first_or_create
State.where(:id=>1394,:iso=>"20",:name=>"Ajlun",:country_id=>113).first_or_create
State.where(:id=>1395,:iso=>"22",:name=>"Jerash",:country_id=>113).first_or_create
State.where(:id=>1396,:iso=>"21",:name=>"Aqaba",:country_id=>113).first_or_create
State.where(:id=>1397,:iso=>"23",:name=>"Madaba",:country_id=>113).first_or_create
State.where(:id=>1398,:iso=>"46",:name=>"Yamanashi",:country_id=>114).first_or_create
State.where(:id=>1399,:iso=>"45",:name=>"Yamaguchi",:country_id=>114).first_or_create
State.where(:id=>1400,:iso=>"43",:name=>"Wakayama",:country_id=>114).first_or_create
State.where(:id=>1401,:iso=>"42",:name=>"Toyama",:country_id=>114).first_or_create
State.where(:id=>1402,:iso=>"41",:name=>"Tottori",:country_id=>114).first_or_create
State.where(:id=>1403,:iso=>"40",:name=>"Tōkyō",:country_id=>114).first_or_create
State.where(:id=>1404,:iso=>"39",:name=>"Tokushima",:country_id=>114).first_or_create
State.where(:id=>1405,:iso=>"38",:name=>"Tochigi",:country_id=>114).first_or_create
State.where(:id=>1406,:iso=>"37",:name=>"Shizuoka",:country_id=>114).first_or_create
State.where(:id=>1407,:iso=>"36",:name=>"Shimane",:country_id=>114).first_or_create
State.where(:id=>1408,:iso=>"35",:name=>"Shiga",:country_id=>114).first_or_create
State.where(:id=>1409,:iso=>"34",:name=>"Saitama",:country_id=>114).first_or_create
State.where(:id=>1410,:iso=>"33",:name=>"Saga",:country_id=>114).first_or_create
State.where(:id=>1411,:iso=>"32",:name=>"Ōsaka",:country_id=>114).first_or_create
State.where(:id=>1412,:iso=>"47",:name=>"Okinawa",:country_id=>114).first_or_create
State.where(:id=>1413,:iso=>"31",:name=>"Okayama",:country_id=>114).first_or_create
State.where(:id=>1414,:iso=>"30",:name=>"Ōita",:country_id=>114).first_or_create
State.where(:id=>1415,:iso=>"29",:name=>"Niigata",:country_id=>114).first_or_create
State.where(:id=>1416,:iso=>"28",:name=>"Nara",:country_id=>114).first_or_create
State.where(:id=>1417,:iso=>"27",:name=>"Nagasaki",:country_id=>114).first_or_create
State.where(:id=>1418,:iso=>"26",:name=>"Nagano",:country_id=>114).first_or_create
State.where(:id=>1419,:iso=>"25",:name=>"Miyazaki",:country_id=>114).first_or_create
State.where(:id=>1420,:iso=>"23",:name=>"Mie",:country_id=>114).first_or_create
State.where(:id=>1421,:iso=>"22",:name=>"Kyōto",:country_id=>114).first_or_create
State.where(:id=>1422,:iso=>"21",:name=>"Kumamoto",:country_id=>114).first_or_create
State.where(:id=>1423,:iso=>"20",:name=>"Kōchi",:country_id=>114).first_or_create
State.where(:id=>1424,:iso=>"19",:name=>"Kanagawa",:country_id=>114).first_or_create
State.where(:id=>1425,:iso=>"18",:name=>"Kagoshima",:country_id=>114).first_or_create
State.where(:id=>1426,:iso=>"17",:name=>"Kagawa",:country_id=>114).first_or_create
State.where(:id=>1427,:iso=>"15",:name=>"Ishikawa",:country_id=>114).first_or_create
State.where(:id=>1428,:iso=>"13",:name=>"Hyōgo",:country_id=>114).first_or_create
State.where(:id=>1429,:iso=>"11",:name=>"Hiroshima",:country_id=>114).first_or_create
State.where(:id=>1430,:iso=>"10",:name=>"Gunma",:country_id=>114).first_or_create
State.where(:id=>1431,:iso=>"09",:name=>"Gifu",:country_id=>114).first_or_create
State.where(:id=>1432,:iso=>"07",:name=>"Fukuoka",:country_id=>114).first_or_create
State.where(:id=>1433,:iso=>"06",:name=>"Fukui",:country_id=>114).first_or_create
State.where(:id=>1434,:iso=>"05",:name=>"Ehime",:country_id=>114).first_or_create
State.where(:id=>1435,:iso=>"01",:name=>"Aichi",:country_id=>114).first_or_create
State.where(:id=>1436,:iso=>"44",:name=>"Yamagata",:country_id=>114).first_or_create
State.where(:id=>1437,:iso=>"24",:name=>"Miyagi",:country_id=>114).first_or_create
State.where(:id=>1438,:iso=>"16",:name=>"Iwate",:country_id=>114).first_or_create
State.where(:id=>1439,:iso=>"14",:name=>"Ibaraki",:country_id=>114).first_or_create
State.where(:id=>1440,:iso=>"08",:name=>"Fukushima",:country_id=>114).first_or_create
State.where(:id=>1441,:iso=>"04",:name=>"Chiba",:country_id=>114).first_or_create
State.where(:id=>1442,:iso=>"02",:name=>"Akita",:country_id=>114).first_or_create
State.where(:id=>1443,:iso=>"12",:name=>"Hokkaidō",:country_id=>114).first_or_create
State.where(:id=>1444,:iso=>"03",:name=>"Aomori",:country_id=>114).first_or_create
State.where(:id=>1445,:iso=>"07",:name=>"Nyanza",:country_id=>115).first_or_create
State.where(:id=>1446,:iso=>"05",:name=>"Nairobi Area",:country_id=>115).first_or_create
State.where(:id=>1447,:iso=>"02",:name=>"Coast",:country_id=>115).first_or_create
State.where(:id=>1448,:iso=>"03",:name=>"Eastern",:country_id=>115).first_or_create
State.where(:id=>1449,:iso=>"01",:name=>"Central",:country_id=>115).first_or_create
State.where(:id=>1450,:iso=>"09",:name=>"Western",:country_id=>115).first_or_create
State.where(:id=>1451,:iso=>"08",:name=>"Rift Valley",:country_id=>115).first_or_create
State.where(:id=>1452,:iso=>"06",:name=>"North-Eastern",:country_id=>115).first_or_create
State.where(:id=>1453,:iso=>"08",:name=>"Osh",:country_id=>116).first_or_create
State.where(:id=>1454,:iso=>"09",:name=>"Batken",:country_id=>116).first_or_create
State.where(:id=>1455,:iso=>"06",:name=>"Talas",:country_id=>116).first_or_create
State.where(:id=>1456,:iso=>"04",:name=>"Naryn",:country_id=>116).first_or_create
State.where(:id=>1457,:iso=>"07",:name=>"Ysyk-Köl",:country_id=>116).first_or_create
State.where(:id=>1458,:iso=>"01",:name=>"Bishkek",:country_id=>116).first_or_create
State.where(:id=>1459,:iso=>"03",:name=>"Jalal-Abad",:country_id=>116).first_or_create
State.where(:id=>1460,:iso=>"02",:name=>"Chüy",:country_id=>116).first_or_create
State.where(:id=>1461,:iso=>"12",:name=>"Poŭthĭsăt",:country_id=>117).first_or_create
State.where(:id=>1462,:iso=>"29",:name=>"Khétt Bătdâmbâng",:country_id=>117).first_or_create
State.where(:id=>1463,:iso=>"19",:name=>"Takêv",:country_id=>117).first_or_create
State.where(:id=>1464,:iso=>"18",:name=>"Svay Riĕng",:country_id=>117).first_or_create
State.where(:id=>1465,:iso=>"17",:name=>"Stœ̆ng Trêng",:country_id=>117).first_or_create
State.where(:id=>1466,:iso=>"27",:name=>"Ŏtâr Méanchey",:country_id=>117).first_or_create
State.where(:id=>1467,:iso=>"24",:name=>"Khétt Siĕm Réab",:country_id=>117).first_or_create
State.where(:id=>1468,:iso=>"23",:name=>"Khêtt Rôtânôkiri",:country_id=>117).first_or_create
State.where(:id=>1469,:iso=>"14",:name=>"Prey Vêng",:country_id=>117).first_or_create
State.where(:id=>1470,:iso=>"13",:name=>"Preăh Vĭhéar",:country_id=>117).first_or_create
State.where(:id=>1471,:iso=>"22",:name=>"Krŏng Phnum Pénh",:country_id=>117).first_or_create
State.where(:id=>1472,:iso=>"30",:name=>"Khétt Pailĭn",:country_id=>117).first_or_create
State.where(:id=>1473,:iso=>"10",:name=>"Môndól Kiri",:country_id=>117).first_or_create
State.where(:id=>1474,:iso=>"09",:name=>"Krâchéh",:country_id=>117).first_or_create
State.where(:id=>1475,:iso=>"26",:name=>"Khétt Kêb",:country_id=>117).first_or_create
State.where(:id=>1476,:iso=>"08",:name=>"Kaôh Kŏng",:country_id=>117).first_or_create
State.where(:id=>1477,:iso=>"07",:name=>"Kândal",:country_id=>117).first_or_create
State.where(:id=>1478,:iso=>"21",:name=>"Khétt Kâmpôt",:country_id=>117).first_or_create
State.where(:id=>1479,:iso=>"05",:name=>"Kâmpóng Thum",:country_id=>117).first_or_create
State.where(:id=>1480,:iso=>"04",:name=>"Khétt Kâmpóng Spœ",:country_id=>117).first_or_create
State.where(:id=>1481,:iso=>"03",:name=>"Kâmpóng Chhnăng",:country_id=>117).first_or_create
State.where(:id=>1482,:iso=>"02",:name=>"Kâmpóng Cham",:country_id=>117).first_or_create
State.where(:id=>1483,:iso=>"28",:name=>"Khétt Preăh Seihânŭ",:country_id=>117).first_or_create
State.where(:id=>1484,:iso=>"25",:name=>"Khétt Bântéay Méan Choăy",:country_id=>117).first_or_create
State.where(:id=>1485,:iso=>"01",:name=>"Battambang",:country_id=>117).first_or_create
State.where(:id=>1486,:iso=>"01",:name=>"Gilbert Islands",:country_id=>118).first_or_create
State.where(:id=>1487,:iso=>"02",:name=>"Line Islands",:country_id=>118).first_or_create
State.where(:id=>1488,:iso=>"03",:name=>"Phoenix Islands",:country_id=>118).first_or_create
State.where(:id=>1489,:iso=>"03",:name=>"Mohéli",:country_id=>119).first_or_create
State.where(:id=>1490,:iso=>"02",:name=>"Grande Comore",:country_id=>119).first_or_create
State.where(:id=>1491,:iso=>"01",:name=>"Anjouan",:country_id=>119).first_or_create
State.where(:id=>1492,:iso=>"15",:name=>"Trinity Palmetto Point",:country_id=>120).first_or_create
State.where(:id=>1493,:iso=>"13",:name=>"Saint Thomas Middle Island",:country_id=>120).first_or_create
State.where(:id=>1494,:iso=>"12",:name=>"Saint Thomas Lowland",:country_id=>120).first_or_create
State.where(:id=>1495,:iso=>"11",:name=>"Saint Peter Basseterre",:country_id=>120).first_or_create
State.where(:id=>1496,:iso=>"10",:name=>"Saint Paul Charlestown",:country_id=>120).first_or_create
State.where(:id=>1497,:iso=>"09",:name=>"Saint Paul Capesterre",:country_id=>120).first_or_create
State.where(:id=>1498,:iso=>"08",:name=>"Saint Mary Cayon",:country_id=>120).first_or_create
State.where(:id=>1499,:iso=>"07",:name=>"Saint John Figtree",:country_id=>120).first_or_create
State.where(:id=>1500,:iso=>"06",:name=>"Saint John Capesterre",:country_id=>120).first_or_create
State.where(:id=>1501,:iso=>"05",:name=>"Saint James Windwa",:country_id=>120).first_or_create
State.where(:id=>1502,:iso=>"04",:name=>"Saint George Gingerland",:country_id=>120).first_or_create
State.where(:id=>1503,:iso=>"03",:name=>"Saint George Basseterre",:country_id=>120).first_or_create
State.where(:id=>1504,:iso=>"02",:name=>"Saint Anne Sandy Point",:country_id=>120).first_or_create
State.where(:id=>1505,:iso=>"01",:name=>"Christ Church Nichola Town",:country_id=>120).first_or_create
State.where(:id=>1506,:iso=>"12",:name=>"P'yŏngyang-si",:country_id=>121).first_or_create
State.where(:id=>1507,:iso=>"15",:name=>"P'yŏngan-namdo",:country_id=>121).first_or_create
State.where(:id=>1508,:iso=>"11",:name=>"P'yŏngan-bukto",:country_id=>121).first_or_create
State.where(:id=>1509,:iso=>"09",:name=>"Gangwon",:country_id=>121).first_or_create
State.where(:id=>1510,:iso=>"06",:name=>"Hwanghae-namdo",:country_id=>121).first_or_create
State.where(:id=>1511,:iso=>"07",:name=>"Hwanghae-bukto",:country_id=>121).first_or_create
State.where(:id=>1512,:iso=>"03",:name=>"Hamgyŏng-namdo",:country_id=>121).first_or_create
State.where(:id=>1513,:iso=>"13",:name=>"Yanggang-do",:country_id=>121).first_or_create
State.where(:id=>1514,:iso=>"17",:name=>"Hamgyŏng-bukto",:country_id=>121).first_or_create
State.where(:id=>1515,:iso=>"01",:name=>"Chagang-do",:country_id=>121).first_or_create
State.where(:id=>1516,:iso=>"18",:name=>"Najin Sŏnbong-si",:country_id=>121).first_or_create
State.where(:id=>1517,:iso=>"21",:name=>"Ulsan",:country_id=>122).first_or_create
State.where(:id=>1518,:iso=>"19",:name=>"Daejeon",:country_id=>122).first_or_create
State.where(:id=>1519,:iso=>"15",:name=>"Daegu",:country_id=>122).first_or_create
State.where(:id=>1520,:iso=>"11",:name=>"Seoul",:country_id=>122).first_or_create
State.where(:id=>1521,:iso=>"10",:name=>"Busan",:country_id=>122).first_or_create
State.where(:id=>1522,:iso=>"14",:name=>"North Gyeongsang",:country_id=>122).first_or_create
State.where(:id=>1523,:iso=>"13",:name=>"Gyeonggi",:country_id=>122).first_or_create
State.where(:id=>1524,:iso=>"18",:name=>"Gwangju",:country_id=>122).first_or_create
State.where(:id=>1525,:iso=>"06",:name=>"Gangwon",:country_id=>122).first_or_create
State.where(:id=>1526,:iso=>"12",:name=>"Incheon",:country_id=>122).first_or_create
State.where(:id=>1527,:iso=>"17",:name=>"South Chungcheong",:country_id=>122).first_or_create
State.where(:id=>1528,:iso=>"05",:name=>"North Chungcheong",:country_id=>122).first_or_create
State.where(:id=>1529,:iso=>"16",:name=>"South Jeolla",:country_id=>122).first_or_create
State.where(:id=>1530,:iso=>"03",:name=>"North Jeolla",:country_id=>122).first_or_create
State.where(:id=>1531,:iso=>"01",:name=>"Jeju",:country_id=>122).first_or_create
State.where(:id=>1532,:iso=>"20",:name=>"South Gyeongsang",:country_id=>122).first_or_create
State.where(:id=>1533,:iso=>"08",:name=>"Ḩawallī",:country_id=>124).first_or_create
State.where(:id=>1534,:iso=>"02",:name=>"Al ‘Āşimah",:country_id=>124).first_or_create
State.where(:id=>1535,:iso=>"05",:name=>"Al Jahrāʼ",:country_id=>124).first_or_create
State.where(:id=>1536,:iso=>"07",:name=>"Al Farwaniyah",:country_id=>124).first_or_create
State.where(:id=>1537,:iso=>"04",:name=>"Al Aḩmadī",:country_id=>124).first_or_create
State.where(:id=>1538,:iso=>"09",:name=>"Muḩāfaz̧at Mubārak al Kabīr",:country_id=>124).first_or_create
State.where(:id=>1539,:iso=>"07",:name=>"Batys Qazaqstan",:country_id=>126).first_or_create
State.where(:id=>1540,:iso=>"09",:name=>"Mangghystaū",:country_id=>126).first_or_create
State.where(:id=>1541,:iso=>"06",:name=>"Atyraū",:country_id=>126).first_or_create
State.where(:id=>1542,:iso=>"04",:name=>"Aqtöbe",:country_id=>126).first_or_create
State.where(:id=>1543,:iso=>"15",:name=>"East Kazakhstan",:country_id=>126).first_or_create
State.where(:id=>1544,:iso=>"03",:name=>"Aqmola",:country_id=>126).first_or_create
State.where(:id=>1545,:iso=>"16",:name=>"Soltüstik Qazaqstan",:country_id=>126).first_or_create
State.where(:id=>1546,:iso=>"11",:name=>"Pavlodar",:country_id=>126).first_or_create
State.where(:id=>1547,:iso=>"14",:name=>"Qyzylorda",:country_id=>126).first_or_create
State.where(:id=>1548,:iso=>"13",:name=>"Qostanay",:country_id=>126).first_or_create
State.where(:id=>1549,:iso=>"12",:name=>"Qaraghandy",:country_id=>126).first_or_create
State.where(:id=>1550,:iso=>"17",:name=>"Zhambyl",:country_id=>126).first_or_create
State.where(:id=>1551,:iso=>"10",:name=>"Ongtüstik Qazaqstan",:country_id=>126).first_or_create
State.where(:id=>1552,:iso=>"02",:name=>"Almaty Qalasy",:country_id=>126).first_or_create
State.where(:id=>1553,:iso=>"01",:name=>"Almaty",:country_id=>126).first_or_create
State.where(:id=>1554,:iso=>"08",:name=>"Bayqongyr Qalasy",:country_id=>126).first_or_create
State.where(:id=>1555,:iso=>"05",:name=>"Astana Qalasy",:country_id=>126).first_or_create
State.where(:id=>1556,:iso=>"14",:name=>"Xiangkhoang",:country_id=>127).first_or_create
State.where(:id=>1557,:iso=>"13",:name=>"Xiagnabouli",:country_id=>127).first_or_create
State.where(:id=>1558,:iso=>"27",:name=>"Khouèng Viangchan",:country_id=>127).first_or_create
State.where(:id=>1559,:iso=>"20",:name=>"Savannahkhét",:country_id=>127).first_or_create
State.where(:id=>1560,:iso=>"19",:name=>"Salavan",:country_id=>127).first_or_create
State.where(:id=>1561,:iso=>"18",:name=>"Phôngsali",:country_id=>127).first_or_create
State.where(:id=>1562,:iso=>"07",:name=>"Oudômxai",:country_id=>127).first_or_create
State.where(:id=>1563,:iso=>"17",:name=>"Louangphabang",:country_id=>127).first_or_create
State.where(:id=>1564,:iso=>"16",:name=>"Loungnamtha",:country_id=>127).first_or_create
State.where(:id=>1565,:iso=>"15",:name=>"Khammouan",:country_id=>127).first_or_create
State.where(:id=>1566,:iso=>"03",:name=>"Houaphan",:country_id=>127).first_or_create
State.where(:id=>1567,:iso=>"02",:name=>"Champasak",:country_id=>127).first_or_create
State.where(:id=>1568,:iso=>"01",:name=>"Attapu",:country_id=>127).first_or_create
State.where(:id=>1569,:iso=>"26",:name=>"Xékong",:country_id=>127).first_or_create
State.where(:id=>1570,:iso=>"22",:name=>"Bokèo",:country_id=>127).first_or_create
State.where(:id=>1571,:iso=>"23",:name=>"Bolikhamxai",:country_id=>127).first_or_create
State.where(:id=>1572,:iso=>"24",:name=>"Viangchan",:country_id=>127).first_or_create
State.where(:id=>1573,:iso=>"05",:name=>"Mont-Liban",:country_id=>128).first_or_create
State.where(:id=>1574,:iso=>"04",:name=>"Beyrouth",:country_id=>128).first_or_create
State.where(:id=>1575,:iso=>"09",:name=>"Liban-Nord",:country_id=>128).first_or_create
State.where(:id=>1576,:iso=>"06",:name=>"Liban-Sud",:country_id=>128).first_or_create
State.where(:id=>1577,:iso=>"08",:name=>"Béqaa",:country_id=>128).first_or_create
State.where(:id=>1578,:iso=>"07",:name=>"Nabatîyé",:country_id=>128).first_or_create
State.where(:id=>1579,:iso=>"10",:name=>"Aakkâr",:country_id=>128).first_or_create
State.where(:id=>1580,:iso=>"11",:name=>"Baalbek-Hermel",:country_id=>128).first_or_create
State.where(:id=>1581,:iso=>"10",:name=>"Vieux-Fort",:country_id=>129).first_or_create
State.where(:id=>1582,:iso=>"09",:name=>"Soufrière",:country_id=>129).first_or_create
State.where(:id=>1583,:iso=>"11",:name=>"Praslin",:country_id=>129).first_or_create
State.where(:id=>1584,:iso=>"08",:name=>"Micoud",:country_id=>129).first_or_create
State.where(:id=>1585,:iso=>"07",:name=>"Laborie",:country_id=>129).first_or_create
State.where(:id=>1586,:iso=>"06",:name=>"Gros-Islet",:country_id=>129).first_or_create
State.where(:id=>1587,:iso=>"05",:name=>"Dennery",:country_id=>129).first_or_create
State.where(:id=>1588,:iso=>"02",:name=>"Dauphin",:country_id=>129).first_or_create
State.where(:id=>1589,:iso=>"04",:name=>"Choiseul",:country_id=>129).first_or_create
State.where(:id=>1590,:iso=>"03",:name=>"Castries",:country_id=>129).first_or_create
State.where(:id=>1591,:iso=>"01",:name=>"Anse-la-Raye",:country_id=>129).first_or_create
State.where(:id=>1592,:iso=>"11",:name=>"Vaduz",:country_id=>130).first_or_create
State.where(:id=>1593,:iso=>"10",:name=>"Triesenberg",:country_id=>130).first_or_create
State.where(:id=>1594,:iso=>"09",:name=>"Triesen",:country_id=>130).first_or_create
State.where(:id=>1595,:iso=>"08",:name=>"Schellenberg",:country_id=>130).first_or_create
State.where(:id=>1596,:iso=>"07",:name=>"Schaan",:country_id=>130).first_or_create
State.where(:id=>1597,:iso=>"06",:name=>"Ruggell",:country_id=>130).first_or_create
State.where(:id=>1598,:iso=>"05",:name=>"Planken",:country_id=>130).first_or_create
State.where(:id=>1599,:iso=>"04",:name=>"Mauren",:country_id=>130).first_or_create
State.where(:id=>1600,:iso=>"03",:name=>"Gamprin",:country_id=>130).first_or_create
State.where(:id=>1601,:iso=>"02",:name=>"Eschen",:country_id=>130).first_or_create
State.where(:id=>1602,:iso=>"01",:name=>"Balzers",:country_id=>130).first_or_create
State.where(:id=>1603,:iso=>"36",:name=>"Western",:country_id=>131).first_or_create
State.where(:id=>1604,:iso=>"35",:name=>"Uva",:country_id=>131).first_or_create
State.where(:id=>1605,:iso=>"34",:name=>"Southern",:country_id=>131).first_or_create
State.where(:id=>1606,:iso=>"33",:name=>"Sabaragamuwa",:country_id=>131).first_or_create
State.where(:id=>1607,:iso=>"32",:name=>"North Western",:country_id=>131).first_or_create
State.where(:id=>1608,:iso=>"31",:name=>"North Eastern",:country_id=>131).first_or_create
State.where(:id=>1609,:iso=>"30",:name=>"North Central",:country_id=>131).first_or_create
State.where(:id=>1610,:iso=>"29",:name=>"Central",:country_id=>131).first_or_create
State.where(:id=>1611,:iso=>"38",:name=>"Northern Province",:country_id=>131).first_or_create
State.where(:id=>1612,:iso=>"10",:name=>"Sinoe",:country_id=>132).first_or_create
State.where(:id=>1613,:iso=>"09",:name=>"Nimba",:country_id=>132).first_or_create
State.where(:id=>1614,:iso=>"14",:name=>"Montserrado",:country_id=>132).first_or_create
State.where(:id=>1615,:iso=>"13",:name=>"Maryland",:country_id=>132).first_or_create
State.where(:id=>1616,:iso=>"20",:name=>"Lofa",:country_id=>132).first_or_create
State.where(:id=>1617,:iso=>"19",:name=>"Grand Gedeh",:country_id=>132).first_or_create
State.where(:id=>1618,:iso=>"12",:name=>"Grand Cape Mount",:country_id=>132).first_or_create
State.where(:id=>1619,:iso=>"11",:name=>"Grand Bassa",:country_id=>132).first_or_create
State.where(:id=>1620,:iso=>"01",:name=>"Bong",:country_id=>132).first_or_create
State.where(:id=>1621,:iso=>"15",:name=>"Bomi",:country_id=>132).first_or_create
State.where(:id=>1622,:iso=>"16",:name=>"Grand Kru",:country_id=>132).first_or_create
State.where(:id=>1623,:iso=>"17",:name=>"Margibi",:country_id=>132).first_or_create
State.where(:id=>1624,:iso=>"18",:name=>"River Cess",:country_id=>132).first_or_create
State.where(:id=>1625,:iso=>"21",:name=>"Gbarpolu",:country_id=>132).first_or_create
State.where(:id=>1626,:iso=>"22",:name=>"River Gee",:country_id=>132).first_or_create
State.where(:id=>1627,:iso=>"19",:name=>"Thaba-Tseka",:country_id=>133).first_or_create
State.where(:id=>1628,:iso=>"18",:name=>"Quthing",:country_id=>133).first_or_create
State.where(:id=>1629,:iso=>"17",:name=>"Qachaʼs Nek",:country_id=>133).first_or_create
State.where(:id=>1630,:iso=>"16",:name=>"Mokhotlong",:country_id=>133).first_or_create
State.where(:id=>1631,:iso=>"15",:name=>"Mohaleʼs Hoek",:country_id=>133).first_or_create
State.where(:id=>1632,:iso=>"14",:name=>"Maseru",:country_id=>133).first_or_create
State.where(:id=>1633,:iso=>"13",:name=>"Mafeteng",:country_id=>133).first_or_create
State.where(:id=>1634,:iso=>"12",:name=>"Leribe",:country_id=>133).first_or_create
State.where(:id=>1635,:iso=>"11",:name=>"Butha-Buthe",:country_id=>133).first_or_create
State.where(:id=>1636,:iso=>"10",:name=>"Berea",:country_id=>133).first_or_create
State.where(:id=>1637,:iso=>"56",:name=>"Alytaus Apskritis",:country_id=>134).first_or_create
State.where(:id=>1638,:iso=>"57",:name=>"Kauno Apskritis",:country_id=>134).first_or_create
State.where(:id=>1639,:iso=>"58",:name=>"Klaipėdos Apskritis",:country_id=>134).first_or_create
State.where(:id=>1640,:iso=>"59",:name=>"Marijampolės Apskritis",:country_id=>134).first_or_create
State.where(:id=>1641,:iso=>"60",:name=>"Panevėžio Apskritis",:country_id=>134).first_or_create
State.where(:id=>1642,:iso=>"61",:name=>"Šiaulių Apskritis",:country_id=>134).first_or_create
State.where(:id=>1643,:iso=>"62",:name=>"Tauragės Apskritis",:country_id=>134).first_or_create
State.where(:id=>1644,:iso=>"63",:name=>"Telšių Apskritis",:country_id=>134).first_or_create
State.where(:id=>1645,:iso=>"64",:name=>"Utenos Apskritis",:country_id=>134).first_or_create
State.where(:id=>1646,:iso=>"65",:name=>"Vilniaus Apskritis",:country_id=>134).first_or_create
State.where(:id=>1647,:iso=>"03",:name=>"Luxembourg",:country_id=>135).first_or_create
State.where(:id=>1648,:iso=>"02",:name=>"Grevenmacher",:country_id=>135).first_or_create
State.where(:id=>1649,:iso=>"01",:name=>"Diekirch",:country_id=>135).first_or_create
State.where(:id=>1650,:iso=>"33",:name=>"Ventspils Rajons",:country_id=>136).first_or_create
State.where(:id=>1651,:iso=>"32",:name=>"Ventspils",:country_id=>136).first_or_create
State.where(:id=>1652,:iso=>"31",:name=>"Valmieras Rajons",:country_id=>136).first_or_create
State.where(:id=>1653,:iso=>"30",:name=>"Valkas Rajons",:country_id=>136).first_or_create
State.where(:id=>1654,:iso=>"29",:name=>"Tukuma Rajons",:country_id=>136).first_or_create
State.where(:id=>1655,:iso=>"28",:name=>"Talsu Rajons",:country_id=>136).first_or_create
State.where(:id=>1656,:iso=>"27",:name=>"Saldus Rajons",:country_id=>136).first_or_create
State.where(:id=>1657,:iso=>"26",:name=>"Rīgas Rajons",:country_id=>136).first_or_create
State.where(:id=>1658,:iso=>"25",:name=>"Rīga",:country_id=>136).first_or_create
State.where(:id=>1659,:iso=>"24",:name=>"Rēzeknes Rajons",:country_id=>136).first_or_create
State.where(:id=>1660,:iso=>"23",:name=>"Rēzekne",:country_id=>136).first_or_create
State.where(:id=>1661,:iso=>"22",:name=>"Preiļu Rajons",:country_id=>136).first_or_create
State.where(:id=>1662,:iso=>"21",:name=>"Ogres Rajons",:country_id=>136).first_or_create
State.where(:id=>1663,:iso=>"20",:name=>"Madonas Rajons",:country_id=>136).first_or_create
State.where(:id=>1664,:iso=>"19",:name=>"Ludzas Rajons",:country_id=>136).first_or_create
State.where(:id=>1665,:iso=>"18",:name=>"Limbažu Rajons",:country_id=>136).first_or_create
State.where(:id=>1666,:iso=>"17",:name=>"Liepājas Rajons",:country_id=>136).first_or_create
State.where(:id=>1667,:iso=>"16",:name=>"Liepāja",:country_id=>136).first_or_create
State.where(:id=>1668,:iso=>"15",:name=>"Kuldīgas Rajons",:country_id=>136).first_or_create
State.where(:id=>1669,:iso=>"14",:name=>"Krāslavas Rajons",:country_id=>136).first_or_create
State.where(:id=>1670,:iso=>"13",:name=>"Jūrmala",:country_id=>136).first_or_create
State.where(:id=>1671,:iso=>"12",:name=>"Jelgavas Rajons",:country_id=>136).first_or_create
State.where(:id=>1672,:iso=>"11",:name=>"Jelgava",:country_id=>136).first_or_create
State.where(:id=>1673,:iso=>"10",:name=>"Jēkabpils Rajons",:country_id=>136).first_or_create
State.where(:id=>1674,:iso=>"09",:name=>"Gulbenes Rajons",:country_id=>136).first_or_create
State.where(:id=>1675,:iso=>"08",:name=>"Dobeles Rajons",:country_id=>136).first_or_create
State.where(:id=>1676,:iso=>"07",:name=>"Daugavpils Rajons",:country_id=>136).first_or_create
State.where(:id=>1677,:iso=>"06",:name=>"Daugavpils",:country_id=>136).first_or_create
State.where(:id=>1678,:iso=>"05",:name=>"Cēsu Rajons",:country_id=>136).first_or_create
State.where(:id=>1679,:iso=>"04",:name=>"Bauskas Rajons",:country_id=>136).first_or_create
State.where(:id=>1680,:iso=>"03",:name=>"Balvu Rajons",:country_id=>136).first_or_create
State.where(:id=>1681,:iso=>"02",:name=>"Alūksnes Rajons",:country_id=>136).first_or_create
State.where(:id=>1682,:iso=>"01",:name=>"Aizkraukles Rajons",:country_id=>136).first_or_create
State.where(:id=>1683,:iso=>"60",:name=>"Dundagas Novads",:country_id=>136).first_or_create
State.where(:id=>1684,:iso=>"40",:name=>"Alsungas Novads",:country_id=>136).first_or_create
State.where(:id=>1685,:iso=>"A5",:name=>"Pāvilostas Novads",:country_id=>136).first_or_create
State.where(:id=>1686,:iso=>"99",:name=>"Nīcas Novads",:country_id=>136).first_or_create
State.where(:id=>1687,:iso=>"B6",:name=>"Rucavas Novads",:country_id=>136).first_or_create
State.where(:id=>1688,:iso=>"65",:name=>"Grobiņas Novads",:country_id=>136).first_or_create
State.where(:id=>1689,:iso=>"61",:name=>"Durbes Novads",:country_id=>136).first_or_create
State.where(:id=>1690,:iso=>"37",:name=>"Aizputes Novads",:country_id=>136).first_or_create
State.where(:id=>1691,:iso=>"A8",:name=>"Priekules Novads",:country_id=>136).first_or_create
State.where(:id=>1692,:iso=>"D7",:name=>"Vaiņodes Novads",:country_id=>136).first_or_create
State.where(:id=>1693,:iso=>"C9",:name=>"Skrundas Novads",:country_id=>136).first_or_create
State.where(:id=>1694,:iso=>"51",:name=>"Brocēnu Novads",:country_id=>136).first_or_create
State.where(:id=>1695,:iso=>"B4",:name=>"Rojas Novads",:country_id=>136).first_or_create
State.where(:id=>1696,:iso=>"77",:name=>"Kandavas Novads",:country_id=>136).first_or_create
State.where(:id=>1697,:iso=>"44",:name=>"Auces Novads",:country_id=>136).first_or_create
State.where(:id=>1698,:iso=>"73",:name=>"Jaunpils Novads",:country_id=>136).first_or_create
State.where(:id=>1699,:iso=>"62",:name=>"Engures Novads",:country_id=>136).first_or_create
State.where(:id=>1700,:iso=>"D5",:name=>"Tērvetes Novads",:country_id=>136).first_or_create
State.where(:id=>1701,:iso=>"A3",:name=>"Ozolnieku Novads",:country_id=>136).first_or_create
State.where(:id=>1702,:iso=>"B9",:name=>"Rundāles Novads",:country_id=>136).first_or_create
State.where(:id=>1703,:iso=>"45",:name=>"Babītes Novads",:country_id=>136).first_or_create
State.where(:id=>1704,:iso=>"95",:name=>"Mārupes Novads",:country_id=>136).first_or_create
State.where(:id=>1705,:iso=>"A2",:name=>"Olaines Novads",:country_id=>136).first_or_create
State.where(:id=>1706,:iso=>"67",:name=>"Iecavas Novads",:country_id=>136).first_or_create
State.where(:id=>1707,:iso=>"80",:name=>"Ķekavas Novads",:country_id=>136).first_or_create
State.where(:id=>1708,:iso=>"C3",:name=>"Salaspils Novads",:country_id=>136).first_or_create
State.where(:id=>1709,:iso=>"46",:name=>"Baldones Novads",:country_id=>136).first_or_create
State.where(:id=>1710,:iso=>"D2",:name=>"Stopiņu Novads",:country_id=>136).first_or_create
State.where(:id=>1711,:iso=>"53",:name=>"Carnikavas Novads",:country_id=>136).first_or_create
State.where(:id=>1712,:iso=>"34",:name=>"Ādažu Novads",:country_id=>136).first_or_create
State.where(:id=>1713,:iso=>"64",:name=>"Garkalnes Novads",:country_id=>136).first_or_create
State.where(:id=>1714,:iso=>"E4",:name=>"Vecumnieku Novads",:country_id=>136).first_or_create
State.where(:id=>1715,:iso=>"79",:name=>"Ķeguma Novads",:country_id=>136).first_or_create
State.where(:id=>1716,:iso=>"87",:name=>"Lielvārdes Novads",:country_id=>136).first_or_create
State.where(:id=>1717,:iso=>"C8",:name=>"Skrīveru Novads",:country_id=>136).first_or_create
State.where(:id=>1718,:iso=>"71",:name=>"Jaunjelgavas Novads",:country_id=>136).first_or_create
State.where(:id=>1719,:iso=>"98",:name=>"Neretas Novads",:country_id=>136).first_or_create
State.where(:id=>1720,:iso=>"E6",:name=>"Viesītes Novads",:country_id=>136).first_or_create
State.where(:id=>1721,:iso=>"C2",:name=>"Salas Novads",:country_id=>136).first_or_create
State.where(:id=>1722,:iso=>"74",:name=>"Jēkabpils",:country_id=>136).first_or_create
State.where(:id=>1723,:iso=>"38",:name=>"Aknīstes Novads",:country_id=>136).first_or_create
State.where(:id=>1724,:iso=>"69",:name=>"Ilūkstes Novads",:country_id=>136).first_or_create
State.where(:id=>1725,:iso=>"E2",:name=>"Vārkavas Novads",:country_id=>136).first_or_create
State.where(:id=>1726,:iso=>"90",:name=>"Līvānu Novads",:country_id=>136).first_or_create
State.where(:id=>1727,:iso=>"E1",:name=>"Varakļānu Novads",:country_id=>136).first_or_create
State.where(:id=>1728,:iso=>"E8",:name=>"Viļānu Novads",:country_id=>136).first_or_create
State.where(:id=>1729,:iso=>"B3",:name=>"Riebiņu Novads",:country_id=>136).first_or_create
State.where(:id=>1730,:iso=>"35",:name=>"Aglonas Novads",:country_id=>136).first_or_create
State.where(:id=>1731,:iso=>"56",:name=>"Ciblas Novads",:country_id=>136).first_or_create
State.where(:id=>1732,:iso=>"E9",:name=>"Zilupes Novads",:country_id=>136).first_or_create
State.where(:id=>1733,:iso=>"E7",:name=>"Viļakas Novads",:country_id=>136).first_or_create
State.where(:id=>1734,:iso=>"47",:name=>"Baltinavas Novads",:country_id=>136).first_or_create
State.where(:id=>1735,:iso=>"57",:name=>"Dagdas Novads",:country_id=>136).first_or_create
State.where(:id=>1736,:iso=>"78",:name=>"Kārsavas Novads",:country_id=>136).first_or_create
State.where(:id=>1737,:iso=>"B7",:name=>"Rugāju Novads",:country_id=>136).first_or_create
State.where(:id=>1738,:iso=>"55",:name=>"Cesvaines Novads",:country_id=>136).first_or_create
State.where(:id=>1739,:iso=>"91",:name=>"Lubānas Novads",:country_id=>136).first_or_create
State.where(:id=>1740,:iso=>"85",:name=>"Krustpils Novads",:country_id=>136).first_or_create
State.where(:id=>1741,:iso=>"A6",:name=>"Pļaviņu Novads",:country_id=>136).first_or_create
State.where(:id=>1742,:iso=>"82",:name=>"Kokneses Novads",:country_id=>136).first_or_create
State.where(:id=>1743,:iso=>"68",:name=>"Ikšķiles Novads",:country_id=>136).first_or_create
State.where(:id=>1744,:iso=>"B5",:name=>"Ropažu Novads",:country_id=>136).first_or_create
State.where(:id=>1745,:iso=>"70",:name=>"Inčukalna Novads",:country_id=>136).first_or_create
State.where(:id=>1746,:iso=>"84",:name=>"Krimuldas Novads",:country_id=>136).first_or_create
State.where(:id=>1747,:iso=>"C7",:name=>"Siguldas Novads",:country_id=>136).first_or_create
State.where(:id=>1748,:iso=>"88",:name=>"Līgatnes Novads",:country_id=>136).first_or_create
State.where(:id=>1749,:iso=>"94",:name=>"Mālpils Novads",:country_id=>136).first_or_create
State.where(:id=>1750,:iso=>"C6",:name=>"Sējas Novads",:country_id=>136).first_or_create
State.where(:id=>1751,:iso=>"C5",:name=>"Saulkrastu Novads",:country_id=>136).first_or_create
State.where(:id=>1752,:iso=>"C1",:name=>"Salacgrīvas Novads",:country_id=>136).first_or_create
State.where(:id=>1753,:iso=>"39",:name=>"Alojas Novads",:country_id=>136).first_or_create
State.where(:id=>1754,:iso=>"97",:name=>"Naukšēnu Novads",:country_id=>136).first_or_create
State.where(:id=>1755,:iso=>"B8",:name=>"Rūjienas Novads",:country_id=>136).first_or_create
State.where(:id=>1756,:iso=>"96",:name=>"Mazsalacas Novads",:country_id=>136).first_or_create
State.where(:id=>1757,:iso=>"52",:name=>"Burtnieku Novads",:country_id=>136).first_or_create
State.where(:id=>1758,:iso=>"A4",:name=>"Pārgaujas Novads",:country_id=>136).first_or_create
State.where(:id=>1759,:iso=>"81",:name=>"Kocēnu Novads",:country_id=>136).first_or_create
State.where(:id=>1760,:iso=>"42",:name=>"Amatas Novads",:country_id=>136).first_or_create
State.where(:id=>1761,:iso=>"A9",:name=>"Priekuļu Novads",:country_id=>136).first_or_create
State.where(:id=>1762,:iso=>"B1",:name=>"Raunas Novads",:country_id=>136).first_or_create
State.where(:id=>1763,:iso=>"D3",:name=>"Strenču Novads",:country_id=>136).first_or_create
State.where(:id=>1764,:iso=>"50",:name=>"Beverīnas Novads",:country_id=>136).first_or_create
State.where(:id=>1765,:iso=>"D1",:name=>"Smiltenes Novads",:country_id=>136).first_or_create
State.where(:id=>1766,:iso=>"72",:name=>"Jaunpiebalgas Novads",:country_id=>136).first_or_create
State.where(:id=>1767,:iso=>"63",:name=>"Ērgļu Novads",:country_id=>136).first_or_create
State.where(:id=>1768,:iso=>"E3",:name=>"Vecpiebalgas Novads",:country_id=>136).first_or_create
State.where(:id=>1769,:iso=>"43",:name=>"Apes Novads",:country_id=>136).first_or_create
State.where(:id=>1770,:iso=>"70",:name=>"Darnah",:country_id=>137).first_or_create
State.where(:id=>1771,:iso=>"69",:name=>"Banghāzī",:country_id=>137).first_or_create
State.where(:id=>1772,:iso=>"66",:name=>"Al Marj",:country_id=>137).first_or_create
State.where(:id=>1773,:iso=>"65",:name=>"Al Kufrah",:country_id=>137).first_or_create
State.where(:id=>1774,:iso=>"63",:name=>"Al Jabal al Akhḑar",:country_id=>137).first_or_create
State.where(:id=>1775,:iso=>"77",:name=>"Ţarābulus",:country_id=>137).first_or_create
State.where(:id=>1776,:iso=>"76",:name=>"Surt",:country_id=>137).first_or_create
State.where(:id=>1777,:iso=>"75",:name=>"Sabhā",:country_id=>137).first_or_create
State.where(:id=>1778,:iso=>"74",:name=>"Nālūt",:country_id=>137).first_or_create
State.where(:id=>1779,:iso=>"73",:name=>"Murzuq",:country_id=>137).first_or_create
State.where(:id=>1780,:iso=>"72",:name=>"Mişrātah",:country_id=>137).first_or_create
State.where(:id=>1781,:iso=>"71",:name=>"Ghāt",:country_id=>137).first_or_create
State.where(:id=>1782,:iso=>"68",:name=>"Az Zāwiyah",:country_id=>137).first_or_create
State.where(:id=>1783,:iso=>"78",:name=>"Ash Shāţiʼ",:country_id=>137).first_or_create
State.where(:id=>1784,:iso=>"64",:name=>"Al Jufrah",:country_id=>137).first_or_create
State.where(:id=>1785,:iso=>"67",:name=>"An Nuqāţ al Khams",:country_id=>137).first_or_create
State.where(:id=>1786,:iso=>"79",:name=>"Sha‘bīyat al Buţnān",:country_id=>137).first_or_create
State.where(:id=>1787,:iso=>"80",:name=>"Sha‘bīyat al Jabal al Gharbī",:country_id=>137).first_or_create
State.where(:id=>1788,:iso=>"81",:name=>"Sha‘bīyat al Jafārah",:country_id=>137).first_or_create
State.where(:id=>1789,:iso=>"82",:name=>"Sha‘bīyat al Marqab",:country_id=>137).first_or_create
State.where(:id=>1790,:iso=>"83",:name=>"Sha‘bīyat al Wāḩāt",:country_id=>137).first_or_create
State.where(:id=>1791,:iso=>"84",:name=>"Sha‘bīyat Wādī al Ḩayāt",:country_id=>137).first_or_create
State.where(:id=>1792,:iso=>"49",:name=>"Rabat-Salé-Zemmour-Zaër",:country_id=>138).first_or_create
State.where(:id=>1793,:iso=>"48",:name=>"Meknès-Tafilalet",:country_id=>138).first_or_create
State.where(:id=>1794,:iso=>"47",:name=>"Marrakech-Tensift-Al Haouz",:country_id=>138).first_or_create
State.where(:id=>1795,:iso=>"46",:name=>"Fès-Boulemane",:country_id=>138).first_or_create
State.where(:id=>1796,:iso=>"45",:name=>"Grand Casablanca",:country_id=>138).first_or_create
State.where(:id=>1797,:iso=>"50",:name=>"Chaouia-Ouardigha",:country_id=>138).first_or_create
State.where(:id=>1798,:iso=>"51",:name=>"Doukkala-Abda",:country_id=>138).first_or_create
State.where(:id=>1799,:iso=>"52",:name=>"Gharb-Chrarda-Beni Hssen",:country_id=>138).first_or_create
State.where(:id=>1800,:iso=>"53",:name=>"Guelmim-Es Smara",:country_id=>138).first_or_create
State.where(:id=>1801,:iso=>"54",:name=>"Oriental",:country_id=>138).first_or_create
State.where(:id=>1802,:iso=>"55",:name=>"Souss-Massa-Drâa",:country_id=>138).first_or_create
State.where(:id=>1803,:iso=>"56",:name=>"Tadla-Azilal",:country_id=>138).first_or_create
State.where(:id=>1804,:iso=>"57",:name=>"Tanger-Tétouan",:country_id=>138).first_or_create
State.where(:id=>1805,:iso=>"58",:name=>"Taza-Al Hoceima-Taounate",:country_id=>138).first_or_create
State.where(:id=>1806,:iso=>"59",:name=>"Laâyoune-Boujdour-Sakia El Hamra",:country_id=>138).first_or_create
State.where(:id=>1807,:iso=>"EH",:name=>"Oued ed Dahab-Lagouira",:country_id=>138).first_or_create
State.where(:id=>1808,:iso=>"73",:name=>"Raionul Edineţ",:country_id=>140).first_or_create
State.where(:id=>1809,:iso=>"92",:name=>"Raionul Ungheni",:country_id=>140).first_or_create
State.where(:id=>1810,:iso=>"91",:name=>"Raionul Teleneşti",:country_id=>140).first_or_create
State.where(:id=>1811,:iso=>"90",:name=>"Raionul Taraclia",:country_id=>140).first_or_create
State.where(:id=>1812,:iso=>"88",:name=>"Ştefan-Vodă",:country_id=>140).first_or_create
State.where(:id=>1813,:iso=>"89",:name=>"Raionul Străşeni",:country_id=>140).first_or_create
State.where(:id=>1814,:iso=>"87",:name=>"Raionul Soroca",:country_id=>140).first_or_create
State.where(:id=>1815,:iso=>"84",:name=>"Raionul Rîşcani",:country_id=>140).first_or_create
State.where(:id=>1816,:iso=>"83",:name=>"Raionul Rezina",:country_id=>140).first_or_create
State.where(:id=>1817,:iso=>"82",:name=>"Raionul Orhei",:country_id=>140).first_or_create
State.where(:id=>1818,:iso=>"81",:name=>"Raionul Ocniţa",:country_id=>140).first_or_create
State.where(:id=>1819,:iso=>"59",:name=>"Raionul Anenii Noi",:country_id=>140).first_or_create
State.where(:id=>1820,:iso=>"80",:name=>"Raionul Nisporeni",:country_id=>140).first_or_create
State.where(:id=>1821,:iso=>"79",:name=>"Raionul Leova",:country_id=>140).first_or_create
State.where(:id=>1822,:iso=>"85",:name=>"Raionul Sîngerei",:country_id=>140).first_or_create
State.where(:id=>1823,:iso=>"69",:name=>"Raionul Criuleni",:country_id=>140).first_or_create
State.where(:id=>1824,:iso=>"78",:name=>"Raionul Ialoveni",:country_id=>140).first_or_create
State.where(:id=>1825,:iso=>"57",:name=>"Chişinău",:country_id=>140).first_or_create
State.where(:id=>1826,:iso=>"67",:name=>"Căuşeni",:country_id=>140).first_or_create
State.where(:id=>1827,:iso=>"65",:name=>"Raionul Cantemir",:country_id=>140).first_or_create
State.where(:id=>1828,:iso=>"66",:name=>"Călăraşi",:country_id=>140).first_or_create
State.where(:id=>1829,:iso=>"64",:name=>"Raionul Cahul",:country_id=>140).first_or_create
State.where(:id=>1830,:iso=>"76",:name=>"Raionul Glodeni",:country_id=>140).first_or_create
State.where(:id=>1831,:iso=>"75",:name=>"Raionul Floreşti",:country_id=>140).first_or_create
State.where(:id=>1832,:iso=>"74",:name=>"Raionul Făleşti",:country_id=>140).first_or_create
State.where(:id=>1833,:iso=>"72",:name=>"Dubăsari",:country_id=>140).first_or_create
State.where(:id=>1834,:iso=>"71",:name=>"Raionul Drochia",:country_id=>140).first_or_create
State.where(:id=>1835,:iso=>"70",:name=>"Raionul Donduşeni",:country_id=>140).first_or_create
State.where(:id=>1836,:iso=>"68",:name=>"Raionul Cimişlia",:country_id=>140).first_or_create
State.where(:id=>1837,:iso=>"63",:name=>"Raionul Briceni",:country_id=>140).first_or_create
State.where(:id=>1838,:iso=>"61",:name=>"Raionul Basarabeasca",:country_id=>140).first_or_create
State.where(:id=>1839,:iso=>"77",:name=>"Raionul Hînceşti",:country_id=>140).first_or_create
State.where(:id=>1840,:iso=>"86",:name=>"Raionul Şoldăneşti",:country_id=>140).first_or_create
State.where(:id=>1841,:iso=>"58",:name=>"Stînga Nistrului",:country_id=>140).first_or_create
State.where(:id=>1842,:iso=>"51",:name=>"Găgăuzia",:country_id=>140).first_or_create
State.where(:id=>1843,:iso=>"62",:name=>"Bender",:country_id=>140).first_or_create
State.where(:id=>1844,:iso=>"60",:name=>"Bălţi",:country_id=>140).first_or_create
State.where(:id=>1845,:iso=>"17",:name=>"Opština Rožaje",:country_id=>141).first_or_create
State.where(:id=>1846,:iso=>"21",:name=>"Opština Žabljak",:country_id=>141).first_or_create
State.where(:id=>1847,:iso=>"20",:name=>"Opština Ulcinj",:country_id=>141).first_or_create
State.where(:id=>1848,:iso=>"19",:name=>"Opština Tivat",:country_id=>141).first_or_create
State.where(:id=>1849,:iso=>"16",:name=>"Opština Podgorica",:country_id=>141).first_or_create
State.where(:id=>1850,:iso=>"18",:name=>"Opština Šavnik",:country_id=>141).first_or_create
State.where(:id=>1851,:iso=>"15",:name=>"Opština Plužine",:country_id=>141).first_or_create
State.where(:id=>1852,:iso=>"14",:name=>"Opština Pljevlja",:country_id=>141).first_or_create
State.where(:id=>1853,:iso=>"13",:name=>"Opština Plav",:country_id=>141).first_or_create
State.where(:id=>1854,:iso=>"12",:name=>"Opština Nikšić",:country_id=>141).first_or_create
State.where(:id=>1855,:iso=>"11",:name=>"Opština Mojkovac",:country_id=>141).first_or_create
State.where(:id=>1856,:iso=>"10",:name=>"Opština Kotor",:country_id=>141).first_or_create
State.where(:id=>1857,:iso=>"09",:name=>"Opština Kolašin",:country_id=>141).first_or_create
State.where(:id=>1858,:iso=>"03",:name=>"Opština Berane",:country_id=>141).first_or_create
State.where(:id=>1859,:iso=>"08",:name=>"Opština Herceg Novi",:country_id=>141).first_or_create
State.where(:id=>1860,:iso=>"07",:name=>"Opština Danilovgrad",:country_id=>141).first_or_create
State.where(:id=>1861,:iso=>"06",:name=>"Opština Cetinje",:country_id=>141).first_or_create
State.where(:id=>1862,:iso=>"05",:name=>"Opština Budva",:country_id=>141).first_or_create
State.where(:id=>1863,:iso=>"04",:name=>"Opština Bijelo Polje",:country_id=>141).first_or_create
State.where(:id=>1864,:iso=>"02",:name=>"Opština Bar",:country_id=>141).first_or_create
State.where(:id=>1865,:iso=>"01",:name=>"Opština Andrijevica",:country_id=>141).first_or_create
State.where(:id=>1866,:iso=>"7670842",:name=>"Diana",:country_id=>143).first_or_create
State.where(:id=>1867,:iso=>"7670846",:name=>"Sava",:country_id=>143).first_or_create
State.where(:id=>1868,:iso=>"7670847",:name=>"Sofia",:country_id=>143).first_or_create
State.where(:id=>1869,:iso=>"7670848",:name=>"Analanjirofo",:country_id=>143).first_or_create
State.where(:id=>1870,:iso=>"7670849",:name=>"Boeny",:country_id=>143).first_or_create
State.where(:id=>1871,:iso=>"7670850",:name=>"Betsiboka",:country_id=>143).first_or_create
State.where(:id=>1872,:iso=>"7670851",:name=>"Alaotra-Mangoro",:country_id=>143).first_or_create
State.where(:id=>1873,:iso=>"7670852",:name=>"Melaky",:country_id=>143).first_or_create
State.where(:id=>1874,:iso=>"7670853",:name=>"Bongolava",:country_id=>143).first_or_create
State.where(:id=>1875,:iso=>"7670854",:name=>"Vakinankaratra",:country_id=>143).first_or_create
State.where(:id=>1876,:iso=>"7670855",:name=>"Itasy",:country_id=>143).first_or_create
State.where(:id=>1877,:iso=>"7670856",:name=>"Analamanga",:country_id=>143).first_or_create
State.where(:id=>1878,:iso=>"7670857",:name=>"East",:country_id=>143).first_or_create
State.where(:id=>1879,:iso=>"7670902",:name=>"Menabe",:country_id=>143).first_or_create
State.where(:id=>1880,:iso=>"7670904",:name=>"Amoron'i Mania",:country_id=>143).first_or_create
State.where(:id=>1881,:iso=>"7670905",:name=>"Upper Matsiatra",:country_id=>143).first_or_create
State.where(:id=>1882,:iso=>"7670906",:name=>"Vatovavy-Fitovinany",:country_id=>143).first_or_create
State.where(:id=>1883,:iso=>"7670907",:name=>"Ihorombe",:country_id=>143).first_or_create
State.where(:id=>1884,:iso=>"7670908",:name=>"South-East",:country_id=>143).first_or_create
State.where(:id=>1885,:iso=>"7670910",:name=>"Anosy",:country_id=>143).first_or_create
State.where(:id=>1886,:iso=>"7670911",:name=>"Androy",:country_id=>143).first_or_create
State.where(:id=>1887,:iso=>"7670913",:name=>"South-West",:country_id=>143).first_or_create
State.where(:id=>1888,:iso=>"007",:name=>"Ailinginae Atoll",:country_id=>144).first_or_create
State.where(:id=>1889,:iso=>"010",:name=>"Ailinglaplap Atoll",:country_id=>144).first_or_create
State.where(:id=>1890,:iso=>"030",:name=>"Ailuk Atoll",:country_id=>144).first_or_create
State.where(:id=>1891,:iso=>"040",:name=>"Arno Atoll",:country_id=>144).first_or_create
State.where(:id=>1892,:iso=>"050",:name=>"Aur Atoll",:country_id=>144).first_or_create
State.where(:id=>1893,:iso=>"060",:name=>"Bikar Atoll",:country_id=>144).first_or_create
State.where(:id=>1894,:iso=>"070",:name=>"Bikini Atoll",:country_id=>144).first_or_create
State.where(:id=>1895,:iso=>"080",:name=>"Ebon Atoll",:country_id=>144).first_or_create
State.where(:id=>1896,:iso=>"090",:name=>"Enewetak Atoll",:country_id=>144).first_or_create
State.where(:id=>1897,:iso=>"100",:name=>"Erikub Atoll",:country_id=>144).first_or_create
State.where(:id=>1898,:iso=>"120",:name=>"Jaluit Atoll",:country_id=>144).first_or_create
State.where(:id=>1899,:iso=>"150",:name=>"Kwajalein Atoll",:country_id=>144).first_or_create
State.where(:id=>1900,:iso=>"160",:name=>"Lae Atoll",:country_id=>144).first_or_create
State.where(:id=>1901,:iso=>"180",:name=>"Likiep Atoll",:country_id=>144).first_or_create
State.where(:id=>1902,:iso=>"190",:name=>"Majuro Atoll",:country_id=>144).first_or_create
State.where(:id=>1903,:iso=>"300",:name=>"Maloelap Atoll",:country_id=>144).first_or_create
State.where(:id=>1904,:iso=>"320",:name=>"Mili Atoll",:country_id=>144).first_or_create
State.where(:id=>1905,:iso=>"330",:name=>"Namdrik Atoll",:country_id=>144).first_or_create
State.where(:id=>1906,:iso=>"340",:name=>"Namu Atoll",:country_id=>144).first_or_create
State.where(:id=>1907,:iso=>"350",:name=>"Rongelap Atoll",:country_id=>144).first_or_create
State.where(:id=>1908,:iso=>"360",:name=>"Rongrik Atoll",:country_id=>144).first_or_create
State.where(:id=>1909,:iso=>"385",:name=>"Taka Atoll",:country_id=>144).first_or_create
State.where(:id=>1910,:iso=>"073",:name=>"Bokak Atoll",:country_id=>144).first_or_create
State.where(:id=>1911,:iso=>"390",:name=>"Ujae Atoll",:country_id=>144).first_or_create
State.where(:id=>1912,:iso=>"400",:name=>"Ujelang",:country_id=>144).first_or_create
State.where(:id=>1913,:iso=>"410",:name=>"Utrik Atoll",:country_id=>144).first_or_create
State.where(:id=>1914,:iso=>"420",:name=>"Wotho Atoll",:country_id=>144).first_or_create
State.where(:id=>1915,:iso=>"430",:name=>"Wotje Atoll",:country_id=>144).first_or_create
State.where(:id=>1916,:iso=>"110",:name=>"Jabat Island",:country_id=>144).first_or_create
State.where(:id=>1917,:iso=>"130",:name=>"Jemo Island",:country_id=>144).first_or_create
State.where(:id=>1918,:iso=>"140",:name=>"Kili Island",:country_id=>144).first_or_create
State.where(:id=>1919,:iso=>"170",:name=>"Lib Island",:country_id=>144).first_or_create
State.where(:id=>1920,:iso=>"310",:name=>"Mejit Island",:country_id=>144).first_or_create
State.where(:id=>1921,:iso=>"E9",:name=>"Valandovo",:country_id=>145).first_or_create
State.where(:id=>1922,:iso=>"51",:name=>"Kratovo",:country_id=>145).first_or_create
State.where(:id=>1923,:iso=>"78",:name=>"Pehčevo",:country_id=>145).first_or_create
State.where(:id=>1924,:iso=>"72",:name=>"Novo Selo",:country_id=>145).first_or_create
State.where(:id=>1925,:iso=>"11",:name=>"Bosilovo",:country_id=>145).first_or_create
State.where(:id=>1926,:iso=>"A9",:name=>"Vasilevo",:country_id=>145).first_or_create
State.where(:id=>1927,:iso=>"E5",:name=>"Dojran",:country_id=>145).first_or_create
State.where(:id=>1928,:iso=>"08",:name=>"Bogdanci",:country_id=>145).first_or_create
State.where(:id=>1929,:iso=>"47",:name=>"Konče",:country_id=>145).first_or_create
State.where(:id=>1930,:iso=>"62",:name=>"Makedonska Kamenica",:country_id=>145).first_or_create
State.where(:id=>1931,:iso=>"C6",:name=>"Zrnovci",:country_id=>145).first_or_create
State.where(:id=>1932,:iso=>"40",:name=>"Karbinci",:country_id=>145).first_or_create
State.where(:id=>1933,:iso=>"25",:name=>"Demir Kapija",:country_id=>145).first_or_create
State.where(:id=>1934,:iso=>"87",:name=>"Rosoman",:country_id=>145).first_or_create
State.where(:id=>1935,:iso=>"35",:name=>"Gradsko",:country_id=>145).first_or_create
State.where(:id=>1936,:iso=>"60",:name=>"Lozovo",:country_id=>145).first_or_create
State.where(:id=>1937,:iso=>"19",:name=>"Češinovo",:country_id=>145).first_or_create
State.where(:id=>1938,:iso=>"E1",:name=>"Novaci",:country_id=>145).first_or_create
State.where(:id=>1939,:iso=>"04",:name=>"Berovo",:country_id=>145).first_or_create
State.where(:id=>1940,:iso=>"06",:name=>"Bitola",:country_id=>145).first_or_create
State.where(:id=>1941,:iso=>"D9",:name=>"Mogila",:country_id=>145).first_or_create
State.where(:id=>1942,:iso=>"01",:name=>"Aračinovo",:country_id=>145).first_or_create
State.where(:id=>1943,:iso=>"C7",:name=>"Bogovinje",:country_id=>145).first_or_create
State.where(:id=>1944,:iso=>"12",:name=>"Brvenica",:country_id=>145).first_or_create
State.where(:id=>1945,:iso=>"C8",:name=>"Čair",:country_id=>145).first_or_create
State.where(:id=>1946,:iso=>"C9",:name=>"Čaška",:country_id=>145).first_or_create
State.where(:id=>1947,:iso=>"D1",:name=>"Centar",:country_id=>145).first_or_create
State.where(:id=>1948,:iso=>"18",:name=>"Centar Župa",:country_id=>145).first_or_create
State.where(:id=>1949,:iso=>"20",:name=>"Čučer-Sandevo",:country_id=>145).first_or_create
State.where(:id=>1950,:iso=>"D2",:name=>"Debar",:country_id=>145).first_or_create
State.where(:id=>1951,:iso=>"22",:name=>"Delčevo",:country_id=>145).first_or_create
State.where(:id=>1952,:iso=>"D3",:name=>"Demir Hisar",:country_id=>145).first_or_create
State.where(:id=>1953,:iso=>"29",:name=>"Opstina Gjorce Petrov",:country_id=>145).first_or_create
State.where(:id=>1954,:iso=>"30",:name=>"Drugovo",:country_id=>145).first_or_create
State.where(:id=>1955,:iso=>"32",:name=>"Gazi Baba",:country_id=>145).first_or_create
State.where(:id=>1956,:iso=>"33",:name=>"Gevgelija",:country_id=>145).first_or_create
State.where(:id=>1957,:iso=>"D4",:name=>"Gostivar",:country_id=>145).first_or_create
State.where(:id=>1958,:iso=>"36",:name=>"Ilinden",:country_id=>145).first_or_create
State.where(:id=>1959,:iso=>"D5",:name=>"Jegunovce",:country_id=>145).first_or_create
State.where(:id=>1960,:iso=>"41",:name=>"Karpoš",:country_id=>145).first_or_create
State.where(:id=>1961,:iso=>"D6",:name=>"Kavadarci",:country_id=>145).first_or_create
State.where(:id=>1962,:iso=>"43",:name=>"Kičevo",:country_id=>145).first_or_create
State.where(:id=>1963,:iso=>"44",:name=>"Kisela Voda",:country_id=>145).first_or_create
State.where(:id=>1964,:iso=>"46",:name=>"Kočani",:country_id=>145).first_or_create
State.where(:id=>1965,:iso=>"52",:name=>"Kriva Palanka",:country_id=>145).first_or_create
State.where(:id=>1966,:iso=>"53",:name=>"Krivogaštani",:country_id=>145).first_or_create
State.where(:id=>1967,:iso=>"54",:name=>"Kruševo",:country_id=>145).first_or_create
State.where(:id=>1968,:iso=>"D7",:name=>"Kumanovo",:country_id=>145).first_or_create
State.where(:id=>1969,:iso=>"59",:name=>"Opstina Lipkovo",:country_id=>145).first_or_create
State.where(:id=>1970,:iso=>"D8",:name=>"Makedonski Brod",:country_id=>145).first_or_create
State.where(:id=>1971,:iso=>"69",:name=>"Negotino",:country_id=>145).first_or_create
State.where(:id=>1972,:iso=>"E2",:name=>"Ohrid",:country_id=>145).first_or_create
State.where(:id=>1973,:iso=>"77",:name=>"Oslomej",:country_id=>145).first_or_create
State.where(:id=>1974,:iso=>"79",:name=>"Petrovec",:country_id=>145).first_or_create
State.where(:id=>1975,:iso=>"80",:name=>"Plasnica",:country_id=>145).first_or_create
State.where(:id=>1976,:iso=>"E3",:name=>"Prilep",:country_id=>145).first_or_create
State.where(:id=>1977,:iso=>"83",:name=>"Probištip",:country_id=>145).first_or_create
State.where(:id=>1978,:iso=>"84",:name=>"Radoviš",:country_id=>145).first_or_create
State.where(:id=>1979,:iso=>"85",:name=>"Opstina Rankovce",:country_id=>145).first_or_create
State.where(:id=>1980,:iso=>"E4",:name=>"Opština Rostuša",:country_id=>145).first_or_create
State.where(:id=>1981,:iso=>"90",:name=>"Saraj",:country_id=>145).first_or_create
State.where(:id=>1982,:iso=>"92",:name=>"Sopište",:country_id=>145).first_or_create
State.where(:id=>1983,:iso=>"97",:name=>"Staro Nagoričane",:country_id=>145).first_or_create
State.where(:id=>1984,:iso=>"98",:name=>"Štip",:country_id=>145).first_or_create
State.where(:id=>1985,:iso=>"E6",:name=>"Struga",:country_id=>145).first_or_create
State.where(:id=>1986,:iso=>"E7",:name=>"Strumica",:country_id=>145).first_or_create
State.where(:id=>1987,:iso=>"A2",:name=>"Studeničani",:country_id=>145).first_or_create
State.where(:id=>1988,:iso=>"A3",:name=>"Šuto Orizari",:country_id=>145).first_or_create
State.where(:id=>1989,:iso=>"A4",:name=>"Sveti Nikole",:country_id=>145).first_or_create
State.where(:id=>1990,:iso=>"A5",:name=>"Tearce",:country_id=>145).first_or_create
State.where(:id=>1991,:iso=>"E8",:name=>"Tetovo",:country_id=>145).first_or_create
State.where(:id=>1992,:iso=>"F1",:name=>"Veles",:country_id=>145).first_or_create
State.where(:id=>1993,:iso=>"B3",:name=>"Vevčani",:country_id=>145).first_or_create
State.where(:id=>1994,:iso=>"B4",:name=>"Vinica",:country_id=>145).first_or_create
State.where(:id=>1995,:iso=>"B6",:name=>"Vraneštica",:country_id=>145).first_or_create
State.where(:id=>1996,:iso=>"B7",:name=>"Vrapčište",:country_id=>145).first_or_create
State.where(:id=>1997,:iso=>"C1",:name=>"Zajas",:country_id=>145).first_or_create
State.where(:id=>1998,:iso=>"C2",:name=>"Zelenikovo",:country_id=>145).first_or_create
State.where(:id=>1999,:iso=>"C3",:name=>"Želino",:country_id=>145).first_or_create
State.where(:id=>2000,:iso=>"F2",:name=>"Opština Aerodrom",:country_id=>145).first_or_create
State.where(:id=>2001,:iso=>"F3",:name=>"Opština Butel",:country_id=>145).first_or_create
State.where(:id=>2002,:iso=>"F4",:name=>"Opština Debarca",:country_id=>145).first_or_create
State.where(:id=>2003,:iso=>"08",:name=>"Tombouctou",:country_id=>146).first_or_create
State.where(:id=>2004,:iso=>"06",:name=>"Sikasso",:country_id=>146).first_or_create
State.where(:id=>2005,:iso=>"05",:name=>"Ségou",:country_id=>146).first_or_create
State.where(:id=>2006,:iso=>"04",:name=>"Mopti",:country_id=>146).first_or_create
State.where(:id=>2007,:iso=>"07",:name=>"Koulikoro",:country_id=>146).first_or_create
State.where(:id=>2008,:iso=>"03",:name=>"Kayes",:country_id=>146).first_or_create
State.where(:id=>2009,:iso=>"09",:name=>"Gao",:country_id=>146).first_or_create
State.where(:id=>2010,:iso=>"01",:name=>"Bamako",:country_id=>146).first_or_create
State.where(:id=>2011,:iso=>"10",:name=>"Kidal",:country_id=>146).first_or_create
State.where(:id=>2012,:iso=>"12",:name=>"Tanintharyi",:country_id=>147).first_or_create
State.where(:id=>2013,:iso=>"11",:name=>"Shan",:country_id=>147).first_or_create
State.where(:id=>2014,:iso=>"10",:name=>"Sagain",:country_id=>147).first_or_create
State.where(:id=>2015,:iso=>"17",:name=>"Yangon",:country_id=>147).first_or_create
State.where(:id=>2016,:iso=>"01",:name=>"Rakhine",:country_id=>147).first_or_create
State.where(:id=>2017,:iso=>"16",:name=>"Bago",:country_id=>147).first_or_create
State.where(:id=>2018,:iso=>"13",:name=>"Mon",:country_id=>147).first_or_create
State.where(:id=>2019,:iso=>"08",:name=>"Mandalay",:country_id=>147).first_or_create
State.where(:id=>2020,:iso=>"15",:name=>"Magway",:country_id=>147).first_or_create
State.where(:id=>2021,:iso=>"06",:name=>"Kayah",:country_id=>147).first_or_create
State.where(:id=>2022,:iso=>"05",:name=>"Kayin",:country_id=>147).first_or_create
State.where(:id=>2023,:iso=>"04",:name=>"Kachin",:country_id=>147).first_or_create
State.where(:id=>2024,:iso=>"03",:name=>"Ayeyarwady",:country_id=>147).first_or_create
State.where(:id=>2025,:iso=>"02",:name=>"Chin",:country_id=>147).first_or_create
State.where(:id=>2026,:iso=>"19",:name=>"Uvs",:country_id=>148).first_or_create
State.where(:id=>2027,:iso=>"12",:name=>"Hovd",:country_id=>148).first_or_create
State.where(:id=>2028,:iso=>"10",:name=>"Govĭ-Altay",:country_id=>148).first_or_create
State.where(:id=>2029,:iso=>"09",:name=>"Dzavhan",:country_id=>148).first_or_create
State.where(:id=>2030,:iso=>"03",:name=>"Bayan-Ölgiy",:country_id=>148).first_or_create
State.where(:id=>2031,:iso=>"02",:name=>"Bayanhongor",:country_id=>148).first_or_create
State.where(:id=>2032,:iso=>"20",:name=>"Ulaanbaatar",:country_id=>148).first_or_create
State.where(:id=>2033,:iso=>"18",:name=>"Central Aymag",:country_id=>148).first_or_create
State.where(:id=>2034,:iso=>"17",:name=>"Sühbaatar",:country_id=>148).first_or_create
State.where(:id=>2035,:iso=>"16",:name=>"Selenge",:country_id=>148).first_or_create
State.where(:id=>2036,:iso=>"15",:name=>"Övörhangay",:country_id=>148).first_or_create
State.where(:id=>2037,:iso=>"14",:name=>"South Govĭ",:country_id=>148).first_or_create
State.where(:id=>2038,:iso=>"13",:name=>"Hövsgöl",:country_id=>148).first_or_create
State.where(:id=>2039,:iso=>"11",:name=>"Hentiy",:country_id=>148).first_or_create
State.where(:id=>2040,:iso=>"08",:name=>"Middle Govĭ",:country_id=>148).first_or_create
State.where(:id=>2041,:iso=>"07",:name=>"East Gobi Aymag",:country_id=>148).first_or_create
State.where(:id=>2042,:iso=>"06",:name=>"Eastern",:country_id=>148).first_or_create
State.where(:id=>2043,:iso=>"21",:name=>"Bulgan",:country_id=>148).first_or_create
State.where(:id=>2044,:iso=>"01",:name=>"Arhangay",:country_id=>148).first_or_create
State.where(:id=>2045,:iso=>"23",:name=>"Darhan Uul",:country_id=>148).first_or_create
State.where(:id=>2046,:iso=>"24",:name=>"Govĭ-Sumber",:country_id=>148).first_or_create
State.where(:id=>2047,:iso=>"25",:name=>"Orhon",:country_id=>148).first_or_create
State.where(:id=>2048,:iso=>"02",:name=>"Macau",:country_id=>149).first_or_create
State.where(:id=>2049,:iso=>"01",:name=>"Ilhas",:country_id=>149).first_or_create
State.where(:id=>2050,:iso=>"100",:name=>"Rota Municipality",:country_id=>150).first_or_create
State.where(:id=>2051,:iso=>"110",:name=>"Saipan Municipality",:country_id=>150).first_or_create
State.where(:id=>2052,:iso=>"120",:name=>"Tinian Municipality",:country_id=>150).first_or_create
State.where(:id=>2053,:iso=>"085",:name=>"Northern Islands Municipality",:country_id=>150).first_or_create
State.where(:id=>2054,:iso=>"MQ",:name=>"Martinique",:country_id=>151).first_or_create
State.where(:id=>2055,:iso=>"06",:name=>"Trarza",:country_id=>152).first_or_create
State.where(:id=>2056,:iso=>"11",:name=>"Tiris Zemmour",:country_id=>152).first_or_create
State.where(:id=>2057,:iso=>"09",:name=>"Tagant",:country_id=>152).first_or_create
State.where(:id=>2058,:iso=>"NKC",:name=>"Nouakchott",:country_id=>152).first_or_create
State.where(:id=>2059,:iso=>"12",:name=>"Inchiri",:country_id=>152).first_or_create
State.where(:id=>2060,:iso=>"02",:name=>"Wilaya du Hodh el Gharbi",:country_id=>152).first_or_create
State.where(:id=>2061,:iso=>"01",:name=>"Hodh ech Chargui",:country_id=>152).first_or_create
State.where(:id=>2062,:iso=>"10",:name=>"Guidimaka",:country_id=>152).first_or_create
State.where(:id=>2063,:iso=>"04",:name=>"Gorgol",:country_id=>152).first_or_create
State.where(:id=>2064,:iso=>"08",:name=>"Dakhlet Nouadhibou",:country_id=>152).first_or_create
State.where(:id=>2065,:iso=>"05",:name=>"Brakna",:country_id=>152).first_or_create
State.where(:id=>2066,:iso=>"03",:name=>"Assaba",:country_id=>152).first_or_create
State.where(:id=>2067,:iso=>"07",:name=>"Adrar",:country_id=>152).first_or_create
State.where(:id=>2068,:iso=>"03",:name=>"Saint Peter",:country_id=>153).first_or_create
State.where(:id=>2069,:iso=>"02",:name=>"Saint Georges",:country_id=>153).first_or_create
State.where(:id=>2070,:iso=>"01",:name=>"Saint Anthony",:country_id=>153).first_or_create
State.where(:id=>2071,:iso=>"21",:name=>"Agalega Islands",:country_id=>155).first_or_create
State.where(:id=>2072,:iso=>"20",:name=>"Savanne",:country_id=>155).first_or_create
State.where(:id=>2073,:iso=>"19",:name=>"Rivière du Rempart",:country_id=>155).first_or_create
State.where(:id=>2074,:iso=>"18",:name=>"Port Louis",:country_id=>155).first_or_create
State.where(:id=>2075,:iso=>"17",:name=>"Plaines Wilhems",:country_id=>155).first_or_create
State.where(:id=>2076,:iso=>"16",:name=>"Pamplemousses",:country_id=>155).first_or_create
State.where(:id=>2077,:iso=>"15",:name=>"Moka",:country_id=>155).first_or_create
State.where(:id=>2078,:iso=>"14",:name=>"Grand Port",:country_id=>155).first_or_create
State.where(:id=>2079,:iso=>"13",:name=>"Flacq",:country_id=>155).first_or_create
State.where(:id=>2080,:iso=>"12",:name=>"Black River",:country_id=>155).first_or_create
State.where(:id=>2081,:iso=>"22",:name=>"Cargados Carajos",:country_id=>155).first_or_create
State.where(:id=>2082,:iso=>"23",:name=>"Rodrigues",:country_id=>155).first_or_create
State.where(:id=>2083,:iso=>"47",:name=>"Vaavu Atholhu",:country_id=>156).first_or_create
State.where(:id=>2084,:iso=>"46",:name=>"Thaa Atholhu",:country_id=>156).first_or_create
State.where(:id=>2085,:iso=>"45",:name=>"Shaviyani Atholhu",:country_id=>156).first_or_create
State.where(:id=>2086,:iso=>"01",:name=>"Seenu",:country_id=>156).first_or_create
State.where(:id=>2087,:iso=>"44",:name=>"Raa Atholhu",:country_id=>156).first_or_create
State.where(:id=>2088,:iso=>"43",:name=>"Noonu Atholhu",:country_id=>156).first_or_create
State.where(:id=>2089,:iso=>"42",:name=>"Gnyaviyani Atoll",:country_id=>156).first_or_create
State.where(:id=>2090,:iso=>"41",:name=>"Meemu Atholhu",:country_id=>156).first_or_create
State.where(:id=>2091,:iso=>"39",:name=>"Lhaviyani Atholhu",:country_id=>156).first_or_create
State.where(:id=>2092,:iso=>"05",:name=>"Laamu",:country_id=>156).first_or_create
State.where(:id=>2093,:iso=>"38",:name=>"Kaafu Atholhu",:country_id=>156).first_or_create
State.where(:id=>2094,:iso=>"37",:name=>"Haa Dhaalu Atholhu",:country_id=>156).first_or_create
State.where(:id=>2095,:iso=>"36",:name=>"Haa Alifu Atholhu",:country_id=>156).first_or_create
State.where(:id=>2096,:iso=>"35",:name=>"Gaafu Dhaalu Atholhu",:country_id=>156).first_or_create
State.where(:id=>2097,:iso=>"34",:name=>"Gaafu Alifu Atholhu",:country_id=>156).first_or_create
State.where(:id=>2098,:iso=>"33",:name=>"Faafu Atholhu",:country_id=>156).first_or_create
State.where(:id=>2099,:iso=>"32",:name=>"Dhaalu Atholhu",:country_id=>156).first_or_create
State.where(:id=>2100,:iso=>"31",:name=>"Baa Atholhu",:country_id=>156).first_or_create
State.where(:id=>2101,:iso=>"30",:name=>"Alifu Atholhu",:country_id=>156).first_or_create
State.where(:id=>2102,:iso=>"40",:name=>"Maale",:country_id=>156).first_or_create
State.where(:id=>2103,:iso=>"S",:name=>"Southern Region",:country_id=>157).first_or_create
State.where(:id=>2104,:iso=>"N",:name=>"Northern Region",:country_id=>157).first_or_create
State.where(:id=>2105,:iso=>"C",:name=>"Central Region",:country_id=>157).first_or_create
State.where(:id=>2106,:iso=>"31",:name=>"Yucatán",:country_id=>158).first_or_create
State.where(:id=>2107,:iso=>"30",:name=>"Veracruz-Llave",:country_id=>158).first_or_create
State.where(:id=>2108,:iso=>"29",:name=>"Tlaxcala",:country_id=>158).first_or_create
State.where(:id=>2109,:iso=>"28",:name=>"Tamaulipas",:country_id=>158).first_or_create
State.where(:id=>2110,:iso=>"27",:name=>"Tabasco",:country_id=>158).first_or_create
State.where(:id=>2111,:iso=>"23",:name=>"Quintana Roo",:country_id=>158).first_or_create
State.where(:id=>2112,:iso=>"22",:name=>"Querétaro",:country_id=>158).first_or_create
State.where(:id=>2113,:iso=>"21",:name=>"Puebla",:country_id=>158).first_or_create
State.where(:id=>2114,:iso=>"20",:name=>"Oaxaca",:country_id=>158).first_or_create
State.where(:id=>2115,:iso=>"19",:name=>"Nuevo León",:country_id=>158).first_or_create
State.where(:id=>2116,:iso=>"17",:name=>"Morelos",:country_id=>158).first_or_create
State.where(:id=>2117,:iso=>"15",:name=>"México",:country_id=>158).first_or_create
State.where(:id=>2118,:iso=>"13",:name=>"Hidalgo",:country_id=>158).first_or_create
State.where(:id=>2119,:iso=>"12",:name=>"Guerrero",:country_id=>158).first_or_create
State.where(:id=>2120,:iso=>"09",:name=>"The Federal District",:country_id=>158).first_or_create
State.where(:id=>2121,:iso=>"05",:name=>"Chiapas",:country_id=>158).first_or_create
State.where(:id=>2122,:iso=>"04",:name=>"Campeche",:country_id=>158).first_or_create
State.where(:id=>2123,:iso=>"32",:name=>"Zacatecas",:country_id=>158).first_or_create
State.where(:id=>2124,:iso=>"26",:name=>"Sonora",:country_id=>158).first_or_create
State.where(:id=>2125,:iso=>"25",:name=>"Sinaloa",:country_id=>158).first_or_create
State.where(:id=>2126,:iso=>"24",:name=>"San Luis Potosí",:country_id=>158).first_or_create
State.where(:id=>2127,:iso=>"18",:name=>"Nayarit",:country_id=>158).first_or_create
State.where(:id=>2128,:iso=>"16",:name=>"Michoacán",:country_id=>158).first_or_create
State.where(:id=>2129,:iso=>"14",:name=>"Jalisco",:country_id=>158).first_or_create
State.where(:id=>2130,:iso=>"11",:name=>"Guanajuato",:country_id=>158).first_or_create
State.where(:id=>2131,:iso=>"10",:name=>"Durango",:country_id=>158).first_or_create
State.where(:id=>2132,:iso=>"08",:name=>"Colima",:country_id=>158).first_or_create
State.where(:id=>2133,:iso=>"07",:name=>"Coahuila",:country_id=>158).first_or_create
State.where(:id=>2134,:iso=>"06",:name=>"Chihuahua",:country_id=>158).first_or_create
State.where(:id=>2135,:iso=>"03",:name=>"Baja California Sur",:country_id=>158).first_or_create
State.where(:id=>2136,:iso=>"02",:name=>"Baja California",:country_id=>158).first_or_create
State.where(:id=>2137,:iso=>"01",:name=>"Aguascalientes",:country_id=>158).first_or_create
State.where(:id=>2138,:iso=>"04",:name=>"Melaka",:country_id=>159).first_or_create
State.where(:id=>2139,:iso=>"13",:name=>"Terengganu",:country_id=>159).first_or_create
State.where(:id=>2140,:iso=>"12",:name=>"Selangor",:country_id=>159).first_or_create
State.where(:id=>2141,:iso=>"11",:name=>"Sarawak",:country_id=>159).first_or_create
State.where(:id=>2142,:iso=>"16",:name=>"Sabah",:country_id=>159).first_or_create
State.where(:id=>2143,:iso=>"08",:name=>"Perlis",:country_id=>159).first_or_create
State.where(:id=>2144,:iso=>"07",:name=>"Perak",:country_id=>159).first_or_create
State.where(:id=>2145,:iso=>"06",:name=>"Pahang",:country_id=>159).first_or_create
State.where(:id=>2146,:iso=>"05",:name=>"Negeri Sembilan",:country_id=>159).first_or_create
State.where(:id=>2147,:iso=>"03",:name=>"Kelantan",:country_id=>159).first_or_create
State.where(:id=>2148,:iso=>"14",:name=>"Kuala Lumpur",:country_id=>159).first_or_create
State.where(:id=>2149,:iso=>"09",:name=>"Pulau Pinang",:country_id=>159).first_or_create
State.where(:id=>2150,:iso=>"02",:name=>"Kedah",:country_id=>159).first_or_create
State.where(:id=>2151,:iso=>"01",:name=>"Johor",:country_id=>159).first_or_create
State.where(:id=>2152,:iso=>"15",:name=>"Labuan",:country_id=>159).first_or_create
State.where(:id=>2153,:iso=>"17",:name=>"Putrajaya",:country_id=>159).first_or_create
State.where(:id=>2154,:iso=>"09",:name=>"Zambézia",:country_id=>160).first_or_create
State.where(:id=>2155,:iso=>"08",:name=>"Tete",:country_id=>160).first_or_create
State.where(:id=>2156,:iso=>"05",:name=>"Sofala",:country_id=>160).first_or_create
State.where(:id=>2157,:iso=>"07",:name=>"Niassa",:country_id=>160).first_or_create
State.where(:id=>2158,:iso=>"06",:name=>"Nampula",:country_id=>160).first_or_create
State.where(:id=>2159,:iso=>"04",:name=>"Maputo",:country_id=>160).first_or_create
State.where(:id=>2160,:iso=>"10",:name=>"Manica",:country_id=>160).first_or_create
State.where(:id=>2161,:iso=>"03",:name=>"Inhambane",:country_id=>160).first_or_create
State.where(:id=>2162,:iso=>"02",:name=>"Gaza",:country_id=>160).first_or_create
State.where(:id=>2163,:iso=>"01",:name=>"Cabo Delgado",:country_id=>160).first_or_create
State.where(:id=>2164,:iso=>"11",:name=>"Maputo City",:country_id=>160).first_or_create
State.where(:id=>2165,:iso=>"28",:name=>"Caprivi",:country_id=>161).first_or_create
State.where(:id=>2166,:iso=>"21",:name=>"Khomas",:country_id=>161).first_or_create
State.where(:id=>2167,:iso=>"29",:name=>"Erongo",:country_id=>161).first_or_create
State.where(:id=>2168,:iso=>"30",:name=>"Hardap",:country_id=>161).first_or_create
State.where(:id=>2169,:iso=>"31",:name=>"Karas",:country_id=>161).first_or_create
State.where(:id=>2170,:iso=>"32",:name=>"Kunene",:country_id=>161).first_or_create
State.where(:id=>2171,:iso=>"33",:name=>"Ohangwena",:country_id=>161).first_or_create
State.where(:id=>2172,:iso=>"34",:name=>"Okavango",:country_id=>161).first_or_create
State.where(:id=>2173,:iso=>"35",:name=>"Omaheke",:country_id=>161).first_or_create
State.where(:id=>2174,:iso=>"36",:name=>"Omusati",:country_id=>161).first_or_create
State.where(:id=>2175,:iso=>"37",:name=>"Oshana",:country_id=>161).first_or_create
State.where(:id=>2176,:iso=>"38",:name=>"Oshikoto",:country_id=>161).first_or_create
State.where(:id=>2177,:iso=>"39",:name=>"Otjozondjupa",:country_id=>161).first_or_create
State.where(:id=>2178,:iso=>"02",:name=>"Province Sud",:country_id=>162).first_or_create
State.where(:id=>2179,:iso=>"01",:name=>"Province Nord",:country_id=>162).first_or_create
State.where(:id=>2180,:iso=>"03",:name=>"Province des îles Loyauté",:country_id=>162).first_or_create
State.where(:id=>2181,:iso=>"07",:name=>"Zinder",:country_id=>163).first_or_create
State.where(:id=>2182,:iso=>"06",:name=>"Tahoua",:country_id=>163).first_or_create
State.where(:id=>2183,:iso=>"04",:name=>"Maradi",:country_id=>163).first_or_create
State.where(:id=>2184,:iso=>"03",:name=>"Dosso",:country_id=>163).first_or_create
State.where(:id=>2185,:iso=>"02",:name=>"Diffa",:country_id=>163).first_or_create
State.where(:id=>2186,:iso=>"01",:name=>"Agadez",:country_id=>163).first_or_create
State.where(:id=>2187,:iso=>"09",:name=>"Tillabéri",:country_id=>163).first_or_create
State.where(:id=>2188,:iso=>"08",:name=>"Niamey",:country_id=>163).first_or_create
State.where(:id=>2189,:iso=>"51",:name=>"Sokoto",:country_id=>165).first_or_create
State.where(:id=>2190,:iso=>"50",:name=>"Rivers",:country_id=>165).first_or_create
State.where(:id=>2191,:iso=>"49",:name=>"Plateau",:country_id=>165).first_or_create
State.where(:id=>2192,:iso=>"32",:name=>"Oyo",:country_id=>165).first_or_create
State.where(:id=>2193,:iso=>"48",:name=>"Ondo",:country_id=>165).first_or_create
State.where(:id=>2194,:iso=>"16",:name=>"Ogun",:country_id=>165).first_or_create
State.where(:id=>2195,:iso=>"31",:name=>"Niger",:country_id=>165).first_or_create
State.where(:id=>2196,:iso=>"05",:name=>"Lagos",:country_id=>165).first_or_create
State.where(:id=>2197,:iso=>"30",:name=>"Kwara",:country_id=>165).first_or_create
State.where(:id=>2198,:iso=>"24",:name=>"Katsina",:country_id=>165).first_or_create
State.where(:id=>2199,:iso=>"29",:name=>"Kano",:country_id=>165).first_or_create
State.where(:id=>2200,:iso=>"23",:name=>"Kaduna",:country_id=>165).first_or_create
State.where(:id=>2201,:iso=>"28",:name=>"Imo State",:country_id=>165).first_or_create
State.where(:id=>2202,:iso=>"22",:name=>"Cross River",:country_id=>165).first_or_create
State.where(:id=>2203,:iso=>"27",:name=>"Borno",:country_id=>165).first_or_create
State.where(:id=>2204,:iso=>"26",:name=>"Benue State",:country_id=>165).first_or_create
State.where(:id=>2205,:iso=>"46",:name=>"Bauchi State",:country_id=>165).first_or_create
State.where(:id=>2206,:iso=>"25",:name=>"Anambra State",:country_id=>165).first_or_create
State.where(:id=>2207,:iso=>"21",:name=>"Akwa Ibom",:country_id=>165).first_or_create
State.where(:id=>2208,:iso=>"11",:name=>"Abuja Federal Capital Territory",:country_id=>165).first_or_create
State.where(:id=>2209,:iso=>"45",:name=>"Abia",:country_id=>165).first_or_create
State.where(:id=>2210,:iso=>"36",:name=>"Delta State",:country_id=>165).first_or_create
State.where(:id=>2211,:iso=>"35",:name=>"Adamawa State",:country_id=>165).first_or_create
State.where(:id=>2212,:iso=>"37",:name=>"Edo",:country_id=>165).first_or_create
State.where(:id=>2213,:iso=>"47",:name=>"Enugu State",:country_id=>165).first_or_create
State.where(:id=>2214,:iso=>"39",:name=>"Jigawa State",:country_id=>165).first_or_create
State.where(:id=>2215,:iso=>"52",:name=>"Bayelsa",:country_id=>165).first_or_create
State.where(:id=>2216,:iso=>"53",:name=>"Ebonyi",:country_id=>165).first_or_create
State.where(:id=>2217,:iso=>"54",:name=>"Ekiti",:country_id=>165).first_or_create
State.where(:id=>2218,:iso=>"55",:name=>"Gombe",:country_id=>165).first_or_create
State.where(:id=>2219,:iso=>"56",:name=>"Nassarawa",:country_id=>165).first_or_create
State.where(:id=>2220,:iso=>"57",:name=>"Zamfara",:country_id=>165).first_or_create
State.where(:id=>2221,:iso=>"40",:name=>"Kebbi",:country_id=>165).first_or_create
State.where(:id=>2222,:iso=>"41",:name=>"Kogi",:country_id=>165).first_or_create
State.where(:id=>2223,:iso=>"42",:name=>"Osun",:country_id=>165).first_or_create
State.where(:id=>2224,:iso=>"43",:name=>"Taraba State",:country_id=>165).first_or_create
State.where(:id=>2225,:iso=>"44",:name=>"Yobe",:country_id=>165).first_or_create
State.where(:id=>2226,:iso=>"15",:name=>"Rivas",:country_id=>166).first_or_create
State.where(:id=>2227,:iso=>"14",:name=>"Río San Juan",:country_id=>166).first_or_create
State.where(:id=>2228,:iso=>"13",:name=>"Nueva Segovia",:country_id=>166).first_or_create
State.where(:id=>2229,:iso=>"12",:name=>"Matagalpa",:country_id=>166).first_or_create
State.where(:id=>2230,:iso=>"11",:name=>"Masaya",:country_id=>166).first_or_create
State.where(:id=>2231,:iso=>"10",:name=>"Managua",:country_id=>166).first_or_create
State.where(:id=>2232,:iso=>"09",:name=>"Madriz",:country_id=>166).first_or_create
State.where(:id=>2233,:iso=>"08",:name=>"León",:country_id=>166).first_or_create
State.where(:id=>2234,:iso=>"07",:name=>"Jinotega",:country_id=>166).first_or_create
State.where(:id=>2235,:iso=>"06",:name=>"Granada",:country_id=>166).first_or_create
State.where(:id=>2236,:iso=>"05",:name=>"Estelí",:country_id=>166).first_or_create
State.where(:id=>2237,:iso=>"04",:name=>"Chontales",:country_id=>166).first_or_create
State.where(:id=>2238,:iso=>"03",:name=>"Chinandega",:country_id=>166).first_or_create
State.where(:id=>2239,:iso=>"02",:name=>"Carazo",:country_id=>166).first_or_create
State.where(:id=>2240,:iso=>"01",:name=>"Boaco",:country_id=>166).first_or_create
State.where(:id=>2241,:iso=>"17",:name=>"Atlántico Norte",:country_id=>166).first_or_create
State.where(:id=>2242,:iso=>"18",:name=>"Atlántico Sur",:country_id=>166).first_or_create
State.where(:id=>2243,:iso=>"11",:name=>"South Holland",:country_id=>167).first_or_create
State.where(:id=>2244,:iso=>"10",:name=>"Zeeland",:country_id=>167).first_or_create
State.where(:id=>2245,:iso=>"09",:name=>"Utrecht",:country_id=>167).first_or_create
State.where(:id=>2246,:iso=>"15",:name=>"Overijssel",:country_id=>167).first_or_create
State.where(:id=>2247,:iso=>"07",:name=>"North Holland",:country_id=>167).first_or_create
State.where(:id=>2248,:iso=>"06",:name=>"North Brabant",:country_id=>167).first_or_create
State.where(:id=>2249,:iso=>"05",:name=>"Limburg",:country_id=>167).first_or_create
State.where(:id=>2250,:iso=>"04",:name=>"Groningen",:country_id=>167).first_or_create
State.where(:id=>2251,:iso=>"03",:name=>"Gelderland",:country_id=>167).first_or_create
State.where(:id=>2252,:iso=>"02",:name=>"Friesland",:country_id=>167).first_or_create
State.where(:id=>2253,:iso=>"01",:name=>"Drenthe",:country_id=>167).first_or_create
State.where(:id=>2254,:iso=>"16",:name=>"Flevoland",:country_id=>167).first_or_create
State.where(:id=>2255,:iso=>"05",:name=>"Finnmark",:country_id=>168).first_or_create
State.where(:id=>2256,:iso=>"20",:name=>"Vestfold",:country_id=>168).first_or_create
State.where(:id=>2257,:iso=>"19",:name=>"Vest-Agder",:country_id=>168).first_or_create
State.where(:id=>2258,:iso=>"18",:name=>"Troms",:country_id=>168).first_or_create
State.where(:id=>2259,:iso=>"17",:name=>"Telemark",:country_id=>168).first_or_create
State.where(:id=>2260,:iso=>"16",:name=>"Sør-Trøndelag",:country_id=>168).first_or_create
State.where(:id=>2261,:iso=>"15",:name=>"Sogn og Fjordane",:country_id=>168).first_or_create
State.where(:id=>2262,:iso=>"14",:name=>"Rogaland",:country_id=>168).first_or_create
State.where(:id=>2263,:iso=>"13",:name=>"Østfold",:country_id=>168).first_or_create
State.where(:id=>2264,:iso=>"12",:name=>"Oslo",:country_id=>168).first_or_create
State.where(:id=>2265,:iso=>"11",:name=>"Oppland",:country_id=>168).first_or_create
State.where(:id=>2266,:iso=>"10",:name=>"Nord-Trøndelag",:country_id=>168).first_or_create
State.where(:id=>2267,:iso=>"09",:name=>"Nordland",:country_id=>168).first_or_create
State.where(:id=>2268,:iso=>"08",:name=>"Møre og Romsdal",:country_id=>168).first_or_create
State.where(:id=>2269,:iso=>"07",:name=>"Hordaland",:country_id=>168).first_or_create
State.where(:id=>2270,:iso=>"06",:name=>"Hedmark",:country_id=>168).first_or_create
State.where(:id=>2271,:iso=>"04",:name=>"Buskerud",:country_id=>168).first_or_create
State.where(:id=>2272,:iso=>"02",:name=>"Aust-Agder",:country_id=>168).first_or_create
State.where(:id=>2273,:iso=>"01",:name=>"Akershus",:country_id=>168).first_or_create
State.where(:id=>2274,:iso=>"FR",:name=>"Far Western Region",:country_id=>169).first_or_create
State.where(:id=>2275,:iso=>"MR",:name=>"Mid Western Region",:country_id=>169).first_or_create
State.where(:id=>2276,:iso=>"CR",:name=>"Central Region",:country_id=>169).first_or_create
State.where(:id=>2277,:iso=>"ER",:name=>"Eastern Region",:country_id=>169).first_or_create
State.where(:id=>2278,:iso=>"WR",:name=>"Western Region",:country_id=>169).first_or_create
State.where(:id=>2279,:iso=>"14",:name=>"Yaren",:country_id=>170).first_or_create
State.where(:id=>2280,:iso=>"13",:name=>"Uaboe",:country_id=>170).first_or_create
State.where(:id=>2281,:iso=>"12",:name=>"Nibok",:country_id=>170).first_or_create
State.where(:id=>2282,:iso=>"11",:name=>"Meneng",:country_id=>170).first_or_create
State.where(:id=>2283,:iso=>"10",:name=>"Ijuw",:country_id=>170).first_or_create
State.where(:id=>2284,:iso=>"09",:name=>"Ewa",:country_id=>170).first_or_create
State.where(:id=>2285,:iso=>"08",:name=>"Denigomodu",:country_id=>170).first_or_create
State.where(:id=>2286,:iso=>"07",:name=>"Buada",:country_id=>170).first_or_create
State.where(:id=>2287,:iso=>"06",:name=>"Boe",:country_id=>170).first_or_create
State.where(:id=>2288,:iso=>"05",:name=>"Baiti",:country_id=>170).first_or_create
State.where(:id=>2289,:iso=>"04",:name=>"Anibare",:country_id=>170).first_or_create
State.where(:id=>2290,:iso=>"03",:name=>"Anetan",:country_id=>170).first_or_create
State.where(:id=>2291,:iso=>"02",:name=>"Anabar",:country_id=>170).first_or_create
State.where(:id=>2292,:iso=>"01",:name=>"Aiwo",:country_id=>170).first_or_create
State.where(:id=>2293,:iso=>"G2",:name=>"Wellington",:country_id=>172).first_or_create
State.where(:id=>2294,:iso=>"F3",:name=>"Manawatu-Wanganui",:country_id=>172).first_or_create
State.where(:id=>2295,:iso=>"G1",:name=>"Waikato",:country_id=>172).first_or_create
State.where(:id=>2296,:iso=>"TAS",:name=>"Tasman",:country_id=>172).first_or_create
State.where(:id=>2297,:iso=>"F9",:name=>"Taranaki",:country_id=>172).first_or_create
State.where(:id=>2298,:iso=>"F8",:name=>"Southland",:country_id=>172).first_or_create
State.where(:id=>2299,:iso=>"E8",:name=>"Bay of Plenty",:country_id=>172).first_or_create
State.where(:id=>2300,:iso=>"F6",:name=>"Northland",:country_id=>172).first_or_create
State.where(:id=>2301,:iso=>"F4",:name=>"Marlborough",:country_id=>172).first_or_create
State.where(:id=>2302,:iso=>"F2",:name=>"Hawke's Bay",:country_id=>172).first_or_create
State.where(:id=>2303,:iso=>"F1",:name=>"Gisborne",:country_id=>172).first_or_create
State.where(:id=>2304,:iso=>"E9",:name=>"Canterbury",:country_id=>172).first_or_create
State.where(:id=>2305,:iso=>"E7",:name=>"Auckland",:country_id=>172).first_or_create
State.where(:id=>2306,:iso=>"10",:name=>"Chatham Islands",:country_id=>172).first_or_create
State.where(:id=>2307,:iso=>"F5",:name=>"Nelson",:country_id=>172).first_or_create
State.where(:id=>2308,:iso=>"F7",:name=>"Otago",:country_id=>172).first_or_create
State.where(:id=>2309,:iso=>"G3",:name=>"West Coast",:country_id=>172).first_or_create
State.where(:id=>2310,:iso=>"01",:name=>"Ad Dākhilīyah",:country_id=>173).first_or_create
State.where(:id=>2311,:iso=>"02",:name=>"Al Bāţinah",:country_id=>173).first_or_create
State.where(:id=>2312,:iso=>"03",:name=>"Al Wusţá",:country_id=>173).first_or_create
State.where(:id=>2313,:iso=>"04",:name=>"Ash Sharqīyah",:country_id=>173).first_or_create
State.where(:id=>2314,:iso=>"09",:name=>"Az̧ Z̧āhirah",:country_id=>173).first_or_create
State.where(:id=>2315,:iso=>"06",:name=>"Masqaţ",:country_id=>173).first_or_create
State.where(:id=>2316,:iso=>"07",:name=>"Muḩāfaz̧at Musandam",:country_id=>173).first_or_create
State.where(:id=>2317,:iso=>"08",:name=>"Z̧ufār",:country_id=>173).first_or_create
State.where(:id=>2318,:iso=>"10",:name=>"Muḩāfaz̧at al Buraymī",:country_id=>173).first_or_create
State.where(:id=>2319,:iso=>"10",:name=>"Veraguas",:country_id=>174).first_or_create
State.where(:id=>2320,:iso=>"09",:name=>"Kuna Yala",:country_id=>174).first_or_create
State.where(:id=>2321,:iso=>"08",:name=>"Panamá",:country_id=>174).first_or_create
State.where(:id=>2322,:iso=>"07",:name=>"Los Santos",:country_id=>174).first_or_create
State.where(:id=>2323,:iso=>"06",:name=>"Herrera",:country_id=>174).first_or_create
State.where(:id=>2324,:iso=>"05",:name=>"Darién",:country_id=>174).first_or_create
State.where(:id=>2325,:iso=>"04",:name=>"Colón",:country_id=>174).first_or_create
State.where(:id=>2326,:iso=>"03",:name=>"Coclé",:country_id=>174).first_or_create
State.where(:id=>2327,:iso=>"02",:name=>"Chiriquí",:country_id=>174).first_or_create
State.where(:id=>2328,:iso=>"01",:name=>"Bocas del Toro",:country_id=>174).first_or_create
State.where(:id=>2329,:iso=>"11",:name=>"Emberá",:country_id=>174).first_or_create
State.where(:id=>2330,:iso=>"12",:name=>"Ngöbe-Buglé",:country_id=>174).first_or_create
State.where(:id=>2331,:iso=>"25",:name=>"Ucayali",:country_id=>175).first_or_create
State.where(:id=>2332,:iso=>"24",:name=>"Tumbes",:country_id=>175).first_or_create
State.where(:id=>2333,:iso=>"22",:name=>"San Martín",:country_id=>175).first_or_create
State.where(:id=>2334,:iso=>"20",:name=>"Piura",:country_id=>175).first_or_create
State.where(:id=>2335,:iso=>"16",:name=>"Loreto",:country_id=>175).first_or_create
State.where(:id=>2336,:iso=>"14",:name=>"Lambayeque",:country_id=>175).first_or_create
State.where(:id=>2337,:iso=>"13",:name=>"La Libertad",:country_id=>175).first_or_create
State.where(:id=>2338,:iso=>"10",:name=>"Huanuco",:country_id=>175).first_or_create
State.where(:id=>2339,:iso=>"06",:name=>"Cajamarca",:country_id=>175).first_or_create
State.where(:id=>2340,:iso=>"02",:name=>"Ancash",:country_id=>175).first_or_create
State.where(:id=>2341,:iso=>"01",:name=>"Amazonas",:country_id=>175).first_or_create
State.where(:id=>2342,:iso=>"23",:name=>"Tacna",:country_id=>175).first_or_create
State.where(:id=>2343,:iso=>"21",:name=>"Puno",:country_id=>175).first_or_create
State.where(:id=>2344,:iso=>"19",:name=>"Pasco",:country_id=>175).first_or_create
State.where(:id=>2345,:iso=>"18",:name=>"Moquegua",:country_id=>175).first_or_create
State.where(:id=>2346,:iso=>"17",:name=>"Madre de Dios",:country_id=>175).first_or_create
State.where(:id=>2347,:iso=>"LMA",:name=>"Provincia de Lima",:country_id=>175).first_or_create
State.where(:id=>2348,:iso=>"15",:name=>"Lima",:country_id=>175).first_or_create
State.where(:id=>2349,:iso=>"12",:name=>"Junín",:country_id=>175).first_or_create
State.where(:id=>2350,:iso=>"11",:name=>"Ica",:country_id=>175).first_or_create
State.where(:id=>2351,:iso=>"09",:name=>"Huancavelica",:country_id=>175).first_or_create
State.where(:id=>2352,:iso=>"08",:name=>"Cusco",:country_id=>175).first_or_create
State.where(:id=>2353,:iso=>"07",:name=>"Callao",:country_id=>175).first_or_create
State.where(:id=>2354,:iso=>"05",:name=>"Ayacucho",:country_id=>175).first_or_create
State.where(:id=>2355,:iso=>"04",:name=>"Arequipa",:country_id=>175).first_or_create
State.where(:id=>2356,:iso=>"03",:name=>"Apurímac",:country_id=>175).first_or_create
State.where(:id=>2357,:iso=>"04",:name=>"Îles Marquises",:country_id=>176).first_or_create
State.where(:id=>2358,:iso=>"03",:name=>"Îles Tuamotu-Gambier",:country_id=>176).first_or_create
State.where(:id=>2359,:iso=>"02",:name=>"Îles Sous-le-Vent",:country_id=>176).first_or_create
State.where(:id=>2360,:iso=>"01",:name=>"Îles du Vent",:country_id=>176).first_or_create
State.where(:id=>2361,:iso=>"05",:name=>"Îles Australes",:country_id=>176).first_or_create
State.where(:id=>2362,:iso=>"17",:name=>"West New Britain",:country_id=>177).first_or_create
State.where(:id=>2363,:iso=>"06",:name=>"Western Province",:country_id=>177).first_or_create
State.where(:id=>2364,:iso=>"16",:name=>"Western Highlands",:country_id=>177).first_or_create
State.where(:id=>2365,:iso=>"05",:name=>"Southern Highlands",:country_id=>177).first_or_create
State.where(:id=>2366,:iso=>"18",:name=>"Sandaun",:country_id=>177).first_or_create
State.where(:id=>2367,:iso=>"07",:name=>"Bougainville",:country_id=>177).first_or_create
State.where(:id=>2368,:iso=>"04",:name=>"Northern Province",:country_id=>177).first_or_create
State.where(:id=>2369,:iso=>"15",:name=>"New Ireland",:country_id=>177).first_or_create
State.where(:id=>2370,:iso=>"20",:name=>"National Capital District",:country_id=>177).first_or_create
State.where(:id=>2371,:iso=>"14",:name=>"Morobe",:country_id=>177).first_or_create
State.where(:id=>2372,:iso=>"13",:name=>"Manus",:country_id=>177).first_or_create
State.where(:id=>2373,:iso=>"12",:name=>"Madang",:country_id=>177).first_or_create
State.where(:id=>2374,:iso=>"02",:name=>"Gulf",:country_id=>177).first_or_create
State.where(:id=>2375,:iso=>"19",:name=>"Enga",:country_id=>177).first_or_create
State.where(:id=>2376,:iso=>"11",:name=>"East Sepik",:country_id=>177).first_or_create
State.where(:id=>2377,:iso=>"10",:name=>"East New Britain",:country_id=>177).first_or_create
State.where(:id=>2378,:iso=>"09",:name=>"Eastern Highlands",:country_id=>177).first_or_create
State.where(:id=>2379,:iso=>"08",:name=>"Chimbu",:country_id=>177).first_or_create
State.where(:id=>2380,:iso=>"03",:name=>"Milne Bay",:country_id=>177).first_or_create
State.where(:id=>2381,:iso=>"01",:name=>"Central Province",:country_id=>177).first_or_create
State.where(:id=>2382,:iso=>"14",:name=>"Autonomous Region in Muslim Mindanao",:country_id=>178).first_or_create
State.where(:id=>2383,:iso=>"10",:name=>"Northern Mindanao",:country_id=>178).first_or_create
State.where(:id=>2384,:iso=>"41",:name=>"Mimaropa",:country_id=>178).first_or_create
State.where(:id=>2385,:iso=>"02",:name=>"Cagayan Valley",:country_id=>178).first_or_create
State.where(:id=>2386,:iso=>"12",:name=>"Soccsksargen",:country_id=>178).first_or_create
State.where(:id=>2387,:iso=>"13",:name=>"Caraga",:country_id=>178).first_or_create
State.where(:id=>2388,:iso=>"15",:name=>"Cordillera Administrative Region",:country_id=>178).first_or_create
State.where(:id=>2389,:iso=>"01",:name=>"Ilocos",:country_id=>178).first_or_create
State.where(:id=>2390,:iso=>"40",:name=>"Calabarzon",:country_id=>178).first_or_create
State.where(:id=>2391,:iso=>"06",:name=>"Western Visayas",:country_id=>178).first_or_create
State.where(:id=>2392,:iso=>"03",:name=>"Central Luzon",:country_id=>178).first_or_create
State.where(:id=>2393,:iso=>"07",:name=>"Central Visayas",:country_id=>178).first_or_create
State.where(:id=>2394,:iso=>"08",:name=>"Eastern Visayas",:country_id=>178).first_or_create
State.where(:id=>2395,:iso=>"09",:name=>"Zamboanga Peninsula",:country_id=>178).first_or_create
State.where(:id=>2396,:iso=>"11",:name=>"Davao",:country_id=>178).first_or_create
State.where(:id=>2397,:iso=>"05",:name=>"Bicol",:country_id=>178).first_or_create
State.where(:id=>2398,:iso=>"NCR",:name=>"National Capital Region",:country_id=>178).first_or_create
State.where(:id=>2399,:iso=>"08",:name=>"Islāmābād",:country_id=>179).first_or_create
State.where(:id=>2400,:iso=>"05",:name=>"Sindh",:country_id=>179).first_or_create
State.where(:id=>2401,:iso=>"04",:name=>"Punjab",:country_id=>179).first_or_create
State.where(:id=>2402,:iso=>"03",:name=>"North West Frontier Province",:country_id=>179).first_or_create
State.where(:id=>2403,:iso=>"07",:name=>"Gilgit-Baltistan",:country_id=>179).first_or_create
State.where(:id=>2404,:iso=>"01",:name=>"Federally Administered Tribal Areas",:country_id=>179).first_or_create
State.where(:id=>2405,:iso=>"02",:name=>"Balochistān",:country_id=>179).first_or_create
State.where(:id=>2406,:iso=>"06",:name=>"Azad Kashmir",:country_id=>179).first_or_create
State.where(:id=>2407,:iso=>"75",:name=>"Lublin Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2408,:iso=>"77",:name=>"Lesser Poland Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2409,:iso=>"78",:name=>"Masovian Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2410,:iso=>"80",:name=>"Subcarpathian Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2411,:iso=>"81",:name=>"Podlasie",:country_id=>180).first_or_create
State.where(:id=>2412,:iso=>"84",:name=>"Świętokrzyskie",:country_id=>180).first_or_create
State.where(:id=>2413,:iso=>"85",:name=>"Warmian-Masurian Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2414,:iso=>"72",:name=>"Lower Silesian Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2415,:iso=>"74",:name=>"Łódź Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2416,:iso=>"76",:name=>"Lubusz",:country_id=>180).first_or_create
State.where(:id=>2417,:iso=>"79",:name=>"Opole Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2418,:iso=>"82",:name=>"Pomeranian Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2419,:iso=>"83",:name=>"Silesian Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2420,:iso=>"86",:name=>"Greater Poland Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2421,:iso=>"87",:name=>"West Pomeranian Voivodeship",:country_id=>180).first_or_create
State.where(:id=>2422,:iso=>"73",:name=>"Kujawsko-Pomorskie",:country_id=>180).first_or_create
State.where(:id=>2423,:iso=>"97502",:name=>"Saint-Pierre",:country_id=>181).first_or_create
State.where(:id=>2424,:iso=>"97501",:name=>"Miquelon-Langlade",:country_id=>181).first_or_create
State.where(:id=>2425,:iso=>"001",:name=>"Adjuntas",:country_id=>183).first_or_create
State.where(:id=>2426,:iso=>"003",:name=>"Aguada",:country_id=>183).first_or_create
State.where(:id=>2427,:iso=>"005",:name=>"Aguadilla",:country_id=>183).first_or_create
State.where(:id=>2428,:iso=>"007",:name=>"Aguas Buenas",:country_id=>183).first_or_create
State.where(:id=>2429,:iso=>"009",:name=>"Aibonito",:country_id=>183).first_or_create
State.where(:id=>2430,:iso=>"011",:name=>"Añasco",:country_id=>183).first_or_create
State.where(:id=>2431,:iso=>"013",:name=>"Arecibo",:country_id=>183).first_or_create
State.where(:id=>2432,:iso=>"015",:name=>"Arroyo",:country_id=>183).first_or_create
State.where(:id=>2433,:iso=>"017",:name=>"Barceloneta",:country_id=>183).first_or_create
State.where(:id=>2434,:iso=>"019",:name=>"Barranquitas",:country_id=>183).first_or_create
State.where(:id=>2435,:iso=>"021",:name=>"Bayamón",:country_id=>183).first_or_create
State.where(:id=>2436,:iso=>"023",:name=>"Cabo Rojo",:country_id=>183).first_or_create
State.where(:id=>2437,:iso=>"025",:name=>"Caguas",:country_id=>183).first_or_create
State.where(:id=>2438,:iso=>"027",:name=>"Camuy",:country_id=>183).first_or_create
State.where(:id=>2439,:iso=>"029",:name=>"Canovanas",:country_id=>183).first_or_create
State.where(:id=>2440,:iso=>"031",:name=>"Carolina",:country_id=>183).first_or_create
State.where(:id=>2441,:iso=>"033",:name=>"Catano",:country_id=>183).first_or_create
State.where(:id=>2442,:iso=>"035",:name=>"Cayey",:country_id=>183).first_or_create
State.where(:id=>2443,:iso=>"037",:name=>"Ceiba",:country_id=>183).first_or_create
State.where(:id=>2444,:iso=>"039",:name=>"Ciales",:country_id=>183).first_or_create
State.where(:id=>2445,:iso=>"041",:name=>"Cidra",:country_id=>183).first_or_create
State.where(:id=>2446,:iso=>"043",:name=>"Coamo",:country_id=>183).first_or_create
State.where(:id=>2447,:iso=>"045",:name=>"Comerio",:country_id=>183).first_or_create
State.where(:id=>2448,:iso=>"047",:name=>"Corozal",:country_id=>183).first_or_create
State.where(:id=>2449,:iso=>"049",:name=>"Culebra",:country_id=>183).first_or_create
State.where(:id=>2450,:iso=>"051",:name=>"Dorado",:country_id=>183).first_or_create
State.where(:id=>2451,:iso=>"053",:name=>"Fajardo",:country_id=>183).first_or_create
State.where(:id=>2452,:iso=>"054",:name=>"Florida",:country_id=>183).first_or_create
State.where(:id=>2453,:iso=>"055",:name=>"Guanica",:country_id=>183).first_or_create
State.where(:id=>2454,:iso=>"057",:name=>"Guayama",:country_id=>183).first_or_create
State.where(:id=>2455,:iso=>"059",:name=>"Guayanilla",:country_id=>183).first_or_create
State.where(:id=>2456,:iso=>"061",:name=>"Guaynabo",:country_id=>183).first_or_create
State.where(:id=>2457,:iso=>"063",:name=>"Gurabo",:country_id=>183).first_or_create
State.where(:id=>2458,:iso=>"065",:name=>"Hatillo",:country_id=>183).first_or_create
State.where(:id=>2459,:iso=>"067",:name=>"Hormigueros",:country_id=>183).first_or_create
State.where(:id=>2460,:iso=>"069",:name=>"Humacao",:country_id=>183).first_or_create
State.where(:id=>2461,:iso=>"071",:name=>"Isabela",:country_id=>183).first_or_create
State.where(:id=>2462,:iso=>"073",:name=>"Municipio de Jayuya",:country_id=>183).first_or_create
State.where(:id=>2463,:iso=>"075",:name=>"Juana Diaz",:country_id=>183).first_or_create
State.where(:id=>2464,:iso=>"077",:name=>"Municipio de Juncos",:country_id=>183).first_or_create
State.where(:id=>2465,:iso=>"079",:name=>"Lajas",:country_id=>183).first_or_create
State.where(:id=>2466,:iso=>"081",:name=>"Lares",:country_id=>183).first_or_create
State.where(:id=>2467,:iso=>"083",:name=>"Las Marias",:country_id=>183).first_or_create
State.where(:id=>2468,:iso=>"085",:name=>"Las Piedras",:country_id=>183).first_or_create
State.where(:id=>2469,:iso=>"087",:name=>"Loiza",:country_id=>183).first_or_create
State.where(:id=>2470,:iso=>"089",:name=>"Luquillo",:country_id=>183).first_or_create
State.where(:id=>2471,:iso=>"091",:name=>"Manati",:country_id=>183).first_or_create
State.where(:id=>2472,:iso=>"093",:name=>"Maricao",:country_id=>183).first_or_create
State.where(:id=>2473,:iso=>"095",:name=>"Maunabo",:country_id=>183).first_or_create
State.where(:id=>2474,:iso=>"097",:name=>"Mayaguez",:country_id=>183).first_or_create
State.where(:id=>2475,:iso=>"099",:name=>"Moca",:country_id=>183).first_or_create
State.where(:id=>2476,:iso=>"101",:name=>"Morovis",:country_id=>183).first_or_create
State.where(:id=>2477,:iso=>"103",:name=>"Naguabo",:country_id=>183).first_or_create
State.where(:id=>2478,:iso=>"105",:name=>"Naranjito",:country_id=>183).first_or_create
State.where(:id=>2479,:iso=>"107",:name=>"Orocovis",:country_id=>183).first_or_create
State.where(:id=>2480,:iso=>"109",:name=>"Patillas",:country_id=>183).first_or_create
State.where(:id=>2481,:iso=>"111",:name=>"Penuelas",:country_id=>183).first_or_create
State.where(:id=>2482,:iso=>"113",:name=>"Ponce",:country_id=>183).first_or_create
State.where(:id=>2483,:iso=>"117",:name=>"Rincon",:country_id=>183).first_or_create
State.where(:id=>2484,:iso=>"115",:name=>"Quebradillas",:country_id=>183).first_or_create
State.where(:id=>2485,:iso=>"119",:name=>"Rio Grande",:country_id=>183).first_or_create
State.where(:id=>2486,:iso=>"121",:name=>"Sabana Grande",:country_id=>183).first_or_create
State.where(:id=>2487,:iso=>"123",:name=>"Salinas",:country_id=>183).first_or_create
State.where(:id=>2488,:iso=>"125",:name=>"San German",:country_id=>183).first_or_create
State.where(:id=>2489,:iso=>"127",:name=>"San Juan",:country_id=>183).first_or_create
State.where(:id=>2490,:iso=>"129",:name=>"San Lorenzo",:country_id=>183).first_or_create
State.where(:id=>2491,:iso=>"131",:name=>"San Sebastian",:country_id=>183).first_or_create
State.where(:id=>2492,:iso=>"133",:name=>"Santa Isabel Municipio",:country_id=>183).first_or_create
State.where(:id=>2493,:iso=>"135",:name=>"Toa Alta",:country_id=>183).first_or_create
State.where(:id=>2494,:iso=>"137",:name=>"Toa Baja",:country_id=>183).first_or_create
State.where(:id=>2495,:iso=>"139",:name=>"Trujillo Alto",:country_id=>183).first_or_create
State.where(:id=>2496,:iso=>"141",:name=>"Utuado",:country_id=>183).first_or_create
State.where(:id=>2497,:iso=>"143",:name=>"Vega Alta",:country_id=>183).first_or_create
State.where(:id=>2498,:iso=>"145",:name=>"Vega Baja",:country_id=>183).first_or_create
State.where(:id=>2499,:iso=>"149",:name=>"Villalba",:country_id=>183).first_or_create
State.where(:id=>2500,:iso=>"151",:name=>"Yabucoa",:country_id=>183).first_or_create
State.where(:id=>2501,:iso=>"153",:name=>"Yauco",:country_id=>183).first_or_create
State.where(:id=>2502,:iso=>"147",:name=>"Vieques",:country_id=>183).first_or_create
State.where(:id=>2503,:iso=>"GZ",:name=>"Gaza Strip",:country_id=>184).first_or_create
State.where(:id=>2504,:iso=>"WE",:name=>"West Bank",:country_id=>184).first_or_create
State.where(:id=>2505,:iso=>"19",:name=>"Setúbal",:country_id=>185).first_or_create
State.where(:id=>2506,:iso=>"18",:name=>"Santarém",:country_id=>185).first_or_create
State.where(:id=>2507,:iso=>"16",:name=>"Portalegre",:country_id=>185).first_or_create
State.where(:id=>2508,:iso=>"14",:name=>"Lisbon",:country_id=>185).first_or_create
State.where(:id=>2509,:iso=>"13",:name=>"Leiria",:country_id=>185).first_or_create
State.where(:id=>2510,:iso=>"09",:name=>"Faro",:country_id=>185).first_or_create
State.where(:id=>2511,:iso=>"08",:name=>"Évora",:country_id=>185).first_or_create
State.where(:id=>2512,:iso=>"06",:name=>"Castelo Branco",:country_id=>185).first_or_create
State.where(:id=>2513,:iso=>"03",:name=>"Beja",:country_id=>185).first_or_create
State.where(:id=>2514,:iso=>"10",:name=>"Madeira",:country_id=>185).first_or_create
State.where(:id=>2515,:iso=>"22",:name=>"Viseu",:country_id=>185).first_or_create
State.where(:id=>2516,:iso=>"21",:name=>"Vila Real",:country_id=>185).first_or_create
State.where(:id=>2517,:iso=>"20",:name=>"Viana do Castelo",:country_id=>185).first_or_create
State.where(:id=>2518,:iso=>"17",:name=>"Porto",:country_id=>185).first_or_create
State.where(:id=>2519,:iso=>"11",:name=>"Guarda",:country_id=>185).first_or_create
State.where(:id=>2520,:iso=>"07",:name=>"Coimbra",:country_id=>185).first_or_create
State.where(:id=>2521,:iso=>"05",:name=>"Bragança",:country_id=>185).first_or_create
State.where(:id=>2522,:iso=>"04",:name=>"Braga",:country_id=>185).first_or_create
State.where(:id=>2523,:iso=>"02",:name=>"Aveiro",:country_id=>185).first_or_create
State.where(:id=>2524,:iso=>"23",:name=>"Azores",:country_id=>185).first_or_create
State.where(:id=>2525,:iso=>"11",:name=>"Ngatpang",:country_id=>186).first_or_create
State.where(:id=>2526,:iso=>"16",:name=>"Sonsorol",:country_id=>186).first_or_create
State.where(:id=>2527,:iso=>"05",:name=>"Kayangel",:country_id=>186).first_or_create
State.where(:id=>2528,:iso=>"04",:name=>"State of Hatohobei",:country_id=>186).first_or_create
State.where(:id=>2529,:iso=>"01",:name=>"Aimeliik",:country_id=>186).first_or_create
State.where(:id=>2530,:iso=>"02",:name=>"Airai",:country_id=>186).first_or_create
State.where(:id=>2531,:iso=>"03",:name=>"Angaur",:country_id=>186).first_or_create
State.where(:id=>2532,:iso=>"06",:name=>"Koror",:country_id=>186).first_or_create
State.where(:id=>2533,:iso=>"07",:name=>"Melekeok",:country_id=>186).first_or_create
State.where(:id=>2534,:iso=>"08",:name=>"Ngaraard",:country_id=>186).first_or_create
State.where(:id=>2535,:iso=>"12",:name=>"Ngchesar",:country_id=>186).first_or_create
State.where(:id=>2536,:iso=>"09",:name=>"Ngarchelong",:country_id=>186).first_or_create
State.where(:id=>2537,:iso=>"10",:name=>"Ngardmau",:country_id=>186).first_or_create
State.where(:id=>2538,:iso=>"13",:name=>"State of Ngeremlengui",:country_id=>186).first_or_create
State.where(:id=>2539,:iso=>"14",:name=>"Ngiwal",:country_id=>186).first_or_create
State.where(:id=>2540,:iso=>"15",:name=>"Peleliu",:country_id=>186).first_or_create
State.where(:id=>2541,:iso=>"17",:name=>"San Pedro",:country_id=>187).first_or_create
State.where(:id=>2542,:iso=>"16",:name=>"Presidente Hayes",:country_id=>187).first_or_create
State.where(:id=>2543,:iso=>"15",:name=>"Paraguarí",:country_id=>187).first_or_create
State.where(:id=>2544,:iso=>"13",:name=>"Ñeembucú",:country_id=>187).first_or_create
State.where(:id=>2545,:iso=>"12",:name=>"Misiones",:country_id=>187).first_or_create
State.where(:id=>2546,:iso=>"11",:name=>"Itapúa",:country_id=>187).first_or_create
State.where(:id=>2547,:iso=>"10",:name=>"Guairá",:country_id=>187).first_or_create
State.where(:id=>2548,:iso=>"08",:name=>"Cordillera",:country_id=>187).first_or_create
State.where(:id=>2549,:iso=>"07",:name=>"Concepción",:country_id=>187).first_or_create
State.where(:id=>2550,:iso=>"06",:name=>"Central",:country_id=>187).first_or_create
State.where(:id=>2551,:iso=>"19",:name=>"Canindeyú",:country_id=>187).first_or_create
State.where(:id=>2552,:iso=>"05",:name=>"Caazapá",:country_id=>187).first_or_create
State.where(:id=>2553,:iso=>"04",:name=>"Caaguazú",:country_id=>187).first_or_create
State.where(:id=>2554,:iso=>"02",:name=>"Amambay",:country_id=>187).first_or_create
State.where(:id=>2555,:iso=>"01",:name=>"Alto Paraná",:country_id=>187).first_or_create
State.where(:id=>2556,:iso=>"23",:name=>"Alto Paraguay",:country_id=>187).first_or_create
State.where(:id=>2557,:iso=>"22",:name=>"Asunción",:country_id=>187).first_or_create
State.where(:id=>2558,:iso=>"24",:name=>"Boquerón",:country_id=>187).first_or_create
State.where(:id=>2559,:iso=>"08",:name=>"Madīnat ash Shamāl",:country_id=>188).first_or_create
State.where(:id=>2560,:iso=>"02",:name=>"Al Ghuwayrīyah",:country_id=>188).first_or_create
State.where(:id=>2561,:iso=>"04",:name=>"Al Khawr",:country_id=>188).first_or_create
State.where(:id=>2562,:iso=>"09",:name=>"Umm Şalāl",:country_id=>188).first_or_create
State.where(:id=>2563,:iso=>"03",:name=>"Al Jumaylīyah",:country_id=>188).first_or_create
State.where(:id=>2564,:iso=>"06",:name=>"Ar Rayyān",:country_id=>188).first_or_create
State.where(:id=>2565,:iso=>"01",:name=>"Ad Dawḩah",:country_id=>188).first_or_create
State.where(:id=>2566,:iso=>"10",:name=>"Al Wakrah",:country_id=>188).first_or_create
State.where(:id=>2567,:iso=>"11",:name=>"Jarayān al Bāţinah",:country_id=>188).first_or_create
State.where(:id=>2568,:iso=>"12",:name=>"Baladīyat Umm Sa‘īd",:country_id=>188).first_or_create
State.where(:id=>2569,:iso=>"RE",:name=>"Réunion",:country_id=>189).first_or_create
State.where(:id=>2570,:iso=>"40",:name=>"Judeţul Vrancea",:country_id=>190).first_or_create
State.where(:id=>2571,:iso=>"39",:name=>"Vâlcea",:country_id=>190).first_or_create
State.where(:id=>2572,:iso=>"38",:name=>"Vaslui",:country_id=>190).first_or_create
State.where(:id=>2573,:iso=>"37",:name=>"Tulcea",:country_id=>190).first_or_create
State.where(:id=>2574,:iso=>"36",:name=>"Timiş",:country_id=>190).first_or_create
State.where(:id=>2575,:iso=>"35",:name=>"Teleorman",:country_id=>190).first_or_create
State.where(:id=>2576,:iso=>"34",:name=>"Suceava",:country_id=>190).first_or_create
State.where(:id=>2577,:iso=>"33",:name=>"Sibiu",:country_id=>190).first_or_create
State.where(:id=>2578,:iso=>"32",:name=>"Satu Mare",:country_id=>190).first_or_create
State.where(:id=>2579,:iso=>"31",:name=>"Sălaj",:country_id=>190).first_or_create
State.where(:id=>2580,:iso=>"30",:name=>"Prahova",:country_id=>190).first_or_create
State.where(:id=>2581,:iso=>"29",:name=>"Olt",:country_id=>190).first_or_create
State.where(:id=>2582,:iso=>"28",:name=>"Neamţ",:country_id=>190).first_or_create
State.where(:id=>2583,:iso=>"27",:name=>"Mureş",:country_id=>190).first_or_create
State.where(:id=>2584,:iso=>"26",:name=>"Mehedinţi",:country_id=>190).first_or_create
State.where(:id=>2585,:iso=>"25",:name=>"Maramureş",:country_id=>190).first_or_create
State.where(:id=>2586,:iso=>"23",:name=>"Iaşi",:country_id=>190).first_or_create
State.where(:id=>2587,:iso=>"22",:name=>"Ialomiţa",:country_id=>190).first_or_create
State.where(:id=>2588,:iso=>"21",:name=>"Hunedoara",:country_id=>190).first_or_create
State.where(:id=>2589,:iso=>"20",:name=>"Harghita",:country_id=>190).first_or_create
State.where(:id=>2590,:iso=>"19",:name=>"Gorj",:country_id=>190).first_or_create
State.where(:id=>2591,:iso=>"42",:name=>"Giurgiu",:country_id=>190).first_or_create
State.where(:id=>2592,:iso=>"18",:name=>"Galaţi",:country_id=>190).first_or_create
State.where(:id=>2593,:iso=>"17",:name=>"Dolj",:country_id=>190).first_or_create
State.where(:id=>2594,:iso=>"16",:name=>"Dâmboviţa",:country_id=>190).first_or_create
State.where(:id=>2595,:iso=>"15",:name=>"Covasna",:country_id=>190).first_or_create
State.where(:id=>2596,:iso=>"14",:name=>"Constanţa",:country_id=>190).first_or_create
State.where(:id=>2597,:iso=>"13",:name=>"Cluj",:country_id=>190).first_or_create
State.where(:id=>2598,:iso=>"12",:name=>"Caraş-Severin",:country_id=>190).first_or_create
State.where(:id=>2599,:iso=>"41",:name=>"Călăraşi",:country_id=>190).first_or_create
State.where(:id=>2600,:iso=>"11",:name=>"Buzău",:country_id=>190).first_or_create
State.where(:id=>2601,:iso=>"10",:name=>"Bucureşti",:country_id=>190).first_or_create
State.where(:id=>2602,:iso=>"09",:name=>"Braşov",:country_id=>190).first_or_create
State.where(:id=>2603,:iso=>"08",:name=>"Brăila",:country_id=>190).first_or_create
State.where(:id=>2604,:iso=>"07",:name=>"Botoşani",:country_id=>190).first_or_create
State.where(:id=>2605,:iso=>"06",:name=>"Bistriţa-Năsăud",:country_id=>190).first_or_create
State.where(:id=>2606,:iso=>"05",:name=>"Bihor",:country_id=>190).first_or_create
State.where(:id=>2607,:iso=>"04",:name=>"Bacău",:country_id=>190).first_or_create
State.where(:id=>2608,:iso=>"03",:name=>"Argeş",:country_id=>190).first_or_create
State.where(:id=>2609,:iso=>"02",:name=>"Arad",:country_id=>190).first_or_create
State.where(:id=>2610,:iso=>"01",:name=>"Alba",:country_id=>190).first_or_create
State.where(:id=>2611,:iso=>"43",:name=>"Ilfov",:country_id=>190).first_or_create
State.where(:id=>2612,:iso=>"VO",:name=>"Autonomna Pokrajina Vojvodina",:country_id=>191).first_or_create
State.where(:id=>2613,:iso=>"SE",:name=>"Central Serbia",:country_id=>191).first_or_create
State.where(:id=>2614,:iso=>"88",:name=>"Jaroslavl",:country_id=>192).first_or_create
State.where(:id=>2615,:iso=>"86",:name=>"Voronezj",:country_id=>192).first_or_create
State.where(:id=>2616,:iso=>"85",:name=>"Vologda",:country_id=>192).first_or_create
State.where(:id=>2617,:iso=>"84",:name=>"Volgograd",:country_id=>192).first_or_create
State.where(:id=>2618,:iso=>"81",:name=>"Uljanovsk",:country_id=>192).first_or_create
State.where(:id=>2619,:iso=>"80",:name=>"Udmurtiya",:country_id=>192).first_or_create
State.where(:id=>2620,:iso=>"77",:name=>"Tverskaya",:country_id=>192).first_or_create
State.where(:id=>2621,:iso=>"76",:name=>"Tula",:country_id=>192).first_or_create
State.where(:id=>2622,:iso=>"73",:name=>"Tatarstan",:country_id=>192).first_or_create
State.where(:id=>2623,:iso=>"72",:name=>"Tambov",:country_id=>192).first_or_create
State.where(:id=>2624,:iso=>"70",:name=>"Stavropol'skiy",:country_id=>192).first_or_create
State.where(:id=>2625,:iso=>"69",:name=>"Smolensk",:country_id=>192).first_or_create
State.where(:id=>2626,:iso=>"67",:name=>"Saratov",:country_id=>192).first_or_create
State.where(:id=>2627,:iso=>"65",:name=>"Samara",:country_id=>192).first_or_create
State.where(:id=>2628,:iso=>"62",:name=>"Rjazan",:country_id=>192).first_or_create
State.where(:id=>2629,:iso=>"61",:name=>"Rostov",:country_id=>192).first_or_create
State.where(:id=>2630,:iso=>"60",:name=>"Pskov",:country_id=>192).first_or_create
State.where(:id=>2631,:iso=>"90",:name=>"Perm",:country_id=>192).first_or_create
State.where(:id=>2632,:iso=>"57",:name=>"Penza",:country_id=>192).first_or_create
State.where(:id=>2633,:iso=>"56",:name=>"Orjol",:country_id=>192).first_or_create
State.where(:id=>2634,:iso=>"55",:name=>"Orenburg",:country_id=>192).first_or_create
State.where(:id=>2635,:iso=>"52",:name=>"Novgorod",:country_id=>192).first_or_create
State.where(:id=>2636,:iso=>"68",:name=>"North Ossetia",:country_id=>192).first_or_create
State.where(:id=>2637,:iso=>"50",:name=>"Nenetskiy Avtonomnyy Okrug",:country_id=>192).first_or_create
State.where(:id=>2638,:iso=>"49",:name=>"Murmansk",:country_id=>192).first_or_create
State.where(:id=>2639,:iso=>"48",:name=>"Moscow",:country_id=>192).first_or_create
State.where(:id=>2640,:iso=>"47",:name=>"Moskovskaya",:country_id=>192).first_or_create
State.where(:id=>2641,:iso=>"46",:name=>"Mordoviya",:country_id=>192).first_or_create
State.where(:id=>2642,:iso=>"45",:name=>"Mariy-El",:country_id=>192).first_or_create
State.where(:id=>2643,:iso=>"43",:name=>"Lipetsk",:country_id=>192).first_or_create
State.where(:id=>2644,:iso=>"42",:name=>"Leningrad",:country_id=>192).first_or_create
State.where(:id=>2645,:iso=>"66",:name=>"Sankt-Peterburg",:country_id=>192).first_or_create
State.where(:id=>2646,:iso=>"41",:name=>"Kursk",:country_id=>192).first_or_create
State.where(:id=>2647,:iso=>"38",:name=>"Krasnodarskiy",:country_id=>192).first_or_create
State.where(:id=>2648,:iso=>"37",:name=>"Kostroma",:country_id=>192).first_or_create
State.where(:id=>2649,:iso=>"34",:name=>"Komi",:country_id=>192).first_or_create
State.where(:id=>2650,:iso=>"33",:name=>"Kirov",:country_id=>192).first_or_create
State.where(:id=>2651,:iso=>"28",:name=>"Kareliya",:country_id=>192).first_or_create
State.where(:id=>2652,:iso=>"27",:name=>"Karachayevo-Cherkesiya",:country_id=>192).first_or_create
State.where(:id=>2653,:iso=>"25",:name=>"Kaluga",:country_id=>192).first_or_create
State.where(:id=>2654,:iso=>"24",:name=>"Kalmykiya",:country_id=>192).first_or_create
State.where(:id=>2655,:iso=>"23",:name=>"Kaliningrad",:country_id=>192).first_or_create
State.where(:id=>2656,:iso=>"22",:name=>"Kabardino-Balkariya",:country_id=>192).first_or_create
State.where(:id=>2657,:iso=>"21",:name=>"Ivanovo",:country_id=>192).first_or_create
State.where(:id=>2658,:iso=>"19",:name=>"Ingushetiya",:country_id=>192).first_or_create
State.where(:id=>2659,:iso=>"51",:name=>"Nizjnij Novgorod",:country_id=>192).first_or_create
State.where(:id=>2660,:iso=>"17",:name=>"Dagestan",:country_id=>192).first_or_create
State.where(:id=>2661,:iso=>"16",:name=>"Chuvashia",:country_id=>192).first_or_create
State.where(:id=>2662,:iso=>"12",:name=>"Chechnya",:country_id=>192).first_or_create
State.where(:id=>2663,:iso=>"10",:name=>"Brjansk",:country_id=>192).first_or_create
State.where(:id=>2664,:iso=>"09",:name=>"Belgorod",:country_id=>192).first_or_create
State.where(:id=>2665,:iso=>"08",:name=>"Bashkortostan",:country_id=>192).first_or_create
State.where(:id=>2666,:iso=>"07",:name=>"Astrakhan",:country_id=>192).first_or_create
State.where(:id=>2667,:iso=>"06",:name=>"Arkhangelskaya",:country_id=>192).first_or_create
State.where(:id=>2668,:iso=>"01",:name=>"Adygeya",:country_id=>192).first_or_create
State.where(:id=>2669,:iso=>"83",:name=>"Vladimir",:country_id=>192).first_or_create
State.where(:id=>2670,:iso=>"87",:name=>"Yamalo-Nenetskiy Avtonomnyy Okrug",:country_id=>192).first_or_create
State.where(:id=>2671,:iso=>"78",:name=>"Tjumen",:country_id=>192).first_or_create
State.where(:id=>2672,:iso=>"79",:name=>"Tyva",:country_id=>192).first_or_create
State.where(:id=>2673,:iso=>"75",:name=>"Tomsk",:country_id=>192).first_or_create
State.where(:id=>2674,:iso=>"71",:name=>"Sverdlovsk",:country_id=>192).first_or_create
State.where(:id=>2675,:iso=>"54",:name=>"Omsk",:country_id=>192).first_or_create
State.where(:id=>2676,:iso=>"53",:name=>"Novosibirsk",:country_id=>192).first_or_create
State.where(:id=>2677,:iso=>"40",:name=>"Kurgan",:country_id=>192).first_or_create
State.where(:id=>2678,:iso=>"91",:name=>"Krasnoyarskiy",:country_id=>192).first_or_create
State.where(:id=>2679,:iso=>"32",:name=>"Khanty-Mansiyskiy Avtonomnyy Okrug",:country_id=>192).first_or_create
State.where(:id=>2680,:iso=>"31",:name=>"Khakasiya",:country_id=>192).first_or_create
State.where(:id=>2681,:iso=>"29",:name=>"Kemerovo",:country_id=>192).first_or_create
State.where(:id=>2682,:iso=>"03",:name=>"Altay",:country_id=>192).first_or_create
State.where(:id=>2683,:iso=>"13",:name=>"Tsjeljabinsk",:country_id=>192).first_or_create
State.where(:id=>2684,:iso=>"04",:name=>"Altayskiy",:country_id=>192).first_or_create
State.where(:id=>2685,:iso=>"63",:name=>"Sakha",:country_id=>192).first_or_create
State.where(:id=>2686,:iso=>"59",:name=>"Primorskiy",:country_id=>192).first_or_create
State.where(:id=>2687,:iso=>"30",:name=>"Khabarovsk Krai",:country_id=>192).first_or_create
State.where(:id=>2688,:iso=>"20",:name=>"Irkutsk",:country_id=>192).first_or_create
State.where(:id=>2689,:iso=>"14",:name=>"Zabaïkalski",:country_id=>192).first_or_create
State.where(:id=>2690,:iso=>"89",:name=>"Jewish Autonomous Oblast",:country_id=>192).first_or_create
State.where(:id=>2691,:iso=>"05",:name=>"Amur",:country_id=>192).first_or_create
State.where(:id=>2692,:iso=>"11",:name=>"Buryatiya",:country_id=>192).first_or_create
State.where(:id=>2693,:iso=>"64",:name=>"Sakhalin",:country_id=>192).first_or_create
State.where(:id=>2694,:iso=>"44",:name=>"Magadan",:country_id=>192).first_or_create
State.where(:id=>2695,:iso=>"92",:name=>"Kamtsjatka",:country_id=>192).first_or_create
State.where(:id=>2696,:iso=>"15",:name=>"Chukotskiy Avtonomnyy Okrug",:country_id=>192).first_or_create
State.where(:id=>2697,:iso=>"93",:name=>"Zabaykal’skiy Kray",:country_id=>192).first_or_create
State.where(:id=>2698,:iso=>"11",:name=>"Eastern Province",:country_id=>193).first_or_create
State.where(:id=>2699,:iso=>"12",:name=>"Kigali City",:country_id=>193).first_or_create
State.where(:id=>2700,:iso=>"13",:name=>"Northern Province",:country_id=>193).first_or_create
State.where(:id=>2701,:iso=>"14",:name=>"Western Province",:country_id=>193).first_or_create
State.where(:id=>2702,:iso=>"15",:name=>"Southern Province",:country_id=>193).first_or_create
State.where(:id=>2703,:iso=>"19",:name=>"Tabūk",:country_id=>194).first_or_create
State.where(:id=>2704,:iso=>"16",:name=>"Najrān",:country_id=>194).first_or_create
State.where(:id=>2705,:iso=>"14",:name=>"Makkah",:country_id=>194).first_or_create
State.where(:id=>2706,:iso=>"17",:name=>"Jīzān",:country_id=>194).first_or_create
State.where(:id=>2707,:iso=>"13",:name=>"Ḩāʼil",:country_id=>194).first_or_create
State.where(:id=>2708,:iso=>"11",:name=>"Minţaqat ‘Asīr",:country_id=>194).first_or_create
State.where(:id=>2709,:iso=>"06",:name=>"Ash Sharqīyah",:country_id=>194).first_or_create
State.where(:id=>2710,:iso=>"10",:name=>"Ar Riyāḑ",:country_id=>194).first_or_create
State.where(:id=>2711,:iso=>"08",:name=>"Al Qaşīm",:country_id=>194).first_or_create
State.where(:id=>2712,:iso=>"05",:name=>"Al Madīnah",:country_id=>194).first_or_create
State.where(:id=>2713,:iso=>"20",:name=>"Al Jawf",:country_id=>194).first_or_create
State.where(:id=>2714,:iso=>"15",:name=>"Northern Borders Region",:country_id=>194).first_or_create
State.where(:id=>2715,:iso=>"02",:name=>"Al Bāḩah",:country_id=>194).first_or_create
State.where(:id=>2716,:iso=>"11",:name=>"Western Province",:country_id=>195).first_or_create
State.where(:id=>2717,:iso=>"03",:name=>"Malaita",:country_id=>195).first_or_create
State.where(:id=>2718,:iso=>"07",:name=>"Isabel",:country_id=>195).first_or_create
State.where(:id=>2719,:iso=>"06",:name=>"Guadalcanal",:country_id=>195).first_or_create
State.where(:id=>2720,:iso=>"10",:name=>"Central Province",:country_id=>195).first_or_create
State.where(:id=>2721,:iso=>"09",:name=>"Temotu",:country_id=>195).first_or_create
State.where(:id=>2722,:iso=>"08",:name=>"Makira",:country_id=>195).first_or_create
State.where(:id=>2723,:iso=>"12",:name=>"Choiseul",:country_id=>195).first_or_create
State.where(:id=>2724,:iso=>"13",:name=>"Rennell and Bellona",:country_id=>195).first_or_create
State.where(:id=>2725,:iso=>"23",:name=>"Takamaka",:country_id=>196).first_or_create
State.where(:id=>2726,:iso=>"22",:name=>"Saint Louis",:country_id=>196).first_or_create
State.where(:id=>2727,:iso=>"27",:name=>"Port Glaud",:country_id=>196).first_or_create
State.where(:id=>2728,:iso=>"20",:name=>"Pointe Larue",:country_id=>196).first_or_create
State.where(:id=>2729,:iso=>"19",:name=>"Plaisance",:country_id=>196).first_or_create
State.where(:id=>2730,:iso=>"18",:name=>"Mont Fleuri",:country_id=>196).first_or_create
State.where(:id=>2731,:iso=>"17",:name=>"Mont Buxton",:country_id=>196).first_or_create
State.where(:id=>2732,:iso=>"26",:name=>"English River",:country_id=>196).first_or_create
State.where(:id=>2733,:iso=>"25",:name=>"Inner Islands",:country_id=>196).first_or_create
State.where(:id=>2734,:iso=>"24",:name=>"Grand Anse Mahe",:country_id=>196).first_or_create
State.where(:id=>2735,:iso=>"14",:name=>"Grand Anse Praslin",:country_id=>196).first_or_create
State.where(:id=>2736,:iso=>"12",:name=>"Glacis",:country_id=>196).first_or_create
State.where(:id=>2737,:iso=>"11",:name=>"Cascade",:country_id=>196).first_or_create
State.where(:id=>2738,:iso=>"10",:name=>"Bel Ombre",:country_id=>196).first_or_create
State.where(:id=>2739,:iso=>"09",:name=>"Bel Air",:country_id=>196).first_or_create
State.where(:id=>2740,:iso=>"08",:name=>"Beau Vallon",:country_id=>196).first_or_create
State.where(:id=>2741,:iso=>"07",:name=>"Baie Sainte Anne",:country_id=>196).first_or_create
State.where(:id=>2742,:iso=>"06",:name=>"Baie Lazare",:country_id=>196).first_or_create
State.where(:id=>2743,:iso=>"05",:name=>"Anse Royale",:country_id=>196).first_or_create
State.where(:id=>2744,:iso=>"03",:name=>"Anse Etoile",:country_id=>196).first_or_create
State.where(:id=>2745,:iso=>"02",:name=>"Anse Boileau",:country_id=>196).first_or_create
State.where(:id=>2746,:iso=>"01",:name=>"Anse aux Pins",:country_id=>196).first_or_create
State.where(:id=>2747,:iso=>"29",:name=>"Les Mamelles",:country_id=>196).first_or_create
State.where(:id=>2748,:iso=>"30",:name=>"Roche Caiman",:country_id=>196).first_or_create
State.where(:id=>2749,:iso=>"28",:name=>"Au Cap",:country_id=>196).first_or_create
State.where(:id=>2750,:iso=>"43",:name=>"Northern",:country_id=>197).first_or_create
State.where(:id=>2751,:iso=>"29",:name=>"Khartoum",:country_id=>197).first_or_create
State.where(:id=>2752,:iso=>"35",:name=>"Upper Nile State",:country_id=>197).first_or_create
State.where(:id=>2753,:iso=>"36",:name=>"Red Sea",:country_id=>197).first_or_create
State.where(:id=>2754,:iso=>"37",:name=>"Lakes State",:country_id=>197).first_or_create
State.where(:id=>2755,:iso=>"38",:name=>"Gezira",:country_id=>197).first_or_create
State.where(:id=>2756,:iso=>"39",:name=>"Gedaref",:country_id=>197).first_or_create
State.where(:id=>2757,:iso=>"40",:name=>"Unity",:country_id=>197).first_or_create
State.where(:id=>2758,:iso=>"41",:name=>"White Nile",:country_id=>197).first_or_create
State.where(:id=>2759,:iso=>"42",:name=>"Blue Nile State",:country_id=>197).first_or_create
State.where(:id=>2760,:iso=>"44",:name=>"Bahr el Gabel",:country_id=>197).first_or_create
State.where(:id=>2761,:iso=>"45",:name=>"Western Equatoria",:country_id=>197).first_or_create
State.where(:id=>2762,:iso=>"46",:name=>"Western Bahr al Ghazal",:country_id=>197).first_or_create
State.where(:id=>2763,:iso=>"47",:name=>"Western Darfur State",:country_id=>197).first_or_create
State.where(:id=>2764,:iso=>"49",:name=>"Southern Darfur",:country_id=>197).first_or_create
State.where(:id=>2765,:iso=>"50",:name=>"Southern Kordofan State",:country_id=>197).first_or_create
State.where(:id=>2766,:iso=>"51",:name=>"Jonglei State",:country_id=>197).first_or_create
State.where(:id=>2767,:iso=>"52",:name=>"Kassala State",:country_id=>197).first_or_create
State.where(:id=>2768,:iso=>"53",:name=>"River Nile State",:country_id=>197).first_or_create
State.where(:id=>2769,:iso=>"54",:name=>"Northern Bahr el Ghazal State",:country_id=>197).first_or_create
State.where(:id=>2770,:iso=>"55",:name=>"Northern Darfur",:country_id=>197).first_or_create
State.where(:id=>2771,:iso=>"56",:name=>"Northern Kordofan",:country_id=>197).first_or_create
State.where(:id=>2772,:iso=>"57",:name=>"Eastern Equatoria",:country_id=>197).first_or_create
State.where(:id=>2773,:iso=>"58",:name=>"Sinnar State",:country_id=>197).first_or_create
State.where(:id=>2774,:iso=>"59",:name=>"Warab State",:country_id=>197).first_or_create
State.where(:id=>2775,:iso=>"14",:name=>"Norrbotten",:country_id=>198).first_or_create
State.where(:id=>2776,:iso=>"25",:name=>"Västmanland",:country_id=>198).first_or_create
State.where(:id=>2777,:iso=>"24",:name=>"Västernorrland",:country_id=>198).first_or_create
State.where(:id=>2778,:iso=>"23",:name=>"Västerbotten",:country_id=>198).first_or_create
State.where(:id=>2779,:iso=>"22",:name=>"Värmland",:country_id=>198).first_or_create
State.where(:id=>2780,:iso=>"21",:name=>"Uppsala",:country_id=>198).first_or_create
State.where(:id=>2781,:iso=>"26",:name=>"Stockholm",:country_id=>198).first_or_create
State.where(:id=>2782,:iso=>"18",:name=>"Södermanland",:country_id=>198).first_or_create
State.where(:id=>2783,:iso=>"16",:name=>"Östergötland",:country_id=>198).first_or_create
State.where(:id=>2784,:iso=>"15",:name=>"Örebro",:country_id=>198).first_or_create
State.where(:id=>2785,:iso=>"12",:name=>"Kronoberg",:country_id=>198).first_or_create
State.where(:id=>2786,:iso=>"10",:name=>"Dalarna",:country_id=>198).first_or_create
State.where(:id=>2787,:iso=>"09",:name=>"Kalmar",:country_id=>198).first_or_create
State.where(:id=>2788,:iso=>"08",:name=>"Jönköping",:country_id=>198).first_or_create
State.where(:id=>2789,:iso=>"07",:name=>"Jämtland",:country_id=>198).first_or_create
State.where(:id=>2790,:iso=>"06",:name=>"Halland",:country_id=>198).first_or_create
State.where(:id=>2791,:iso=>"05",:name=>"Gotland",:country_id=>198).first_or_create
State.where(:id=>2792,:iso=>"03",:name=>"Gävleborg",:country_id=>198).first_or_create
State.where(:id=>2793,:iso=>"02",:name=>"Blekinge",:country_id=>198).first_or_create
State.where(:id=>2794,:iso=>"27",:name=>"Skåne",:country_id=>198).first_or_create
State.where(:id=>2795,:iso=>"28",:name=>"Västra Götaland",:country_id=>198).first_or_create
State.where(:id=>2796,:iso=>"01",:name=>"Central Singapore",:country_id=>199).first_or_create
State.where(:id=>2797,:iso=>"02",:name=>"North East",:country_id=>199).first_or_create
State.where(:id=>2798,:iso=>"04",:name=>"South East",:country_id=>199).first_or_create
State.where(:id=>2799,:iso=>"05",:name=>"South West",:country_id=>199).first_or_create
State.where(:id=>2800,:iso=>"03",:name=>"North West",:country_id=>199).first_or_create
State.where(:id=>2801,:iso=>"01",:name=>"Ascension",:country_id=>200).first_or_create
State.where(:id=>2802,:iso=>"03",:name=>"Tristan da Cunha",:country_id=>200).first_or_create
State.where(:id=>2803,:iso=>"02",:name=>"Saint Helena",:country_id=>200).first_or_create
State.where(:id=>2804,:iso=>"N5",:name=>"Žalec",:country_id=>201).first_or_create
State.where(:id=>2805,:iso=>"E7",:name=>"Zagorje ob Savi",:country_id=>201).first_or_create
State.where(:id=>2806,:iso=>"E5",:name=>"Vrhnika",:country_id=>201).first_or_create
State.where(:id=>2807,:iso=>"D5",:name=>"Tržič",:country_id=>201).first_or_create
State.where(:id=>2808,:iso=>"D4",:name=>"Trebnje",:country_id=>201).first_or_create
State.where(:id=>2809,:iso=>"D3",:name=>"Trbovlje",:country_id=>201).first_or_create
State.where(:id=>2810,:iso=>"D2",:name=>"Tolmin",:country_id=>201).first_or_create
State.where(:id=>2811,:iso=>"D7",:name=>"Velenje",:country_id=>201).first_or_create
State.where(:id=>2812,:iso=>"C5",:name=>"Šmarje pri Jelšah",:country_id=>201).first_or_create
State.where(:id=>2813,:iso=>"C4",:name=>"Slovenska Konjice",:country_id=>201).first_or_create
State.where(:id=>2814,:iso=>"L8",:name=>"Slovenska Bistrica",:country_id=>201).first_or_create
State.where(:id=>2815,:iso=>"C2",:name=>"Slovenj Gradec",:country_id=>201).first_or_create
State.where(:id=>2816,:iso=>"B9",:name=>"Škofja Loka",:country_id=>201).first_or_create
State.where(:id=>2817,:iso=>"B7",:name=>"Sežana",:country_id=>201).first_or_create
State.where(:id=>2818,:iso=>"B6",:name=>"Sevnica",:country_id=>201).first_or_create
State.where(:id=>2819,:iso=>"L7",:name=>"Šentjur pri Celju",:country_id=>201).first_or_create
State.where(:id=>2820,:iso=>"L1",:name=>"Ribnica",:country_id=>201).first_or_create
State.where(:id=>2821,:iso=>"A3",:name=>"Radovljica",:country_id=>201).first_or_create
State.where(:id=>2822,:iso=>"A2",:name=>"Radlje ob Dravi",:country_id=>201).first_or_create
State.where(:id=>2823,:iso=>"K7",:name=>"Ptuj",:country_id=>201).first_or_create
State.where(:id=>2824,:iso=>"94",:name=>"Postojna",:country_id=>201).first_or_create
State.where(:id=>2825,:iso=>"J9",:name=>"Piran-Pirano",:country_id=>201).first_or_create
State.where(:id=>2826,:iso=>"87",:name=>"Ormož",:country_id=>201).first_or_create
State.where(:id=>2827,:iso=>"J7",:name=>"Novo Mesto",:country_id=>201).first_or_create
State.where(:id=>2828,:iso=>"84",:name=>"Nova Gorica",:country_id=>201).first_or_create
State.where(:id=>2829,:iso=>"80",:name=>"Murska Sobota",:country_id=>201).first_or_create
State.where(:id=>2830,:iso=>"79",:name=>"Mozirje",:country_id=>201).first_or_create
State.where(:id=>2831,:iso=>"73",:name=>"Metlika",:country_id=>201).first_or_create
State.where(:id=>2832,:iso=>"J2",:name=>"Maribor",:country_id=>201).first_or_create
State.where(:id=>2833,:iso=>"64",:name=>"Logatec",:country_id=>201).first_or_create
State.where(:id=>2834,:iso=>"I6",:name=>"Ljutomer",:country_id=>201).first_or_create
State.where(:id=>2835,:iso=>"I5",:name=>"Litija",:country_id=>201).first_or_create
State.where(:id=>2836,:iso=>"I3",:name=>"Lenart",:country_id=>201).first_or_create
State.where(:id=>2837,:iso=>"57",:name=>"Laško",:country_id=>201).first_or_create
State.where(:id=>2838,:iso=>"54",:name=>"Krško",:country_id=>201).first_or_create
State.where(:id=>2839,:iso=>"52",:name=>"Kranj",:country_id=>201).first_or_create
State.where(:id=>2840,:iso=>"50",:name=>"Koper-Capodistria",:country_id=>201).first_or_create
State.where(:id=>2841,:iso=>"H7",:name=>"Kočevje",:country_id=>201).first_or_create
State.where(:id=>2842,:iso=>"H6",:name=>"Kamnik",:country_id=>201).first_or_create
State.where(:id=>2843,:iso=>"H4",:name=>"Jesenice",:country_id=>201).first_or_create
State.where(:id=>2844,:iso=>"40",:name=>"Izola-Isola",:country_id=>201).first_or_create
State.where(:id=>2845,:iso=>"38",:name=>"Ilirska Bistrica",:country_id=>201).first_or_create
State.where(:id=>2846,:iso=>"36",:name=>"Idrija",:country_id=>201).first_or_create
State.where(:id=>2847,:iso=>"34",:name=>"Hrastnik",:country_id=>201).first_or_create
State.where(:id=>2848,:iso=>"32",:name=>"Grosuplje",:country_id=>201).first_or_create
State.where(:id=>2849,:iso=>"29",:name=>"Gornja Radgona",:country_id=>201).first_or_create
State.where(:id=>2850,:iso=>"25",:name=>"Dravograd",:country_id=>201).first_or_create
State.where(:id=>2851,:iso=>"G7",:name=>"Domžale",:country_id=>201).first_or_create
State.where(:id=>2852,:iso=>"17",:name=>"Črnomelj",:country_id=>201).first_or_create
State.where(:id=>2853,:iso=>"13",:name=>"Cerknica",:country_id=>201).first_or_create
State.where(:id=>2854,:iso=>"11",:name=>"Celje",:country_id=>201).first_or_create
State.where(:id=>2855,:iso=>"08",:name=>"Brežice",:country_id=>201).first_or_create
State.where(:id=>2856,:iso=>"01",:name=>"Ajdovščina",:country_id=>201).first_or_create
State.where(:id=>2857,:iso=>"35",:name=>"Hrpelje-Kozina",:country_id=>201).first_or_create
State.where(:id=>2858,:iso=>"19",:name=>"Divača",:country_id=>201).first_or_create
State.where(:id=>2859,:iso=>"91",:name=>"Pivka",:country_id=>201).first_or_create
State.where(:id=>2860,:iso=>"I7",:name=>"Loška Dolina",:country_id=>201).first_or_create
State.where(:id=>2861,:iso=>"66",:name=>"Loški Potok",:country_id=>201).first_or_create
State.where(:id=>2862,:iso=>"88",:name=>"Osilnica",:country_id=>201).first_or_create
State.where(:id=>2863,:iso=>"D8",:name=>"Velike Lašče",:country_id=>201).first_or_create
State.where(:id=>2864,:iso=>"C1",:name=>"Škofljica",:country_id=>201).first_or_create
State.where(:id=>2865,:iso=>"37",:name=>"Ig",:country_id=>201).first_or_create
State.where(:id=>2866,:iso=>"09",:name=>"Brezovica",:country_id=>201).first_or_create
State.where(:id=>2867,:iso=>"05",:name=>"Borovnica",:country_id=>201).first_or_create
State.where(:id=>2868,:iso=>"E1",:name=>"Vipava",:country_id=>201).first_or_create
State.where(:id=>2869,:iso=>"49",:name=>"Komen",:country_id=>201).first_or_create
State.where(:id=>2870,:iso=>"J5",:name=>"Miren-Kostanjevica",:country_id=>201).first_or_create
State.where(:id=>2871,:iso=>"07",:name=>"Brda",:country_id=>201).first_or_create
State.where(:id=>2872,:iso=>"44",:name=>"Kanal",:country_id=>201).first_or_create
State.where(:id=>2873,:iso=>"F2",:name=>"Žiri",:country_id=>201).first_or_create
State.where(:id=>2874,:iso=>"14",:name=>"Cerkno",:country_id=>201).first_or_create
State.where(:id=>2875,:iso=>"F1",:name=>"Železniki",:country_id=>201).first_or_create
State.where(:id=>2876,:iso=>"27",:name=>"Gorenja Vas-Poljane",:country_id=>201).first_or_create
State.where(:id=>2877,:iso=>"G4",:name=>"Dobrova-Horjul-Polhov Gradec",:country_id=>201).first_or_create
State.where(:id=>2878,:iso=>"46",:name=>"Kobarid",:country_id=>201).first_or_create
State.where(:id=>2879,:iso=>"06",:name=>"Bovec",:country_id=>201).first_or_create
State.where(:id=>2880,:iso=>"04",:name=>"Bohinj",:country_id=>201).first_or_create
State.where(:id=>2881,:iso=>"03",:name=>"Bled",:country_id=>201).first_or_create
State.where(:id=>2882,:iso=>"82",:name=>"Naklo",:country_id=>201).first_or_create
State.where(:id=>2883,:iso=>"53",:name=>"Kranjska Gora",:country_id=>201).first_or_create
State.where(:id=>2884,:iso=>"K5",:name=>"Preddvor",:country_id=>201).first_or_create
State.where(:id=>2885,:iso=>"12",:name=>"Cerklje Na Gorenjskem",:country_id=>201).first_or_create
State.where(:id=>2886,:iso=>"B2",:name=>"Šenčur",:country_id=>201).first_or_create
State.where(:id=>2887,:iso=>"E3",:name=>"Vodice",:country_id=>201).first_or_create
State.where(:id=>2888,:iso=>"71",:name=>"Medvode",:country_id=>201).first_or_create
State.where(:id=>2889,:iso=>"72",:name=>"Mengeš",:country_id=>201).first_or_create
State.where(:id=>2890,:iso=>"22",:name=>"Dol Pri Ljubljani",:country_id=>201).first_or_create
State.where(:id=>2891,:iso=>"77",:name=>"Moravče",:country_id=>201).first_or_create
State.where(:id=>2892,:iso=>"30",:name=>"Gornji Grad",:country_id=>201).first_or_create
State.where(:id=>2893,:iso=>"I9",:name=>"Luče",:country_id=>201).first_or_create
State.where(:id=>2894,:iso=>"K8",:name=>"Ravne na Koroškem",:country_id=>201).first_or_create
State.where(:id=>2895,:iso=>"74",:name=>"Mežica",:country_id=>201).first_or_create
State.where(:id=>2896,:iso=>"81",:name=>"Muta",:country_id=>201).first_or_create
State.where(:id=>2897,:iso=>"E6",:name=>"Vuzenica",:country_id=>201).first_or_create
State.where(:id=>2898,:iso=>"16",:name=>"Črna na Koroškem",:country_id=>201).first_or_create
State.where(:id=>2899,:iso=>"62",:name=>"Ljubno",:country_id=>201).first_or_create
State.where(:id=>2900,:iso=>"C7",:name=>"Šoštanj",:country_id=>201).first_or_create
State.where(:id=>2901,:iso=>"C6",:name=>"Šmartno ob Paki",:country_id=>201).first_or_create
State.where(:id=>2902,:iso=>"68",:name=>"Lukovica",:country_id=>201).first_or_create
State.where(:id=>2903,:iso=>"99",:name=>"Radeče",:country_id=>201).first_or_create
State.where(:id=>2904,:iso=>"39",:name=>"Ivančna Gorica",:country_id=>201).first_or_create
State.where(:id=>2905,:iso=>"20",:name=>"Dobrepolje",:country_id=>201).first_or_create
State.where(:id=>2906,:iso=>"B1",:name=>"Semič",:country_id=>201).first_or_create
State.where(:id=>2907,:iso=>"B4",:name=>"Šentjernej",:country_id=>201).first_or_create
State.where(:id=>2908,:iso=>"B8",:name=>"Škocjan",:country_id=>201).first_or_create
State.where(:id=>2909,:iso=>"C9",:name=>"Štore",:country_id=>201).first_or_create
State.where(:id=>2910,:iso=>"N3",:name=>"Vojnik",:country_id=>201).first_or_create
State.where(:id=>2911,:iso=>"E2",:name=>"Vitanje",:country_id=>201).first_or_create
State.where(:id=>2912,:iso=>"F3",:name=>"Zreče",:country_id=>201).first_or_create
State.where(:id=>2913,:iso=>"76",:name=>"Mislinja",:country_id=>201).first_or_create
State.where(:id=>2914,:iso=>"L3",:name=>"Ruše",:country_id=>201).first_or_create
State.where(:id=>2915,:iso=>"55",:name=>"Kungota",:country_id=>201).first_or_create
State.where(:id=>2916,:iso=>"B3",:name=>"Šentilj",:country_id=>201).first_or_create
State.where(:id=>2917,:iso=>"89",:name=>"Pesnica",:country_id=>201).first_or_create
State.where(:id=>2918,:iso=>"26",:name=>"Duplek",:country_id=>201).first_or_create
State.where(:id=>2919,:iso=>"98",:name=>"Rače-Fram",:country_id=>201).first_or_create
State.where(:id=>2920,:iso=>"C8",:name=>"Starše",:country_id=>201).first_or_create
State.where(:id=>2921,:iso=>"45",:name=>"Kidričevo",:country_id=>201).first_or_create
State.where(:id=>2922,:iso=>"J1",:name=>"Majšperk",:country_id=>201).first_or_create
State.where(:id=>2923,:iso=>"N2",:name=>"Videm",:country_id=>201).first_or_create
State.where(:id=>2924,:iso=>"A7",:name=>"Rogaška Slatina",:country_id=>201).first_or_create
State.where(:id=>2925,:iso=>"A8",:name=>"Rogatec",:country_id=>201).first_or_create
State.where(:id=>2926,:iso=>"92",:name=>"Podčetrtek",:country_id=>201).first_or_create
State.where(:id=>2927,:iso=>"51",:name=>"Kozje",:country_id=>201).first_or_create
State.where(:id=>2928,:iso=>"28",:name=>"Gorišnica",:country_id=>201).first_or_create
State.where(:id=>2929,:iso=>"E9",:name=>"Zavrč",:country_id=>201).first_or_create
State.where(:id=>2930,:iso=>"24",:name=>"Dornava",:country_id=>201).first_or_create
State.where(:id=>2931,:iso=>"42",:name=>"Juršinci",:country_id=>201).first_or_create
State.where(:id=>2932,:iso=>"D1",:name=>"Sveti Jurij",:country_id=>201).first_or_create
State.where(:id=>2933,:iso=>"A1",:name=>"Radenci",:country_id=>201).first_or_create
State.where(:id=>2934,:iso=>"97",:name=>"Puconci",:country_id=>201).first_or_create
State.where(:id=>2935,:iso=>"A6",:name=>"Rogašovci",:country_id=>201).first_or_create
State.where(:id=>2936,:iso=>"I2",:name=>"Kuzma",:country_id=>201).first_or_create
State.where(:id=>2937,:iso=>"31",:name=>"Gornji Petrovci",:country_id=>201).first_or_create
State.where(:id=>2938,:iso=>"78",:name=>"Moravske Toplice",:country_id=>201).first_or_create
State.where(:id=>2939,:iso=>"47",:name=>"Kobilje",:country_id=>201).first_or_create
State.where(:id=>2940,:iso=>"02",:name=>"Beltinci",:country_id=>201).first_or_create
State.where(:id=>2941,:iso=>"D6",:name=>"Turnišče",:country_id=>201).first_or_create
State.where(:id=>2942,:iso=>"86",:name=>"Odranci",:country_id=>201).first_or_create
State.where(:id=>2943,:iso=>"15",:name=>"Črenšovci",:country_id=>201).first_or_create
State.where(:id=>2944,:iso=>"83",:name=>"Nazarje",:country_id=>201).first_or_create
State.where(:id=>2945,:iso=>"61",:name=>"Ljubljana",:country_id=>201).first_or_create
State.where(:id=>2946,:iso=>"N7",:name=>"Žirovnica",:country_id=>201).first_or_create
State.where(:id=>2947,:iso=>"H5",:name=>"Jezersko",:country_id=>201).first_or_create
State.where(:id=>2948,:iso=>"M2",:name=>"Solčava",:country_id=>201).first_or_create
State.where(:id=>2949,:iso=>"H8",:name=>"Komenda",:country_id=>201).first_or_create
State.where(:id=>2950,:iso=>"H3",:name=>"Horjul",:country_id=>201).first_or_create
State.where(:id=>2951,:iso=>"L6",:name=>"Šempeter-Vrtojba",:country_id=>201).first_or_create
State.where(:id=>2952,:iso=>"F6",:name=>"Bloke",:country_id=>201).first_or_create
State.where(:id=>2953,:iso=>"M1",:name=>"Sodražica",:country_id=>201).first_or_create
State.where(:id=>2954,:iso=>"M8",:name=>"Trzin",:country_id=>201).first_or_create
State.where(:id=>2955,:iso=>"K6",:name=>"Prevalje",:country_id=>201).first_or_create
State.where(:id=>2956,:iso=>"N4",:name=>"Vransko",:country_id=>201).first_or_create
State.where(:id=>2957,:iso=>"M5",:name=>"Tabor",:country_id=>201).first_or_create
State.where(:id=>2958,:iso=>"F7",:name=>"Braslovče",:country_id=>201).first_or_create
State.where(:id=>2959,:iso=>"K3",:name=>"Polzela",:country_id=>201).first_or_create
State.where(:id=>2960,:iso=>"K4",:name=>"Prebold",:country_id=>201).first_or_create
State.where(:id=>2961,:iso=>"H9",:name=>"Kostel",:country_id=>201).first_or_create
State.where(:id=>2962,:iso=>"N8",:name=>"Žužemberk",:country_id=>201).first_or_create
State.where(:id=>2963,:iso=>"G6",:name=>"Dolenjske Toplice",:country_id=>201).first_or_create
State.where(:id=>2964,:iso=>"J6",:name=>"Mirna Peč",:country_id=>201).first_or_create
State.where(:id=>2965,:iso=>"F5",:name=>"Bistrica ob Sotli",:country_id=>201).first_or_create
State.where(:id=>2966,:iso=>"G2",:name=>"Dobje",:country_id=>201).first_or_create
State.where(:id=>2967,:iso=>"G3",:name=>"Dobrna",:country_id=>201).first_or_create
State.where(:id=>2968,:iso=>"J8",:name=>"Oplotnica",:country_id=>201).first_or_create
State.where(:id=>2969,:iso=>"K2",:name=>"Podvelka",:country_id=>201).first_or_create
State.where(:id=>2970,:iso=>"L2",:name=>"Ribnica na Pohorju",:country_id=>201).first_or_create
State.where(:id=>2971,:iso=>"I8",:name=>"Lovrenc na Pohorju",:country_id=>201).first_or_create
State.where(:id=>2972,:iso=>"L5",:name=>"Selnica ob Dravi",:country_id=>201).first_or_create
State.where(:id=>2973,:iso=>"H1",:name=>"Hoče-Slivnica",:country_id=>201).first_or_create
State.where(:id=>2974,:iso=>"J4",:name=>"Miklavž na Dravskem Polju",:country_id=>201).first_or_create
State.where(:id=>2975,:iso=>"G9",:name=>"Hajdina",:country_id=>201).first_or_create
State.where(:id=>2976,:iso=>"N6",:name=>"Žetale",:country_id=>201).first_or_create
State.where(:id=>2977,:iso=>"K1",:name=>"Podlehnik",:country_id=>201).first_or_create
State.where(:id=>2978,:iso=>"J3",:name=>"Markovci",:country_id=>201).first_or_create
State.where(:id=>2979,:iso=>"G1",:name=>"Destrnik",:country_id=>201).first_or_create
State.where(:id=>2980,:iso=>"M7",:name=>"Trnovska Vas",:country_id=>201).first_or_create
State.where(:id=>2981,:iso=>"M4",:name=>"Sveti Andraž v Slovenskih Goricah",:country_id=>201).first_or_create
State.where(:id=>2982,:iso=>"F9",:name=>"Cerkvenjak",:country_id=>201).first_or_create
State.where(:id=>2983,:iso=>"F4",:name=>"Benedikt",:country_id=>201).first_or_create
State.where(:id=>2984,:iso=>"M3",:name=>"Sveta Ana",:country_id=>201).first_or_create
State.where(:id=>2985,:iso=>"I1",:name=>"Križevci",:country_id=>201).first_or_create
State.where(:id=>2986,:iso=>"N1",:name=>"Veržej",:country_id=>201).first_or_create
State.where(:id=>2987,:iso=>"M9",:name=>"Velika Polana",:country_id=>201).first_or_create
State.where(:id=>2988,:iso=>"I4",:name=>"Lendava-Lendva",:country_id=>201).first_or_create
State.where(:id=>2989,:iso=>"G5",:name=>"Dobrovnik-Dobronak",:country_id=>201).first_or_create
State.where(:id=>2990,:iso=>"M6",:name=>"Tišina",:country_id=>201).first_or_create
State.where(:id=>2991,:iso=>"F8",:name=>"Cankova",:country_id=>201).first_or_create
State.where(:id=>2992,:iso=>"G8",:name=>"Grad",:country_id=>201).first_or_create
State.where(:id=>2993,:iso=>"H2",:name=>"Hodoš-Hodos",:country_id=>201).first_or_create
State.where(:id=>2994,:iso=>"K9",:name=>"Razkrižje",:country_id=>201).first_or_create
State.where(:id=>2995,:iso=>"L9",:name=>"Šmartno pri Litiji",:country_id=>201).first_or_create
State.where(:id=>2996,:iso=>"L4",:name=>"Šalovci",:country_id=>201).first_or_create
State.where(:id=>2997,:iso=>"22",:name=>"Jan Mayen",:country_id=>202).first_or_create
State.where(:id=>2998,:iso=>"21",:name=>"Svalbard",:country_id=>202).first_or_create
State.where(:id=>2999,:iso=>"03",:name=>"Košický",:country_id=>203).first_or_create
State.where(:id=>3000,:iso=>"05",:name=>"Prešovský",:country_id=>203).first_or_create
State.where(:id=>3001,:iso=>"08",:name=>"Žilinský",:country_id=>203).first_or_create
State.where(:id=>3002,:iso=>"01",:name=>"Banskobystrický",:country_id=>203).first_or_create
State.where(:id=>3003,:iso=>"02",:name=>"Bratislavský",:country_id=>203).first_or_create
State.where(:id=>3004,:iso=>"04",:name=>"Nitriansky",:country_id=>203).first_or_create
State.where(:id=>3005,:iso=>"06",:name=>"Trenčiansky",:country_id=>203).first_or_create
State.where(:id=>3006,:iso=>"07",:name=>"Trnavský",:country_id=>203).first_or_create
State.where(:id=>3007,:iso=>"04",:name=>"Western Area",:country_id=>204).first_or_create
State.where(:id=>3008,:iso=>"03",:name=>"Southern Province",:country_id=>204).first_or_create
State.where(:id=>3009,:iso=>"02",:name=>"Northern Province",:country_id=>204).first_or_create
State.where(:id=>3010,:iso=>"01",:name=>"Eastern Province",:country_id=>204).first_or_create
State.where(:id=>3011,:iso=>"09",:name=>"Serravalle",:country_id=>205).first_or_create
State.where(:id=>3012,:iso=>"02",:name=>"Chiesanuova",:country_id=>205).first_or_create
State.where(:id=>3013,:iso=>"07",:name=>"San Marino",:country_id=>205).first_or_create
State.where(:id=>3014,:iso=>"01",:name=>"Acquaviva",:country_id=>205).first_or_create
State.where(:id=>3015,:iso=>"06",:name=>"Borgo Maggiore",:country_id=>205).first_or_create
State.where(:id=>3016,:iso=>"03",:name=>"Domagnano",:country_id=>205).first_or_create
State.where(:id=>3017,:iso=>"04",:name=>"Faetano",:country_id=>205).first_or_create
State.where(:id=>3018,:iso=>"05",:name=>"Fiorentino",:country_id=>205).first_or_create
State.where(:id=>3019,:iso=>"08",:name=>"Montegiardino",:country_id=>205).first_or_create
State.where(:id=>3020,:iso=>"12",:name=>"Ziguinchor",:country_id=>206).first_or_create
State.where(:id=>3021,:iso=>"07",:name=>"Thiès",:country_id=>206).first_or_create
State.where(:id=>3022,:iso=>"05",:name=>"Tambacounda",:country_id=>206).first_or_create
State.where(:id=>3023,:iso=>"14",:name=>"Saint-Louis",:country_id=>206).first_or_create
State.where(:id=>3024,:iso=>"15",:name=>"Matam",:country_id=>206).first_or_create
State.where(:id=>3025,:iso=>"13",:name=>"Louga",:country_id=>206).first_or_create
State.where(:id=>3026,:iso=>"11",:name=>"Kolda",:country_id=>206).first_or_create
State.where(:id=>3027,:iso=>"10",:name=>"Kaolack",:country_id=>206).first_or_create
State.where(:id=>3028,:iso=>"09",:name=>"Fatick",:country_id=>206).first_or_create
State.where(:id=>3029,:iso=>"03",:name=>"Diourbel",:country_id=>206).first_or_create
State.where(:id=>3030,:iso=>"01",:name=>"Dakar",:country_id=>206).first_or_create
State.where(:id=>3031,:iso=>"16",:name=>"Kaffrine",:country_id=>206).first_or_create
State.where(:id=>3032,:iso=>"17",:name=>"Kédougou",:country_id=>206).first_or_create
State.where(:id=>3033,:iso=>"18",:name=>"Sédhiou",:country_id=>206).first_or_create
State.where(:id=>3034,:iso=>"20",:name=>"Woqooyi Galbeed",:country_id=>207).first_or_create
State.where(:id=>3035,:iso=>"19",:name=>"Togdheer",:country_id=>207).first_or_create
State.where(:id=>3036,:iso=>"14",:name=>"Shabeellaha Hoose",:country_id=>207).first_or_create
State.where(:id=>3037,:iso=>"13",:name=>"Middle Shabele",:country_id=>207).first_or_create
State.where(:id=>3038,:iso=>"12",:name=>"Sanaag",:country_id=>207).first_or_create
State.where(:id=>3039,:iso=>"18",:name=>"Nugaal",:country_id=>207).first_or_create
State.where(:id=>3040,:iso=>"10",:name=>"Mudug",:country_id=>207).first_or_create
State.where(:id=>3041,:iso=>"09",:name=>"Lower Juba",:country_id=>207).first_or_create
State.where(:id=>3042,:iso=>"08",:name=>"Middle Juba",:country_id=>207).first_or_create
State.where(:id=>3043,:iso=>"07",:name=>"Hiiraan",:country_id=>207).first_or_create
State.where(:id=>3044,:iso=>"06",:name=>"Gedo",:country_id=>207).first_or_create
State.where(:id=>3045,:iso=>"05",:name=>"Galguduud",:country_id=>207).first_or_create
State.where(:id=>3046,:iso=>"04",:name=>"Bay",:country_id=>207).first_or_create
State.where(:id=>3047,:iso=>"03",:name=>"Bari",:country_id=>207).first_or_create
State.where(:id=>3048,:iso=>"02",:name=>"Banaadir",:country_id=>207).first_or_create
State.where(:id=>3049,:iso=>"01",:name=>"Bakool",:country_id=>207).first_or_create
State.where(:id=>3050,:iso=>"21",:name=>"Awdal",:country_id=>207).first_or_create
State.where(:id=>3051,:iso=>"22",:name=>"Sool",:country_id=>207).first_or_create
State.where(:id=>3052,:iso=>"19",:name=>"Wanica",:country_id=>208).first_or_create
State.where(:id=>3053,:iso=>"18",:name=>"Sipaliwini",:country_id=>208).first_or_create
State.where(:id=>3054,:iso=>"17",:name=>"Saramacca",:country_id=>208).first_or_create
State.where(:id=>3055,:iso=>"16",:name=>"Paramaribo",:country_id=>208).first_or_create
State.where(:id=>3056,:iso=>"15",:name=>"Para",:country_id=>208).first_or_create
State.where(:id=>3057,:iso=>"14",:name=>"Nickerie",:country_id=>208).first_or_create
State.where(:id=>3058,:iso=>"13",:name=>"Marowijne",:country_id=>208).first_or_create
State.where(:id=>3059,:iso=>"12",:name=>"Coronie",:country_id=>208).first_or_create
State.where(:id=>3060,:iso=>"11",:name=>"Commewijne",:country_id=>208).first_or_create
State.where(:id=>3061,:iso=>"10",:name=>"Brokopondo",:country_id=>208).first_or_create
State.where(:id=>3062,:iso=>"02",:name=>"São Tomé",:country_id=>209).first_or_create
State.where(:id=>3063,:iso=>"01",:name=>"Príncipe",:country_id=>209).first_or_create
State.where(:id=>3064,:iso=>"14",:name=>"Usulután",:country_id=>210).first_or_create
State.where(:id=>3065,:iso=>"13",:name=>"Sonsonate",:country_id=>210).first_or_create
State.where(:id=>3066,:iso=>"12",:name=>"San Vicente",:country_id=>210).first_or_create
State.where(:id=>3067,:iso=>"11",:name=>"Santa Ana",:country_id=>210).first_or_create
State.where(:id=>3068,:iso=>"10",:name=>"San Salvador",:country_id=>210).first_or_create
State.where(:id=>3069,:iso=>"09",:name=>"San Miguel",:country_id=>210).first_or_create
State.where(:id=>3070,:iso=>"08",:name=>"Morazán",:country_id=>210).first_or_create
State.where(:id=>3071,:iso=>"07",:name=>"La Unión",:country_id=>210).first_or_create
State.where(:id=>3072,:iso=>"06",:name=>"La Paz",:country_id=>210).first_or_create
State.where(:id=>3073,:iso=>"05",:name=>"La Libertad",:country_id=>210).first_or_create
State.where(:id=>3074,:iso=>"04",:name=>"Cuscatlán",:country_id=>210).first_or_create
State.where(:id=>3075,:iso=>"03",:name=>"Chalatenango",:country_id=>210).first_or_create
State.where(:id=>3076,:iso=>"02",:name=>"Cabañas",:country_id=>210).first_or_create
State.where(:id=>3077,:iso=>"01",:name=>"Ahuachapán",:country_id=>210).first_or_create
State.where(:id=>3078,:iso=>"14",:name=>"Tartus",:country_id=>212).first_or_create
State.where(:id=>3079,:iso=>"13",:name=>"Damascus City",:country_id=>212).first_or_create
State.where(:id=>3080,:iso=>"12",:name=>"Idlib",:country_id=>212).first_or_create
State.where(:id=>3081,:iso=>"11",:name=>"Homs",:country_id=>212).first_or_create
State.where(:id=>3082,:iso=>"10",:name=>"Hama",:country_id=>212).first_or_create
State.where(:id=>3083,:iso=>"09",:name=>"Aleppo",:country_id=>212).first_or_create
State.where(:id=>3084,:iso=>"08",:name=>"Rif-dimashq",:country_id=>212).first_or_create
State.where(:id=>3085,:iso=>"07",:name=>"Deir ez-Zor",:country_id=>212).first_or_create
State.where(:id=>3086,:iso=>"06",:name=>"Daraa",:country_id=>212).first_or_create
State.where(:id=>3087,:iso=>"05",:name=>"As-Suwayda",:country_id=>212).first_or_create
State.where(:id=>3088,:iso=>"04",:name=>"Ar-Raqqah",:country_id=>212).first_or_create
State.where(:id=>3089,:iso=>"03",:name=>"Quneitra",:country_id=>212).first_or_create
State.where(:id=>3090,:iso=>"02",:name=>"Latakia",:country_id=>212).first_or_create
State.where(:id=>3091,:iso=>"01",:name=>"Al-Hasakah",:country_id=>212).first_or_create
State.where(:id=>3092,:iso=>"04",:name=>"Shiselweni",:country_id=>213).first_or_create
State.where(:id=>3093,:iso=>"03",:name=>"Manzini",:country_id=>213).first_or_create
State.where(:id=>3094,:iso=>"02",:name=>"Lubombo",:country_id=>213).first_or_create
State.where(:id=>3095,:iso=>"01",:name=>"Hhohho",:country_id=>213).first_or_create
State.where(:id=>3096,:iso=>"13",:name=>"Salamat",:country_id=>215).first_or_create
State.where(:id=>3097,:iso=>"12",:name=>"Ouaddaï",:country_id=>215).first_or_create
State.where(:id=>3098,:iso=>"02",:name=>"Biltine",:country_id=>215).first_or_create
State.where(:id=>3099,:iso=>"14",:name=>"Tandjilé",:country_id=>215).first_or_create
State.where(:id=>3100,:iso=>"17",:name=>"Moyen-Chari",:country_id=>215).first_or_create
State.where(:id=>3101,:iso=>"16",:name=>"Mayo-Kébbi",:country_id=>215).first_or_create
State.where(:id=>3102,:iso=>"09",:name=>"Logone Oriental",:country_id=>215).first_or_create
State.where(:id=>3103,:iso=>"08",:name=>"Logone Occidental",:country_id=>215).first_or_create
State.where(:id=>3104,:iso=>"07",:name=>"Lac",:country_id=>215).first_or_create
State.where(:id=>3105,:iso=>"06",:name=>"Kanem",:country_id=>215).first_or_create
State.where(:id=>3106,:iso=>"05",:name=>"Guéra",:country_id=>215).first_or_create
State.where(:id=>3107,:iso=>"15",:name=>"Chari-Baguirmi",:country_id=>215).first_or_create
State.where(:id=>3108,:iso=>"01",:name=>"Batha",:country_id=>215).first_or_create
State.where(:id=>3109,:iso=>"23",:name=>"Région du Borkou",:country_id=>215).first_or_create
State.where(:id=>3110,:iso=>"18",:name=>"Région du Hadjer-Lamis",:country_id=>215).first_or_create
State.where(:id=>3111,:iso=>"19",:name=>"Région du Mandoul",:country_id=>215).first_or_create
State.where(:id=>3112,:iso=>"20",:name=>"Région du Mayo-Kébbi Ouest",:country_id=>215).first_or_create
State.where(:id=>3113,:iso=>"21",:name=>"Région de la Ville de N'Djaména",:country_id=>215).first_or_create
State.where(:id=>3114,:iso=>"22",:name=>"Région du Barh el Gazel",:country_id=>215).first_or_create
State.where(:id=>3115,:iso=>"24",:name=>"Ennedi",:country_id=>215).first_or_create
State.where(:id=>3116,:iso=>"25",:name=>"Région du Sila",:country_id=>215).first_or_create
State.where(:id=>3117,:iso=>"26",:name=>"Région du Tibesti",:country_id=>215).first_or_create
State.where(:id=>3118,:iso=>"02",:name=>"Crozet",:country_id=>216).first_or_create
State.where(:id=>3119,:iso=>"03",:name=>"Kerguelen",:country_id=>216).first_or_create
State.where(:id=>3120,:iso=>"01",:name=>"Saint-Paul-et-Amsterdam",:country_id=>216).first_or_create
State.where(:id=>3121,:iso=>"05",:name=>"Îles Éparses",:country_id=>216).first_or_create
State.where(:id=>3122,:iso=>"04",:name=>"Terre-Adélie",:country_id=>216).first_or_create
State.where(:id=>3123,:iso=>"26",:name=>"Savanes",:country_id=>217).first_or_create
State.where(:id=>3124,:iso=>"25",:name=>"Plateaux",:country_id=>217).first_or_create
State.where(:id=>3125,:iso=>"24",:name=>"Maritime",:country_id=>217).first_or_create
State.where(:id=>3126,:iso=>"22",:name=>"Centrale",:country_id=>217).first_or_create
State.where(:id=>3127,:iso=>"23",:name=>"Kara",:country_id=>217).first_or_create
State.where(:id=>3128,:iso=>"15",:name=>"Uthai Thani",:country_id=>218).first_or_create
State.where(:id=>3129,:iso=>"65",:name=>"Trang",:country_id=>218).first_or_create
State.where(:id=>3130,:iso=>"08",:name=>"Tak",:country_id=>218).first_or_create
State.where(:id=>3131,:iso=>"60",:name=>"Surat Thani",:country_id=>218).first_or_create
State.where(:id=>3132,:iso=>"09",:name=>"Sukhothai",:country_id=>218).first_or_create
State.where(:id=>3133,:iso=>"52",:name=>"Ratchaburi",:country_id=>218).first_or_create
State.where(:id=>3134,:iso=>"59",:name=>"Ranong",:country_id=>218).first_or_create
State.where(:id=>3135,:iso=>"57",:name=>"Prachuap Khiri Khan",:country_id=>218).first_or_create
State.where(:id=>3136,:iso=>"62",:name=>"Changwat Phuket",:country_id=>218).first_or_create
State.where(:id=>3137,:iso=>"56",:name=>"Phetchaburi",:country_id=>218).first_or_create
State.where(:id=>3138,:iso=>"61",:name=>"Phangnga",:country_id=>218).first_or_create
State.where(:id=>3139,:iso=>"01",:name=>"Mae Hong Son",:country_id=>218).first_or_create
State.where(:id=>3140,:iso=>"05",:name=>"Lamphun",:country_id=>218).first_or_create
State.where(:id=>3141,:iso=>"06",:name=>"Lampang",:country_id=>218).first_or_create
State.where(:id=>3142,:iso=>"63",:name=>"Krabi",:country_id=>218).first_or_create
State.where(:id=>3143,:iso=>"50",:name=>"Kanchanaburi",:country_id=>218).first_or_create
State.where(:id=>3144,:iso=>"11",:name=>"Kamphaeng Phet",:country_id=>218).first_or_create
State.where(:id=>3145,:iso=>"58",:name=>"Chumphon",:country_id=>218).first_or_create
State.where(:id=>3146,:iso=>"03",:name=>"Chiang Rai",:country_id=>218).first_or_create
State.where(:id=>3147,:iso=>"02",:name=>"Chiang Mai",:country_id=>218).first_or_create
State.where(:id=>3148,:iso=>"72",:name=>"Yasothon",:country_id=>218).first_or_create
State.where(:id=>3149,:iso=>"70",:name=>"Yala",:country_id=>218).first_or_create
State.where(:id=>3150,:iso=>"10",:name=>"Uttaradit",:country_id=>218).first_or_create
State.where(:id=>3151,:iso=>"49",:name=>"Trat",:country_id=>218).first_or_create
State.where(:id=>3152,:iso=>"29",:name=>"Surin",:country_id=>218).first_or_create
State.where(:id=>3153,:iso=>"51",:name=>"Suphan Buri",:country_id=>218).first_or_create
State.where(:id=>3154,:iso=>"68",:name=>"Songkhla",:country_id=>218).first_or_create
State.where(:id=>3155,:iso=>"30",:name=>"Sisaket",:country_id=>218).first_or_create
State.where(:id=>3156,:iso=>"33",:name=>"Sing Buri",:country_id=>218).first_or_create
State.where(:id=>3157,:iso=>"67",:name=>"Satun",:country_id=>218).first_or_create
State.where(:id=>3158,:iso=>"37",:name=>"Sara Buri",:country_id=>218).first_or_create
State.where(:id=>3159,:iso=>"54",:name=>"Samut Songkhram",:country_id=>218).first_or_create
State.where(:id=>3160,:iso=>"55",:name=>"Samut Sakhon",:country_id=>218).first_or_create
State.where(:id=>3161,:iso=>"42",:name=>"Samut Prakan",:country_id=>218).first_or_create
State.where(:id=>3162,:iso=>"20",:name=>"Sakon Nakhon",:country_id=>218).first_or_create
State.where(:id=>3163,:iso=>"25",:name=>"Roi Et",:country_id=>218).first_or_create
State.where(:id=>3164,:iso=>"47",:name=>"Rayong",:country_id=>218).first_or_create
State.where(:id=>3165,:iso=>"36",:name=>"Phra Nakhon Si Ayutthaya",:country_id=>218).first_or_create
State.where(:id=>3166,:iso=>"07",:name=>"Phrae",:country_id=>218).first_or_create
State.where(:id=>3167,:iso=>"12",:name=>"Phitsanulok",:country_id=>218).first_or_create
State.where(:id=>3168,:iso=>"13",:name=>"Phichit",:country_id=>218).first_or_create
State.where(:id=>3169,:iso=>"14",:name=>"Phetchabun",:country_id=>218).first_or_create
State.where(:id=>3170,:iso=>"41",:name=>"Phayao",:country_id=>218).first_or_create
State.where(:id=>3171,:iso=>"66",:name=>"Phatthalung",:country_id=>218).first_or_create
State.where(:id=>3172,:iso=>"69",:name=>"Pattani",:country_id=>218).first_or_create
State.where(:id=>3173,:iso=>"39",:name=>"Pathum Thani",:country_id=>218).first_or_create
State.where(:id=>3174,:iso=>"38",:name=>"Nonthaburi",:country_id=>218).first_or_create
State.where(:id=>3175,:iso=>"17",:name=>"Nong Khai",:country_id=>218).first_or_create
State.where(:id=>3176,:iso=>"31",:name=>"Narathiwat",:country_id=>218).first_or_create
State.where(:id=>3177,:iso=>"04",:name=>"Nan",:country_id=>218).first_or_create
State.where(:id=>3178,:iso=>"64",:name=>"Nakhon Si Thammarat",:country_id=>218).first_or_create
State.where(:id=>3179,:iso=>"16",:name=>"Nakhon Sawan",:country_id=>218).first_or_create
State.where(:id=>3180,:iso=>"27",:name=>"Nakhon Ratchasima",:country_id=>218).first_or_create
State.where(:id=>3181,:iso=>"73",:name=>"Nakhon Phanom",:country_id=>218).first_or_create
State.where(:id=>3182,:iso=>"53",:name=>"Nakhon Pathom",:country_id=>218).first_or_create
State.where(:id=>3183,:iso=>"43",:name=>"Nakhon Nayok",:country_id=>218).first_or_create
State.where(:id=>3184,:iso=>"78",:name=>"Mukdahan",:country_id=>218).first_or_create
State.where(:id=>3185,:iso=>"24",:name=>"Maha Sarakham",:country_id=>218).first_or_create
State.where(:id=>3186,:iso=>"34",:name=>"Lop Buri",:country_id=>218).first_or_create
State.where(:id=>3187,:iso=>"18",:name=>"Loei",:country_id=>218).first_or_create
State.where(:id=>3188,:iso=>"40",:name=>"Bangkok",:country_id=>218).first_or_create
State.where(:id=>3189,:iso=>"22",:name=>"Khon Kaen",:country_id=>218).first_or_create
State.where(:id=>3190,:iso=>"23",:name=>"Kalasin",:country_id=>218).first_or_create
State.where(:id=>3191,:iso=>"46",:name=>"Chon Buri",:country_id=>218).first_or_create
State.where(:id=>3192,:iso=>"48",:name=>"Chanthaburi",:country_id=>218).first_or_create
State.where(:id=>3193,:iso=>"26",:name=>"Chaiyaphum",:country_id=>218).first_or_create
State.where(:id=>3194,:iso=>"32",:name=>"Chai Nat",:country_id=>218).first_or_create
State.where(:id=>3195,:iso=>"44",:name=>"Chachoengsao",:country_id=>218).first_or_create
State.where(:id=>3196,:iso=>"28",:name=>"Buriram",:country_id=>218).first_or_create
State.where(:id=>3197,:iso=>"35",:name=>"Ang Thong",:country_id=>218).first_or_create
State.where(:id=>3198,:iso=>"76",:name=>"Udon Thani",:country_id=>218).first_or_create
State.where(:id=>3199,:iso=>"74",:name=>"Prachin Buri",:country_id=>218).first_or_create
State.where(:id=>3200,:iso=>"75",:name=>"Ubon Ratchathani",:country_id=>218).first_or_create
State.where(:id=>3201,:iso=>"77",:name=>"Amnat Charoen",:country_id=>218).first_or_create
State.where(:id=>3202,:iso=>"79",:name=>"Nong Bua Lamphu",:country_id=>218).first_or_create
State.where(:id=>3203,:iso=>"80",:name=>"Sa Kaeo",:country_id=>218).first_or_create
State.where(:id=>3204,:iso=>"03",:name=>"Sughd",:country_id=>219).first_or_create
State.where(:id=>3205,:iso=>"01",:name=>"Gorno-Badakhshan",:country_id=>219).first_or_create
State.where(:id=>3206,:iso=>"02",:name=>"Khatlon",:country_id=>219).first_or_create
State.where(:id=>3207,:iso=>"RR",:name=>"Region of Republican Subordination",:country_id=>219).first_or_create
State.where(:id=>3208,:iso=>"7280679",:name=>"Dushanbe",:country_id=>219).first_or_create
State.where(:id=>3209,:iso=>"N",:name=>"Nukunonu",:country_id=>220).first_or_create
State.where(:id=>3210,:iso=>"F",:name=>"Fakaofo",:country_id=>220).first_or_create
State.where(:id=>3211,:iso=>"A",:name=>"Atafu",:country_id=>220).first_or_create
State.where(:id=>3212,:iso=>"VI",:name=>"Viqueque",:country_id=>221).first_or_create
State.where(:id=>3213,:iso=>"MF",:name=>"Manufahi",:country_id=>221).first_or_create
State.where(:id=>3214,:iso=>"MT",:name=>"Distrito Manatuto",:country_id=>221).first_or_create
State.where(:id=>3215,:iso=>"LI",:name=>"Distrito Liquiçá",:country_id=>221).first_or_create
State.where(:id=>3216,:iso=>"LA",:name=>"Distrito Lautém",:country_id=>221).first_or_create
State.where(:id=>3217,:iso=>"CO",:name=>"Distrito Cova Lima",:country_id=>221).first_or_create
State.where(:id=>3218,:iso=>"ER",:name=>"Ermera",:country_id=>221).first_or_create
State.where(:id=>3219,:iso=>"DI",:name=>"Distrito Díli",:country_id=>221).first_or_create
State.where(:id=>3220,:iso=>"BO",:name=>"Bobonaro",:country_id=>221).first_or_create
State.where(:id=>3221,:iso=>"BA",:name=>"Distrito Bacau",:country_id=>221).first_or_create
State.where(:id=>3222,:iso=>"OE",:name=>"Oecussi",:country_id=>221).first_or_create
State.where(:id=>3223,:iso=>"AN",:name=>"Distrito Ainaro",:country_id=>221).first_or_create
State.where(:id=>3224,:iso=>"AL",:name=>"Distrito Aileu",:country_id=>221).first_or_create
State.where(:id=>3225,:iso=>"02",:name=>"Balkan",:country_id=>222).first_or_create
State.where(:id=>3226,:iso=>"01",:name=>"Ahal",:country_id=>222).first_or_create
State.where(:id=>3227,:iso=>"03",:name=>"Daşoguz",:country_id=>222).first_or_create
State.where(:id=>3228,:iso=>"05",:name=>"Mary",:country_id=>222).first_or_create
State.where(:id=>3229,:iso=>"04",:name=>"Lebap",:country_id=>222).first_or_create
State.where(:id=>3230,:iso=>"37",:name=>"Zaghwān",:country_id=>223).first_or_create
State.where(:id=>3231,:iso=>"36",:name=>"Tūnis",:country_id=>223).first_or_create
State.where(:id=>3232,:iso=>"35",:name=>"Tawzar",:country_id=>223).first_or_create
State.where(:id=>3233,:iso=>"34",:name=>"Taţāwīn",:country_id=>223).first_or_create
State.where(:id=>3234,:iso=>"23",:name=>"Sūsah",:country_id=>223).first_or_create
State.where(:id=>3235,:iso=>"22",:name=>"Silyānah",:country_id=>223).first_or_create
State.where(:id=>3236,:iso=>"33",:name=>"Sīdī Bū Zayd",:country_id=>223).first_or_create
State.where(:id=>3237,:iso=>"32",:name=>"Şafāqis",:country_id=>223).first_or_create
State.where(:id=>3238,:iso=>"31",:name=>"Qibilī",:country_id=>223).first_or_create
State.where(:id=>3239,:iso=>"30",:name=>"Qafşah",:country_id=>223).first_or_create
State.where(:id=>3240,:iso=>"29",:name=>"Qābis",:country_id=>223).first_or_create
State.where(:id=>3241,:iso=>"19",:name=>"Nābul",:country_id=>223).first_or_create
State.where(:id=>3242,:iso=>"28",:name=>"Madanīn",:country_id=>223).first_or_create
State.where(:id=>3243,:iso=>"06",:name=>"Jundūbah",:country_id=>223).first_or_create
State.where(:id=>3244,:iso=>"27",:name=>"Bin ‘Arūs",:country_id=>223).first_or_create
State.where(:id=>3245,:iso=>"18",:name=>"Banzart",:country_id=>223).first_or_create
State.where(:id=>3246,:iso=>"17",:name=>"Bājah",:country_id=>223).first_or_create
State.where(:id=>3247,:iso=>"38",:name=>"Ariana",:country_id=>223).first_or_create
State.where(:id=>3248,:iso=>"03",:name=>"Al Qayrawān",:country_id=>223).first_or_create
State.where(:id=>3249,:iso=>"02",:name=>"Al Qaşrayn",:country_id=>223).first_or_create
State.where(:id=>3250,:iso=>"16",:name=>"Al Munastīr",:country_id=>223).first_or_create
State.where(:id=>3251,:iso=>"15",:name=>"Al Mahdīyah",:country_id=>223).first_or_create
State.where(:id=>3252,:iso=>"14",:name=>"Kef",:country_id=>223).first_or_create
State.where(:id=>3253,:iso=>"39",:name=>"Gouvernorat de la Manouba",:country_id=>223).first_or_create
State.where(:id=>3254,:iso=>"03",:name=>"Vava`u",:country_id=>224).first_or_create
State.where(:id=>3255,:iso=>"02",:name=>"Tongatapu",:country_id=>224).first_or_create
State.where(:id=>3256,:iso=>"01",:name=>"Ha`apai",:country_id=>224).first_or_create
State.where(:id=>3257,:iso=>"EU",:name=>"Eua",:country_id=>224).first_or_create
State.where(:id=>3258,:iso=>"NI",:name=>"Niuas",:country_id=>224).first_or_create
State.where(:id=>3259,:iso=>"66",:name=>"Yozgat",:country_id=>225).first_or_create
State.where(:id=>3260,:iso=>"65",:name=>"Van",:country_id=>225).first_or_create
State.where(:id=>3261,:iso=>"64",:name=>"Uşak",:country_id=>225).first_or_create
State.where(:id=>3262,:iso=>"63",:name=>"Şanlıurfa",:country_id=>225).first_or_create
State.where(:id=>3263,:iso=>"62",:name=>"Tunceli",:country_id=>225).first_or_create
State.where(:id=>3264,:iso=>"58",:name=>"Sivas",:country_id=>225).first_or_create
State.where(:id=>3265,:iso=>"74",:name=>"Siirt",:country_id=>225).first_or_create
State.where(:id=>3266,:iso=>"73",:name=>"Niğde",:country_id=>225).first_or_create
State.where(:id=>3267,:iso=>"50",:name=>"Nevşehir",:country_id=>225).first_or_create
State.where(:id=>3268,:iso=>"49",:name=>"Muş",:country_id=>225).first_or_create
State.where(:id=>3269,:iso=>"48",:name=>"Muğla",:country_id=>225).first_or_create
State.where(:id=>3270,:iso=>"72",:name=>"Mardin",:country_id=>225).first_or_create
State.where(:id=>3271,:iso=>"45",:name=>"Manisa",:country_id=>225).first_or_create
State.where(:id=>3272,:iso=>"44",:name=>"Malatya",:country_id=>225).first_or_create
State.where(:id=>3273,:iso=>"43",:name=>"Kütahya",:country_id=>225).first_or_create
State.where(:id=>3274,:iso=>"71",:name=>"Konya",:country_id=>225).first_or_create
State.where(:id=>3275,:iso=>"40",:name=>"Kırşehir",:country_id=>225).first_or_create
State.where(:id=>3276,:iso=>"38",:name=>"Kayseri",:country_id=>225).first_or_create
State.where(:id=>3277,:iso=>"46",:name=>"Kahramanmaraş",:country_id=>225).first_or_create
State.where(:id=>3278,:iso=>"35",:name=>"İzmir",:country_id=>225).first_or_create
State.where(:id=>3279,:iso=>"33",:name=>"Isparta",:country_id=>225).first_or_create
State.where(:id=>3280,:iso=>"32",:name=>"Mersin",:country_id=>225).first_or_create
State.where(:id=>3281,:iso=>"31",:name=>"Hatay",:country_id=>225).first_or_create
State.where(:id=>3282,:iso=>"70",:name=>"Hakkâri",:country_id=>225).first_or_create
State.where(:id=>3283,:iso=>"83",:name=>"Gaziantep",:country_id=>225).first_or_create
State.where(:id=>3284,:iso=>"26",:name=>"Eskişehir",:country_id=>225).first_or_create
State.where(:id=>3285,:iso=>"25",:name=>"Erzurum",:country_id=>225).first_or_create
State.where(:id=>3286,:iso=>"24",:name=>"Erzincan",:country_id=>225).first_or_create
State.where(:id=>3287,:iso=>"23",:name=>"Elazığ",:country_id=>225).first_or_create
State.where(:id=>3288,:iso=>"21",:name=>"Diyarbakır",:country_id=>225).first_or_create
State.where(:id=>3289,:iso=>"20",:name=>"Denizli",:country_id=>225).first_or_create
State.where(:id=>3290,:iso=>"15",:name=>"Burdur",:country_id=>225).first_or_create
State.where(:id=>3291,:iso=>"13",:name=>"Bitlis",:country_id=>225).first_or_create
State.where(:id=>3292,:iso=>"12",:name=>"Bingöl",:country_id=>225).first_or_create
State.where(:id=>3293,:iso=>"11",:name=>"Bilecik",:country_id=>225).first_or_create
State.where(:id=>3294,:iso=>"10",:name=>"Balıkesir",:country_id=>225).first_or_create
State.where(:id=>3295,:iso=>"09",:name=>"Aydın",:country_id=>225).first_or_create
State.where(:id=>3296,:iso=>"07",:name=>"Antalya",:country_id=>225).first_or_create
State.where(:id=>3297,:iso=>"68",:name=>"Ankara",:country_id=>225).first_or_create
State.where(:id=>3298,:iso=>"04",:name=>"Ağrı",:country_id=>225).first_or_create
State.where(:id=>3299,:iso=>"03",:name=>"Afyonkarahisar",:country_id=>225).first_or_create
State.where(:id=>3300,:iso=>"02",:name=>"Adıyaman",:country_id=>225).first_or_create
State.where(:id=>3301,:iso=>"81",:name=>"Adana",:country_id=>225).first_or_create
State.where(:id=>3302,:iso=>"91",:name=>"Osmaniye",:country_id=>225).first_or_create
State.where(:id=>3303,:iso=>"88",:name=>"Iğdır",:country_id=>225).first_or_create
State.where(:id=>3304,:iso=>"75",:name=>"Aksaray",:country_id=>225).first_or_create
State.where(:id=>3305,:iso=>"76",:name=>"Batman",:country_id=>225).first_or_create
State.where(:id=>3306,:iso=>"78",:name=>"Karaman",:country_id=>225).first_or_create
State.where(:id=>3307,:iso=>"79",:name=>"Kırıkkale",:country_id=>225).first_or_create
State.where(:id=>3308,:iso=>"80",:name=>"Şırnak",:country_id=>225).first_or_create
State.where(:id=>3309,:iso=>"90",:name=>"Kilis",:country_id=>225).first_or_create
State.where(:id=>3310,:iso=>"85",:name=>"Zonguldak",:country_id=>225).first_or_create
State.where(:id=>3311,:iso=>"61",:name=>"Trabzon",:country_id=>225).first_or_create
State.where(:id=>3312,:iso=>"60",:name=>"Tokat",:country_id=>225).first_or_create
State.where(:id=>3313,:iso=>"59",:name=>"Tekirdağ",:country_id=>225).first_or_create
State.where(:id=>3314,:iso=>"57",:name=>"Sinop",:country_id=>225).first_or_create
State.where(:id=>3315,:iso=>"55",:name=>"Samsun",:country_id=>225).first_or_create
State.where(:id=>3316,:iso=>"54",:name=>"Sakarya",:country_id=>225).first_or_create
State.where(:id=>3317,:iso=>"53",:name=>"Rize",:country_id=>225).first_or_create
State.where(:id=>3318,:iso=>"52",:name=>"Ordu",:country_id=>225).first_or_create
State.where(:id=>3319,:iso=>"41",:name=>"Kocaeli",:country_id=>225).first_or_create
State.where(:id=>3320,:iso=>"39",:name=>"Kırklareli",:country_id=>225).first_or_create
State.where(:id=>3321,:iso=>"37",:name=>"Kastamonu",:country_id=>225).first_or_create
State.where(:id=>3322,:iso=>"84",:name=>"Kars",:country_id=>225).first_or_create
State.where(:id=>3323,:iso=>"34",:name=>"Istanbul",:country_id=>225).first_or_create
State.where(:id=>3324,:iso=>"69",:name=>"Gümüşhane",:country_id=>225).first_or_create
State.where(:id=>3325,:iso=>"28",:name=>"Giresun",:country_id=>225).first_or_create
State.where(:id=>3326,:iso=>"22",:name=>"Edirne",:country_id=>225).first_or_create
State.where(:id=>3327,:iso=>"19",:name=>"Çorum",:country_id=>225).first_or_create
State.where(:id=>3328,:iso=>"82",:name=>"Çankırı",:country_id=>225).first_or_create
State.where(:id=>3329,:iso=>"17",:name=>"Çanakkale",:country_id=>225).first_or_create
State.where(:id=>3330,:iso=>"16",:name=>"Bursa",:country_id=>225).first_or_create
State.where(:id=>3331,:iso=>"14",:name=>"Bolu",:country_id=>225).first_or_create
State.where(:id=>3332,:iso=>"08",:name=>"Artvin",:country_id=>225).first_or_create
State.where(:id=>3333,:iso=>"05",:name=>"Amasya",:country_id=>225).first_or_create
State.where(:id=>3334,:iso=>"87",:name=>"Bartın",:country_id=>225).first_or_create
State.where(:id=>3335,:iso=>"89",:name=>"Karabük",:country_id=>225).first_or_create
State.where(:id=>3336,:iso=>"92",:name=>"Yalova",:country_id=>225).first_or_create
State.where(:id=>3337,:iso=>"86",:name=>"Ardahan",:country_id=>225).first_or_create
State.where(:id=>3338,:iso=>"77",:name=>"Bayburt",:country_id=>225).first_or_create
State.where(:id=>3339,:iso=>"93",:name=>"Düzce",:country_id=>225).first_or_create
State.where(:id=>3340,:iso=>"11",:name=>"Tobago",:country_id=>226).first_or_create
State.where(:id=>3341,:iso=>"10",:name=>"San Fernando",:country_id=>226).first_or_create
State.where(:id=>3342,:iso=>"05",:name=>"Port-of-Spain",:country_id=>226).first_or_create
State.where(:id=>3343,:iso=>"03",:name=>"Mayaro",:country_id=>226).first_or_create
State.where(:id=>3344,:iso=>"01",:name=>"Arima",:country_id=>226).first_or_create
State.where(:id=>3345,:iso=>"CHA",:name=>"Chaguanas",:country_id=>226).first_or_create
State.where(:id=>3346,:iso=>"CTT",:name=>"Couva-Tabaquite-Talparo",:country_id=>226).first_or_create
State.where(:id=>3347,:iso=>"DMN",:name=>"Diego Martin",:country_id=>226).first_or_create
State.where(:id=>3348,:iso=>"ETO",:name=>"Eastern Tobago",:country_id=>226).first_or_create
State.where(:id=>3349,:iso=>"PED",:name=>"Penal/Debe",:country_id=>226).first_or_create
State.where(:id=>3350,:iso=>"PRT",:name=>"Princes Town",:country_id=>226).first_or_create
State.where(:id=>3351,:iso=>"PTF",:name=>"Point Fortin",:country_id=>226).first_or_create
State.where(:id=>3352,:iso=>"SGE",:name=>"Sangre Grande",:country_id=>226).first_or_create
State.where(:id=>3353,:iso=>"SIP",:name=>"Siparia",:country_id=>226).first_or_create
State.where(:id=>3354,:iso=>"SJL",:name=>"San Juan/Laventille",:country_id=>226).first_or_create
State.where(:id=>3355,:iso=>"TUP",:name=>"Tunapuna/Piarco",:country_id=>226).first_or_create
State.where(:id=>3356,:iso=>"NUI",:name=>"Nui",:country_id=>227).first_or_create
State.where(:id=>3357,:iso=>"NMA",:name=>"Nanumea",:country_id=>227).first_or_create
State.where(:id=>3358,:iso=>"FUN",:name=>"Funafuti",:country_id=>227).first_or_create
State.where(:id=>3359,:iso=>"NIT",:name=>"Niutao",:country_id=>227).first_or_create
State.where(:id=>3360,:iso=>"NMG",:name=>"Nanumanga",:country_id=>227).first_or_create
State.where(:id=>3361,:iso=>"VAI",:name=>"Vaitupu",:country_id=>227).first_or_create
State.where(:id=>3362,:iso=>"NKF",:name=>"Nukufetau",:country_id=>227).first_or_create
State.where(:id=>3363,:iso=>"NKL",:name=>"Nukulaelae",:country_id=>227).first_or_create
State.where(:id=>3364,:iso=>"01",:name=>"Fukien",:country_id=>228).first_or_create
State.where(:id=>3365,:iso=>"02",:name=>"Kaohsiung",:country_id=>228).first_or_create
State.where(:id=>3366,:iso=>"03",:name=>"Taipei",:country_id=>228).first_or_create
State.where(:id=>3367,:iso=>"04",:name=>"Taiwan",:country_id=>228).first_or_create
State.where(:id=>3368,:iso=>"19",:name=>"Kagera",:country_id=>229).first_or_create
State.where(:id=>3369,:iso=>"25",:name=>"Zanzibar Urban/West",:country_id=>229).first_or_create
State.where(:id=>3370,:iso=>"22",:name=>"Zanzibar North",:country_id=>229).first_or_create
State.where(:id=>3371,:iso=>"21",:name=>"Zanzibar Central/South",:country_id=>229).first_or_create
State.where(:id=>3372,:iso=>"18",:name=>"Tanga",:country_id=>229).first_or_create
State.where(:id=>3373,:iso=>"17",:name=>"Tabora",:country_id=>229).first_or_create
State.where(:id=>3374,:iso=>"16",:name=>"Singida",:country_id=>229).first_or_create
State.where(:id=>3375,:iso=>"15",:name=>"Shinyanga",:country_id=>229).first_or_create
State.where(:id=>3376,:iso=>"24",:name=>"Rukwa Region",:country_id=>229).first_or_create
State.where(:id=>3377,:iso=>"02",:name=>"Pwani",:country_id=>229).first_or_create
State.where(:id=>3378,:iso=>"20",:name=>"Pemba South",:country_id=>229).first_or_create
State.where(:id=>3379,:iso=>"13",:name=>"Pemba North",:country_id=>229).first_or_create
State.where(:id=>3380,:iso=>"12",:name=>"Mwanza",:country_id=>229).first_or_create
State.where(:id=>3381,:iso=>"10",:name=>"Morogoro Region",:country_id=>229).first_or_create
State.where(:id=>3382,:iso=>"09",:name=>"Mbeya",:country_id=>229).first_or_create
State.where(:id=>3383,:iso=>"08",:name=>"Mara",:country_id=>229).first_or_create
State.where(:id=>3384,:iso=>"07",:name=>"Lindi",:country_id=>229).first_or_create
State.where(:id=>3385,:iso=>"06",:name=>"Kilimanjaro",:country_id=>229).first_or_create
State.where(:id=>3386,:iso=>"05",:name=>"Kigoma",:country_id=>229).first_or_create
State.where(:id=>3387,:iso=>"04",:name=>"Iringa",:country_id=>229).first_or_create
State.where(:id=>3388,:iso=>"03",:name=>"Dodoma",:country_id=>229).first_or_create
State.where(:id=>3389,:iso=>"23",:name=>"Dar es Salaam",:country_id=>229).first_or_create
State.where(:id=>3390,:iso=>"26",:name=>"Arusha",:country_id=>229).first_or_create
State.where(:id=>3391,:iso=>"27",:name=>"Manyara",:country_id=>229).first_or_create
State.where(:id=>3392,:iso=>"14",:name=>"Ruvuma",:country_id=>229).first_or_create
State.where(:id=>3393,:iso=>"11",:name=>"Mtwara",:country_id=>229).first_or_create
State.where(:id=>3394,:iso=>"27",:name=>"Zhytomyrs'ka",:country_id=>230).first_or_create
State.where(:id=>3395,:iso=>"26",:name=>"Zaporiz'ka",:country_id=>230).first_or_create
State.where(:id=>3396,:iso=>"25",:name=>"Zakarpats'ka",:country_id=>230).first_or_create
State.where(:id=>3397,:iso=>"24",:name=>"Volyns'ka",:country_id=>230).first_or_create
State.where(:id=>3398,:iso=>"23",:name=>"Vinnyts'ka",:country_id=>230).first_or_create
State.where(:id=>3399,:iso=>"22",:name=>"Ternopil's'ka",:country_id=>230).first_or_create
State.where(:id=>3400,:iso=>"21",:name=>"Sumy",:country_id=>230).first_or_create
State.where(:id=>3401,:iso=>"20",:name=>"Misto Sevastopol",:country_id=>230).first_or_create
State.where(:id=>3402,:iso=>"19",:name=>"Rivnens'ka",:country_id=>230).first_or_create
State.where(:id=>3403,:iso=>"18",:name=>"Poltava",:country_id=>230).first_or_create
State.where(:id=>3404,:iso=>"17",:name=>"Odessa",:country_id=>230).first_or_create
State.where(:id=>3405,:iso=>"16",:name=>"Mykolayivs'ka",:country_id=>230).first_or_create
State.where(:id=>3406,:iso=>"15",:name=>"L'vivs'ka",:country_id=>230).first_or_create
State.where(:id=>3407,:iso=>"14",:name=>"Luhans'ka",:country_id=>230).first_or_create
State.where(:id=>3408,:iso=>"13",:name=>"Kiev",:country_id=>230).first_or_create
State.where(:id=>3409,:iso=>"12",:name=>"Misto Kyyiv",:country_id=>230).first_or_create
State.where(:id=>3410,:iso=>"11",:name=>"Avtonomna Respublika Krym",:country_id=>230).first_or_create
State.where(:id=>3411,:iso=>"10",:name=>"Kirovohrads'ka",:country_id=>230).first_or_create
State.where(:id=>3412,:iso=>"09",:name=>"Khmel'nyts'ka",:country_id=>230).first_or_create
State.where(:id=>3413,:iso=>"08",:name=>"Kherson",:country_id=>230).first_or_create
State.where(:id=>3414,:iso=>"07",:name=>"Kharkivs'ka",:country_id=>230).first_or_create
State.where(:id=>3415,:iso=>"06",:name=>"Ivano-Frankivs'ka",:country_id=>230).first_or_create
State.where(:id=>3416,:iso=>"05",:name=>"Donets'ka",:country_id=>230).first_or_create
State.where(:id=>3417,:iso=>"04",:name=>"Dnipropetrovska",:country_id=>230).first_or_create
State.where(:id=>3418,:iso=>"03",:name=>"Chernivets'ka",:country_id=>230).first_or_create
State.where(:id=>3419,:iso=>"02",:name=>"Chernihivs'ka",:country_id=>230).first_or_create
State.where(:id=>3420,:iso=>"01",:name=>"Cherkas'ka",:country_id=>230).first_or_create
State.where(:id=>3421,:iso=>"71",:name=>"Masaka",:country_id=>231).first_or_create
State.where(:id=>3422,:iso=>"89",:name=>"Mpigi",:country_id=>231).first_or_create
State.where(:id=>3423,:iso=>"E1",:name=>"Namutumba",:country_id=>231).first_or_create
State.where(:id=>3424,:iso=>"C3",:name=>"Bukedea",:country_id=>231).first_or_create
State.where(:id=>3425,:iso=>"26",:name=>"Apac",:country_id=>231).first_or_create
State.where(:id=>3426,:iso=>"77",:name=>"Arua",:country_id=>231).first_or_create
State.where(:id=>3427,:iso=>"28",:name=>"Bundibugyo",:country_id=>231).first_or_create
State.where(:id=>3428,:iso=>"29",:name=>"Bushenyi",:country_id=>231).first_or_create
State.where(:id=>3429,:iso=>"30",:name=>"Gulu",:country_id=>231).first_or_create
State.where(:id=>3430,:iso=>"31",:name=>"Hoima",:country_id=>231).first_or_create
State.where(:id=>3431,:iso=>"78",:name=>"Iganga",:country_id=>231).first_or_create
State.where(:id=>3432,:iso=>"33",:name=>"Jinja",:country_id=>231).first_or_create
State.where(:id=>3433,:iso=>"34",:name=>"Kabale",:country_id=>231).first_or_create
State.where(:id=>3434,:iso=>"79",:name=>"Kabarole",:country_id=>231).first_or_create
State.where(:id=>3435,:iso=>"36",:name=>"Kalangala",:country_id=>231).first_or_create
State.where(:id=>3436,:iso=>"37",:name=>"Kampala",:country_id=>231).first_or_create
State.where(:id=>3437,:iso=>"38",:name=>"Kamuli",:country_id=>231).first_or_create
State.where(:id=>3438,:iso=>"39",:name=>"Kapchorwa",:country_id=>231).first_or_create
State.where(:id=>3439,:iso=>"40",:name=>"Kasese",:country_id=>231).first_or_create
State.where(:id=>3440,:iso=>"41",:name=>"Kibale",:country_id=>231).first_or_create
State.where(:id=>3441,:iso=>"42",:name=>"Kiboga",:country_id=>231).first_or_create
State.where(:id=>3442,:iso=>"43",:name=>"Kisoro",:country_id=>231).first_or_create
State.where(:id=>3443,:iso=>"84",:name=>"Kitgum",:country_id=>231).first_or_create
State.where(:id=>3444,:iso=>"45",:name=>"Kotido",:country_id=>231).first_or_create
State.where(:id=>3445,:iso=>"46",:name=>"Kumi",:country_id=>231).first_or_create
State.where(:id=>3446,:iso=>"47",:name=>"Lira",:country_id=>231).first_or_create
State.where(:id=>3447,:iso=>"70",:name=>"Luwero",:country_id=>231).first_or_create
State.where(:id=>3448,:iso=>"50",:name=>"Masindi",:country_id=>231).first_or_create
State.where(:id=>3449,:iso=>"87",:name=>"Mbale",:country_id=>231).first_or_create
State.where(:id=>3450,:iso=>"52",:name=>"Mbarara",:country_id=>231).first_or_create
State.where(:id=>3451,:iso=>"88",:name=>"Moroto",:country_id=>231).first_or_create
State.where(:id=>3452,:iso=>"72",:name=>"Moyo",:country_id=>231).first_or_create
State.where(:id=>3453,:iso=>"56",:name=>"Mubende",:country_id=>231).first_or_create
State.where(:id=>3454,:iso=>"90",:name=>"Mukono",:country_id=>231).first_or_create
State.where(:id=>3455,:iso=>"58",:name=>"Nebbi",:country_id=>231).first_or_create
State.where(:id=>3456,:iso=>"59",:name=>"Ntungamo",:country_id=>231).first_or_create
State.where(:id=>3457,:iso=>"60",:name=>"Pallisa",:country_id=>231).first_or_create
State.where(:id=>3458,:iso=>"61",:name=>"Rakai",:country_id=>231).first_or_create
State.where(:id=>3459,:iso=>"93",:name=>"Rukungiri",:country_id=>231).first_or_create
State.where(:id=>3460,:iso=>"95",:name=>"Soroti",:country_id=>231).first_or_create
State.where(:id=>3461,:iso=>"76",:name=>"Tororo",:country_id=>231).first_or_create
State.where(:id=>3462,:iso=>"65",:name=>"Adjumani",:country_id=>231).first_or_create
State.where(:id=>3463,:iso=>"66",:name=>"Bugiri",:country_id=>231).first_or_create
State.where(:id=>3464,:iso=>"67",:name=>"Busia",:country_id=>231).first_or_create
State.where(:id=>3465,:iso=>"69",:name=>"Katakwi",:country_id=>231).first_or_create
State.where(:id=>3466,:iso=>"73",:name=>"Nakasongola",:country_id=>231).first_or_create
State.where(:id=>3467,:iso=>"74",:name=>"Sembabule",:country_id=>231).first_or_create
State.where(:id=>3468,:iso=>"80",:name=>"Kaberamaido",:country_id=>231).first_or_create
State.where(:id=>3469,:iso=>"81",:name=>"Kamwenge",:country_id=>231).first_or_create
State.where(:id=>3470,:iso=>"82",:name=>"Kanungu",:country_id=>231).first_or_create
State.where(:id=>3471,:iso=>"83",:name=>"Kayunga",:country_id=>231).first_or_create
State.where(:id=>3472,:iso=>"85",:name=>"Kyenjojo",:country_id=>231).first_or_create
State.where(:id=>3473,:iso=>"86",:name=>"Mayuge",:country_id=>231).first_or_create
State.where(:id=>3474,:iso=>"91",:name=>"Nakapiripirit",:country_id=>231).first_or_create
State.where(:id=>3475,:iso=>"92",:name=>"Pader",:country_id=>231).first_or_create
State.where(:id=>3476,:iso=>"94",:name=>"Sironko",:country_id=>231).first_or_create
State.where(:id=>3477,:iso=>"96",:name=>"Wakiso",:country_id=>231).first_or_create
State.where(:id=>3478,:iso=>"97",:name=>"Yumbe",:country_id=>231).first_or_create
State.where(:id=>3479,:iso=>"B6",:name=>"Abim",:country_id=>231).first_or_create
State.where(:id=>3480,:iso=>"B7",:name=>"Amolatar",:country_id=>231).first_or_create
State.where(:id=>3481,:iso=>"B8",:name=>"Amuria",:country_id=>231).first_or_create
State.where(:id=>3482,:iso=>"B9",:name=>"Amuru",:country_id=>231).first_or_create
State.where(:id=>3483,:iso=>"C1",:name=>"Budaka",:country_id=>231).first_or_create
State.where(:id=>3484,:iso=>"C2",:name=>"Bududa",:country_id=>231).first_or_create
State.where(:id=>3485,:iso=>"C5",:name=>"Bulisa",:country_id=>231).first_or_create
State.where(:id=>3486,:iso=>"C6",:name=>"Butaleja",:country_id=>231).first_or_create
State.where(:id=>3487,:iso=>"C7",:name=>"Dokolo",:country_id=>231).first_or_create
State.where(:id=>3488,:iso=>"C8",:name=>"Ibanda",:country_id=>231).first_or_create
State.where(:id=>3489,:iso=>"C9",:name=>"Isingiro",:country_id=>231).first_or_create
State.where(:id=>3490,:iso=>"D1",:name=>"Kaabong",:country_id=>231).first_or_create
State.where(:id=>3491,:iso=>"D2",:name=>"Kaliro",:country_id=>231).first_or_create
State.where(:id=>3492,:iso=>"D3",:name=>"Kiruhura",:country_id=>231).first_or_create
State.where(:id=>3493,:iso=>"D4",:name=>"Koboko",:country_id=>231).first_or_create
State.where(:id=>3494,:iso=>"D5",:name=>"Lyantonde",:country_id=>231).first_or_create
State.where(:id=>3495,:iso=>"D6",:name=>"Manafwa",:country_id=>231).first_or_create
State.where(:id=>3496,:iso=>"D7",:name=>"Maracha",:country_id=>231).first_or_create
State.where(:id=>3497,:iso=>"D8",:name=>"Mityana",:country_id=>231).first_or_create
State.where(:id=>3498,:iso=>"D9",:name=>"Nakaseke",:country_id=>231).first_or_create
State.where(:id=>3499,:iso=>"E2",:name=>"Oyam",:country_id=>231).first_or_create
State.where(:id=>3500,:iso=>"C4",:name=>"Bukwa",:country_id=>231).first_or_create
State.where(:id=>3501,:iso=>"450",:name=>"Wake Island",:country_id=>232).first_or_create
State.where(:id=>3502,:iso=>"350",:name=>"Navassa Island",:country_id=>232).first_or_create
State.where(:id=>3503,:iso=>"050",:name=>"Baker Island",:country_id=>232).first_or_create
State.where(:id=>3504,:iso=>"100",:name=>"Howland Island",:country_id=>232).first_or_create
State.where(:id=>3505,:iso=>"150",:name=>"Jarvis Island",:country_id=>232).first_or_create
State.where(:id=>3506,:iso=>"200",:name=>"Johnston Atoll",:country_id=>232).first_or_create
State.where(:id=>3507,:iso=>"250",:name=>"Kingman Reef",:country_id=>232).first_or_create
State.where(:id=>3508,:iso=>"300",:name=>"Midway Islands",:country_id=>232).first_or_create
State.where(:id=>3509,:iso=>"400",:name=>"Palmyra Atoll",:country_id=>232).first_or_create
State.where(:id=>3510,:iso=>"AR",:name=>"Arkansas",:country_id=>233).first_or_create
State.where(:id=>3511,:iso=>"DC",:name=>"Washington, D.C.",:country_id=>233).first_or_create
State.where(:id=>3512,:iso=>"DE",:name=>"Delaware",:country_id=>233).first_or_create
State.where(:id=>3513,:iso=>"FL",:name=>"Florida",:country_id=>233).first_or_create
State.where(:id=>3514,:iso=>"GA",:name=>"Georgia",:country_id=>233).first_or_create
State.where(:id=>3515,:iso=>"KS",:name=>"Kansas",:country_id=>233).first_or_create
State.where(:id=>3516,:iso=>"LA",:name=>"Louisiana",:country_id=>233).first_or_create
State.where(:id=>3517,:iso=>"MD",:name=>"Maryland",:country_id=>233).first_or_create
State.where(:id=>3518,:iso=>"MO",:name=>"Missouri",:country_id=>233).first_or_create
State.where(:id=>3519,:iso=>"MS",:name=>"Mississippi",:country_id=>233).first_or_create
State.where(:id=>3520,:iso=>"NC",:name=>"North Carolina",:country_id=>233).first_or_create
State.where(:id=>3521,:iso=>"OK",:name=>"Oklahoma",:country_id=>233).first_or_create
State.where(:id=>3522,:iso=>"SC",:name=>"South Carolina",:country_id=>233).first_or_create
State.where(:id=>3523,:iso=>"TN",:name=>"Tennessee",:country_id=>233).first_or_create
State.where(:id=>3524,:iso=>"TX",:name=>"Texas",:country_id=>233).first_or_create
State.where(:id=>3525,:iso=>"WV",:name=>"West Virginia",:country_id=>233).first_or_create
State.where(:id=>3526,:iso=>"AL",:name=>"Alabama",:country_id=>233).first_or_create
State.where(:id=>3527,:iso=>"CT",:name=>"Connecticut",:country_id=>233).first_or_create
State.where(:id=>3528,:iso=>"IA",:name=>"Iowa",:country_id=>233).first_or_create
State.where(:id=>3529,:iso=>"IL",:name=>"Illinois",:country_id=>233).first_or_create
State.where(:id=>3530,:iso=>"IN",:name=>"Indiana",:country_id=>233).first_or_create
State.where(:id=>3531,:iso=>"ME",:name=>"Maine",:country_id=>233).first_or_create
State.where(:id=>3532,:iso=>"MI",:name=>"Michigan",:country_id=>233).first_or_create
State.where(:id=>3533,:iso=>"MN",:name=>"Minnesota",:country_id=>233).first_or_create
State.where(:id=>3534,:iso=>"NE",:name=>"Nebraska",:country_id=>233).first_or_create
State.where(:id=>3535,:iso=>"NH",:name=>"New Hampshire",:country_id=>233).first_or_create
State.where(:id=>3536,:iso=>"NJ",:name=>"New Jersey",:country_id=>233).first_or_create
State.where(:id=>3537,:iso=>"NY",:name=>"New York",:country_id=>233).first_or_create
State.where(:id=>3538,:iso=>"OH",:name=>"Ohio",:country_id=>233).first_or_create
State.where(:id=>3539,:iso=>"RI",:name=>"Rhode Island",:country_id=>233).first_or_create
State.where(:id=>3540,:iso=>"VT",:name=>"Vermont",:country_id=>233).first_or_create
State.where(:id=>3541,:iso=>"WI",:name=>"Wisconsin",:country_id=>233).first_or_create
State.where(:id=>3542,:iso=>"CA",:name=>"California",:country_id=>233).first_or_create
State.where(:id=>3543,:iso=>"CO",:name=>"Colorado",:country_id=>233).first_or_create
State.where(:id=>3544,:iso=>"NM",:name=>"New Mexico",:country_id=>233).first_or_create
State.where(:id=>3545,:iso=>"NV",:name=>"Nevada",:country_id=>233).first_or_create
State.where(:id=>3546,:iso=>"UT",:name=>"Utah",:country_id=>233).first_or_create
State.where(:id=>3547,:iso=>"AZ",:name=>"Arizona",:country_id=>233).first_or_create
State.where(:id=>3548,:iso=>"ID",:name=>"Idaho",:country_id=>233).first_or_create
State.where(:id=>3549,:iso=>"MT",:name=>"Montana",:country_id=>233).first_or_create
State.where(:id=>3550,:iso=>"ND",:name=>"North Dakota",:country_id=>233).first_or_create
State.where(:id=>3551,:iso=>"OR",:name=>"Oregon",:country_id=>233).first_or_create
State.where(:id=>3552,:iso=>"SD",:name=>"South Dakota",:country_id=>233).first_or_create
State.where(:id=>3553,:iso=>"WA",:name=>"Washington",:country_id=>233).first_or_create
State.where(:id=>3554,:iso=>"WY",:name=>"Wyoming",:country_id=>233).first_or_create
State.where(:id=>3555,:iso=>"HI",:name=>"Hawaii",:country_id=>233).first_or_create
State.where(:id=>3556,:iso=>"AK",:name=>"Alaska",:country_id=>233).first_or_create
State.where(:id=>3557,:iso=>"KY",:name=>"Kentucky",:country_id=>233).first_or_create
State.where(:id=>3558,:iso=>"MA",:name=>"Massachusetts",:country_id=>233).first_or_create
State.where(:id=>3559,:iso=>"PA",:name=>"Pennsylvania",:country_id=>233).first_or_create
State.where(:id=>3560,:iso=>"VA",:name=>"Virginia",:country_id=>233).first_or_create
State.where(:id=>3561,:iso=>"19",:name=>"Treinta y Tres",:country_id=>234).first_or_create
State.where(:id=>3562,:iso=>"18",:name=>"Tacuarembó",:country_id=>234).first_or_create
State.where(:id=>3563,:iso=>"17",:name=>"Soriano",:country_id=>234).first_or_create
State.where(:id=>3564,:iso=>"16",:name=>"San José",:country_id=>234).first_or_create
State.where(:id=>3565,:iso=>"15",:name=>"Salto",:country_id=>234).first_or_create
State.where(:id=>3566,:iso=>"14",:name=>"Rocha",:country_id=>234).first_or_create
State.where(:id=>3567,:iso=>"13",:name=>"Rivera",:country_id=>234).first_or_create
State.where(:id=>3568,:iso=>"12",:name=>"Río Negro",:country_id=>234).first_or_create
State.where(:id=>3569,:iso=>"11",:name=>"Paysandú",:country_id=>234).first_or_create
State.where(:id=>3570,:iso=>"10",:name=>"Montevideo",:country_id=>234).first_or_create
State.where(:id=>3571,:iso=>"09",:name=>"Maldonado",:country_id=>234).first_or_create
State.where(:id=>3572,:iso=>"08",:name=>"Lavalleja",:country_id=>234).first_or_create
State.where(:id=>3573,:iso=>"07",:name=>"Florida",:country_id=>234).first_or_create
State.where(:id=>3574,:iso=>"06",:name=>"Flores",:country_id=>234).first_or_create
State.where(:id=>3575,:iso=>"05",:name=>"Durazno",:country_id=>234).first_or_create
State.where(:id=>3576,:iso=>"04",:name=>"Colonia",:country_id=>234).first_or_create
State.where(:id=>3577,:iso=>"03",:name=>"Cerro Largo",:country_id=>234).first_or_create
State.where(:id=>3578,:iso=>"02",:name=>"Canelones",:country_id=>234).first_or_create
State.where(:id=>3579,:iso=>"01",:name=>"Artigas",:country_id=>234).first_or_create
State.where(:id=>3580,:iso=>"09",:name=>"Karakalpakstan",:country_id=>235).first_or_create
State.where(:id=>3581,:iso=>"12",:name=>"Surxondaryo",:country_id=>235).first_or_create
State.where(:id=>3582,:iso=>"10",:name=>"Samarqand",:country_id=>235).first_or_create
State.where(:id=>3583,:iso=>"08",:name=>"Qashqadaryo",:country_id=>235).first_or_create
State.where(:id=>3584,:iso=>"02",:name=>"Buxoro",:country_id=>235).first_or_create
State.where(:id=>3585,:iso=>"14",:name=>"Toshkent",:country_id=>235).first_or_create
State.where(:id=>3586,:iso=>"13",:name=>"Toshkent Shahri",:country_id=>235).first_or_create
State.where(:id=>3587,:iso=>"16",:name=>"Sirdaryo",:country_id=>235).first_or_create
State.where(:id=>3588,:iso=>"07",:name=>"Navoiy",:country_id=>235).first_or_create
State.where(:id=>3589,:iso=>"06",:name=>"Namangan",:country_id=>235).first_or_create
State.where(:id=>3590,:iso=>"05",:name=>"Xorazm",:country_id=>235).first_or_create
State.where(:id=>3591,:iso=>"15",:name=>"Jizzax",:country_id=>235).first_or_create
State.where(:id=>3592,:iso=>"03",:name=>"Farg ona",:country_id=>235).first_or_create
State.where(:id=>3593,:iso=>"01",:name=>"Andijon",:country_id=>235).first_or_create
State.where(:id=>3594,:iso=>"05",:name=>"Saint Patrick",:country_id=>237).first_or_create
State.where(:id=>3595,:iso=>"04",:name=>"Saint George",:country_id=>237).first_or_create
State.where(:id=>3596,:iso=>"03",:name=>"Saint David",:country_id=>237).first_or_create
State.where(:id=>3597,:iso=>"02",:name=>"Saint Andrew",:country_id=>237).first_or_create
State.where(:id=>3598,:iso=>"06",:name=>"Grenadines",:country_id=>237).first_or_create
State.where(:id=>3599,:iso=>"01",:name=>"Charlotte",:country_id=>237).first_or_create
State.where(:id=>3600,:iso=>"23",:name=>"Zulia",:country_id=>238).first_or_create
State.where(:id=>3601,:iso=>"22",:name=>"Yaracuy",:country_id=>238).first_or_create
State.where(:id=>3602,:iso=>"21",:name=>"Trujillo",:country_id=>238).first_or_create
State.where(:id=>3603,:iso=>"20",:name=>"Táchira",:country_id=>238).first_or_create
State.where(:id=>3604,:iso=>"19",:name=>"Sucre",:country_id=>238).first_or_create
State.where(:id=>3605,:iso=>"18",:name=>"Portuguesa",:country_id=>238).first_or_create
State.where(:id=>3606,:iso=>"17",:name=>"Isla Margarita",:country_id=>238).first_or_create
State.where(:id=>3607,:iso=>"16",:name=>"Monagas",:country_id=>238).first_or_create
State.where(:id=>3608,:iso=>"15",:name=>"Miranda",:country_id=>238).first_or_create
State.where(:id=>3609,:iso=>"14",:name=>"Mérida",:country_id=>238).first_or_create
State.where(:id=>3610,:iso=>"13",:name=>"Lara",:country_id=>238).first_or_create
State.where(:id=>3611,:iso=>"12",:name=>"Guárico",:country_id=>238).first_or_create
State.where(:id=>3612,:iso=>"24",:name=>"Dependencias Federales",:country_id=>238).first_or_create
State.where(:id=>3613,:iso=>"25",:name=>"Distrito Capital",:country_id=>238).first_or_create
State.where(:id=>3614,:iso=>"11",:name=>"Falcón",:country_id=>238).first_or_create
State.where(:id=>3615,:iso=>"09",:name=>"Delta Amacuro",:country_id=>238).first_or_create
State.where(:id=>3616,:iso=>"08",:name=>"Cojedes",:country_id=>238).first_or_create
State.where(:id=>3617,:iso=>"07",:name=>"Carabobo",:country_id=>238).first_or_create
State.where(:id=>3618,:iso=>"06",:name=>"Bolívar",:country_id=>238).first_or_create
State.where(:id=>3619,:iso=>"05",:name=>"Barinas",:country_id=>238).first_or_create
State.where(:id=>3620,:iso=>"04",:name=>"Aragua",:country_id=>238).first_or_create
State.where(:id=>3621,:iso=>"03",:name=>"Apure",:country_id=>238).first_or_create
State.where(:id=>3622,:iso=>"02",:name=>"Anzoátegui",:country_id=>238).first_or_create
State.where(:id=>3623,:iso=>"01",:name=>"Amazonas",:country_id=>238).first_or_create
State.where(:id=>3624,:iso=>"26",:name=>"Vargas",:country_id=>238).first_or_create
State.where(:id=>3625,:iso=>"010",:name=>"Saint Croix Island",:country_id=>240).first_or_create
State.where(:id=>3626,:iso=>"020",:name=>"Saint John Island",:country_id=>240).first_or_create
State.where(:id=>3627,:iso=>"030",:name=>"Saint Thomas Island",:country_id=>240).first_or_create
State.where(:id=>3628,:iso=>"58",:name=>"Nghệ An",:country_id=>241).first_or_create
State.where(:id=>3629,:iso=>"59",:name=>"Ninh Bình",:country_id=>241).first_or_create
State.where(:id=>3630,:iso=>"60",:name=>"Ninh Thuận",:country_id=>241).first_or_create
State.where(:id=>3631,:iso=>"65",:name=>"Sóc Trăng",:country_id=>241).first_or_create
State.where(:id=>3632,:iso=>"67",:name=>"Trà Vinh",:country_id=>241).first_or_create
State.where(:id=>3633,:iso=>"68",:name=>"Tuyên Quang",:country_id=>241).first_or_create
State.where(:id=>3634,:iso=>"69",:name=>"Vĩnh Long",:country_id=>241).first_or_create
State.where(:id=>3635,:iso=>"70",:name=>"Yên Bái",:country_id=>241).first_or_create
State.where(:id=>3636,:iso=>"90",:name=>"Lào Cai",:country_id=>241).first_or_create
State.where(:id=>3637,:iso=>"37",:name=>"Tiền Giang",:country_id=>241).first_or_create
State.where(:id=>3638,:iso=>"66",:name=>"Thừa Thiên-Huế",:country_id=>241).first_or_create
State.where(:id=>3639,:iso=>"55",:name=>"Kon Tum",:country_id=>241).first_or_create
State.where(:id=>3640,:iso=>"34",:name=>"Thanh Hóa",:country_id=>241).first_or_create
State.where(:id=>3641,:iso=>"35",:name=>"Thái Bình",:country_id=>241).first_or_create
State.where(:id=>3642,:iso=>"33",:name=>"Tây Ninh",:country_id=>241).first_or_create
State.where(:id=>3643,:iso=>"32",:name=>"Sơn La",:country_id=>241).first_or_create
State.where(:id=>3644,:iso=>"64",:name=>"Quảng Trị",:country_id=>241).first_or_create
State.where(:id=>3645,:iso=>"30",:name=>"Quảng Ninh",:country_id=>241).first_or_create
State.where(:id=>3646,:iso=>"63",:name=>"Quảng Ngãi",:country_id=>241).first_or_create
State.where(:id=>3647,:iso=>"62",:name=>"Quảng Bình",:country_id=>241).first_or_create
State.where(:id=>3648,:iso=>"61",:name=>"Phú Yên",:country_id=>241).first_or_create
State.where(:id=>3649,:iso=>"53",:name=>"Hòa Bình",:country_id=>241).first_or_create
State.where(:id=>3650,:iso=>"24",:name=>"Long An",:country_id=>241).first_or_create
State.where(:id=>3651,:iso=>"39",:name=>"Lạng Sơn",:country_id=>241).first_or_create
State.where(:id=>3652,:iso=>"23",:name=>"Lâm Ðồng",:country_id=>241).first_or_create
State.where(:id=>3653,:iso=>"89",:name=>"Lai Châu",:country_id=>241).first_or_create
State.where(:id=>3654,:iso=>"21",:name=>"Kiến Giang",:country_id=>241).first_or_create
State.where(:id=>3655,:iso=>"54",:name=>"Khánh Hòa",:country_id=>241).first_or_create
State.where(:id=>3656,:iso=>"20",:name=>"Hồ Chí Minh",:country_id=>241).first_or_create
State.where(:id=>3657,:iso=>"52",:name=>"Hà Tĩnh",:country_id=>241).first_or_create
State.where(:id=>3658,:iso=>"51",:name=>"Hà Tây",:country_id=>241).first_or_create
State.where(:id=>3659,:iso=>"50",:name=>"Hà Giang",:country_id=>241).first_or_create
State.where(:id=>3660,:iso=>"49",:name=>"Gia Lai",:country_id=>241).first_or_create
State.where(:id=>3661,:iso=>"44",:name=>"Ha Nội",:country_id=>241).first_or_create
State.where(:id=>3662,:iso=>"87",:name=>"Cần Thơ",:country_id=>241).first_or_create
State.where(:id=>3663,:iso=>"13",:name=>"Hải Phòng",:country_id=>241).first_or_create
State.where(:id=>3664,:iso=>"47",:name=>"Bình Thuận",:country_id=>241).first_or_create
State.where(:id=>3665,:iso=>"09",:name=>"Ðồng Tháp",:country_id=>241).first_or_create
State.where(:id=>3666,:iso=>"43",:name=>"Ðồng Nai",:country_id=>241).first_or_create
State.where(:id=>3667,:iso=>"88",:name=>"Ðắc Lắk",:country_id=>241).first_or_create
State.where(:id=>3668,:iso=>"45",:name=>"Bà Rịa-Vũng Tàu",:country_id=>241).first_or_create
State.where(:id=>3669,:iso=>"05",:name=>"Cao Bằng",:country_id=>241).first_or_create
State.where(:id=>3670,:iso=>"46",:name=>"Bình Ðịnh",:country_id=>241).first_or_create
State.where(:id=>3671,:iso=>"03",:name=>"Bến Tre",:country_id=>241).first_or_create
State.where(:id=>3672,:iso=>"01",:name=>"An Giang",:country_id=>241).first_or_create
State.where(:id=>3673,:iso=>"91",:name=>"Ðắk Nông",:country_id=>241).first_or_create
State.where(:id=>3674,:iso=>"92",:name=>"Huyện Ðiện Biên",:country_id=>241).first_or_create
State.where(:id=>3675,:iso=>"74",:name=>"Bắc Ninh",:country_id=>241).first_or_create
State.where(:id=>3676,:iso=>"71",:name=>"Bắc Giang",:country_id=>241).first_or_create
State.where(:id=>3677,:iso=>"78",:name=>"Ðà Nẵng",:country_id=>241).first_or_create
State.where(:id=>3678,:iso=>"75",:name=>"Bình Dương",:country_id=>241).first_or_create
State.where(:id=>3679,:iso=>"76",:name=>"Bình Phước",:country_id=>241).first_or_create
State.where(:id=>3680,:iso=>"85",:name=>"Thái Nguyên",:country_id=>241).first_or_create
State.where(:id=>3681,:iso=>"84",:name=>"Quảng Nam",:country_id=>241).first_or_create
State.where(:id=>3682,:iso=>"83",:name=>"Phú Thọ",:country_id=>241).first_or_create
State.where(:id=>3683,:iso=>"82",:name=>"Nam Ðịnh",:country_id=>241).first_or_create
State.where(:id=>3684,:iso=>"80",:name=>"Hà Nam",:country_id=>241).first_or_create
State.where(:id=>3685,:iso=>"72",:name=>"Bắc Kạn",:country_id=>241).first_or_create
State.where(:id=>3686,:iso=>"73",:name=>"Bạc Liêu",:country_id=>241).first_or_create
State.where(:id=>3687,:iso=>"77",:name=>"Cà Mau",:country_id=>241).first_or_create
State.where(:id=>3688,:iso=>"79",:name=>"Hải Dương",:country_id=>241).first_or_create
State.where(:id=>3689,:iso=>"81",:name=>"Hưng Yên",:country_id=>241).first_or_create
State.where(:id=>3690,:iso=>"86",:name=>"Vĩnh Phúc",:country_id=>241).first_or_create
State.where(:id=>3691,:iso=>"93",:name=>"Hau Giang",:country_id=>241).first_or_create
State.where(:id=>3692,:iso=>"15",:name=>"Tafea",:country_id=>242).first_or_create
State.where(:id=>3693,:iso=>"13",:name=>"Sanma",:country_id=>242).first_or_create
State.where(:id=>3694,:iso=>"07",:name=>"Torba",:country_id=>242).first_or_create
State.where(:id=>3695,:iso=>"16",:name=>"Malampa",:country_id=>242).first_or_create
State.where(:id=>3696,:iso=>"17",:name=>"Penama",:country_id=>242).first_or_create
State.where(:id=>3697,:iso=>"18",:name=>"Shefa",:country_id=>242).first_or_create
State.where(:id=>3698,:iso=>"98613",:name=>"Circonscription d'Uvéa",:country_id=>243).first_or_create
State.where(:id=>3699,:iso=>"98612",:name=>"Circonscription de Sigavé",:country_id=>243).first_or_create
State.where(:id=>3700,:iso=>"98611",:name=>"Circonscription d'Alo",:country_id=>243).first_or_create
State.where(:id=>3701,:iso=>"11",:name=>"Vaisigano",:country_id=>244).first_or_create
State.where(:id=>3702,:iso=>"06",:name=>"Va`a-o-Fonoti",:country_id=>244).first_or_create
State.where(:id=>3703,:iso=>"10",:name=>"Tuamasaga",:country_id=>244).first_or_create
State.where(:id=>3704,:iso=>"09",:name=>"Satupa`itea",:country_id=>244).first_or_create
State.where(:id=>3705,:iso=>"08",:name=>"Palauli",:country_id=>244).first_or_create
State.where(:id=>3706,:iso=>"07",:name=>"Gagaifomauga",:country_id=>244).first_or_create
State.where(:id=>3707,:iso=>"05",:name=>"Gaga`emauga",:country_id=>244).first_or_create
State.where(:id=>3708,:iso=>"04",:name=>"Fa`asaleleaga",:country_id=>244).first_or_create
State.where(:id=>3709,:iso=>"03",:name=>"Atua",:country_id=>244).first_or_create
State.where(:id=>3710,:iso=>"02",:name=>"Aiga-i-le-Tai",:country_id=>244).first_or_create
State.where(:id=>3711,:iso=>"01",:name=>"A`ana",:country_id=>244).first_or_create
State.where(:id=>3712,:iso=>"28",:name=>"Opština Vučitrn",:country_id=>123).first_or_create
State.where(:id=>3713,:iso=>"27",:name=>"Komuna e Vitisë",:country_id=>123).first_or_create
State.where(:id=>3714,:iso=>"03",:name=>"Komuna e Ferizajt",:country_id=>123).first_or_create
State.where(:id=>3715,:iso=>"15",:name=>"Komuna e Mitrovicës",:country_id=>123).first_or_create
State.where(:id=>3716,:iso=>"26",:name=>"Komuna e Thërandës",:country_id=>123).first_or_create
State.where(:id=>3717,:iso=>"25",:name=>"Komuna e Skenderajt",:country_id=>123).first_or_create
State.where(:id=>3718,:iso=>"21",:name=>"Komuna e Prizrenit",:country_id=>123).first_or_create
State.where(:id=>3719,:iso=>"20",:name=>"Komuna e Prishtinës",:country_id=>123).first_or_create
State.where(:id=>3720,:iso=>"19",:name=>"Opština Podujevo",:country_id=>123).first_or_create
State.where(:id=>3721,:iso=>"18",:name=>"Komuna e Pejës",:country_id=>123).first_or_create
State.where(:id=>3722,:iso=>"22",:name=>"Komuna e Rahovecit",:country_id=>123).first_or_create
State.where(:id=>3723,:iso=>"13",:name=>"Komuna e Lipjanit",:country_id=>123).first_or_create
State.where(:id=>3724,:iso=>"12",:name=>"Komuna e Leposaviqit",:country_id=>123).first_or_create
State.where(:id=>3725,:iso=>"10",:name=>"Opština Kamenica",:country_id=>123).first_or_create
State.where(:id=>3726,:iso=>"11",:name=>"Opština Klina",:country_id=>123).first_or_create
State.where(:id=>3727,:iso=>"09",:name=>"Komuna e Kaçanikut",:country_id=>123).first_or_create
State.where(:id=>3728,:iso=>"08",:name=>"Komuna e Istogut",:country_id=>123).first_or_create
State.where(:id=>3729,:iso=>"06",:name=>"Komuna e Gjilanit",:country_id=>123).first_or_create
State.where(:id=>3730,:iso=>"07",:name=>"Komuna e Drenasit",:country_id=>123).first_or_create
State.where(:id=>3731,:iso=>"02",:name=>"Komuna e Dragashit",:country_id=>123).first_or_create
State.where(:id=>3732,:iso=>"01",:name=>"Komuna e Deçanit",:country_id=>123).first_or_create
State.where(:id=>3733,:iso=>"05",:name=>"Komuna e Gjakovës",:country_id=>123).first_or_create
State.where(:id=>3734,:iso=>"04",:name=>"Opština Kosovo Polje",:country_id=>123).first_or_create
State.where(:id=>3735,:iso=>"23",:name=>"Opština Štrpce",:country_id=>123).first_or_create
State.where(:id=>3736,:iso=>"24",:name=>"Komuna e Shtimes",:country_id=>123).first_or_create
State.where(:id=>3737,:iso=>"16",:name=>"Opština Novo Brdo",:country_id=>123).first_or_create
State.where(:id=>3738,:iso=>"17",:name=>"Komuna e Obiliqit",:country_id=>123).first_or_create
State.where(:id=>3739,:iso=>"14",:name=>"Komuna e Malisheves",:country_id=>123).first_or_create
State.where(:id=>3740,:iso=>"29",:name=>"Komuna e Zubin Potokut",:country_id=>123).first_or_create
State.where(:id=>3741,:iso=>"30",:name=>"Opština Zvečan",:country_id=>123).first_or_create
State.where(:id=>3742,:iso=>"25",:name=>"Muḩāfaz̧at Ta‘izz",:country_id=>245).first_or_create
State.where(:id=>3743,:iso=>"05",:name=>"Muḩāfaz̧at Shabwah",:country_id=>245).first_or_create
State.where(:id=>3744,:iso=>"16",:name=>"Sanaa",:country_id=>245).first_or_create
State.where(:id=>3745,:iso=>"15",:name=>"Muḩāfaz̧at Şa‘dah",:country_id=>245).first_or_create
State.where(:id=>3746,:iso=>"27",:name=>"Muḩāfaz̧at Raymah",:country_id=>245).first_or_create
State.where(:id=>3747,:iso=>"14",:name=>"Muḩāfaz̧at Ma’rib",:country_id=>245).first_or_create
State.where(:id=>3748,:iso=>"10",:name=>"Al Maḩwīt",:country_id=>245).first_or_create
State.where(:id=>3749,:iso=>"21",:name=>"Muḩāfaz̧at al Jawf",:country_id=>245).first_or_create
State.where(:id=>3750,:iso=>"04",:name=>"Ḩaḑramawt",:country_id=>245).first_or_create
State.where(:id=>3751,:iso=>"11",:name=>"Muḩāfaz̧at Dhamār",:country_id=>245).first_or_create
State.where(:id=>3752,:iso=>"03",:name=>"Al Mahrah",:country_id=>245).first_or_create
State.where(:id=>3753,:iso=>"08",:name=>"Al Ḩudaydah",:country_id=>245).first_or_create
State.where(:id=>3754,:iso=>"20",:name=>"Al Bayḑāʼ",:country_id=>245).first_or_create
State.where(:id=>3755,:iso=>"02",:name=>"Aden",:country_id=>245).first_or_create
State.where(:id=>3756,:iso=>"01",:name=>"Abyan",:country_id=>245).first_or_create
State.where(:id=>3757,:iso=>"18",:name=>"Muḩāfaz̧at aḑ Ḑāli‘",:country_id=>245).first_or_create
State.where(:id=>3758,:iso=>"19",:name=>"Omran",:country_id=>245).first_or_create
State.where(:id=>3759,:iso=>"22",:name=>"Muḩāfaz̧at Ḩajjah",:country_id=>245).first_or_create
State.where(:id=>3760,:iso=>"23",:name=>"Muḩāfaz̧at Ibb",:country_id=>245).first_or_create
State.where(:id=>3761,:iso=>"24",:name=>"Muḩāfaz̧at Laḩij",:country_id=>245).first_or_create
State.where(:id=>3762,:iso=>"26",:name=>"Amanat Al Asimah",:country_id=>245).first_or_create
State.where(:id=>3763,:iso=>"97601",:name=>"Acoua",:country_id=>246).first_or_create
State.where(:id=>3764,:iso=>"97602",:name=>"Bandraboua",:country_id=>246).first_or_create
State.where(:id=>3765,:iso=>"97603",:name=>"Bandrele",:country_id=>246).first_or_create
State.where(:id=>3766,:iso=>"97604",:name=>"Bouéni",:country_id=>246).first_or_create
State.where(:id=>3767,:iso=>"97605",:name=>"Chiconi",:country_id=>246).first_or_create
State.where(:id=>3768,:iso=>"97606",:name=>"Chirongui",:country_id=>246).first_or_create
State.where(:id=>3769,:iso=>"97607",:name=>"Dembeni",:country_id=>246).first_or_create
State.where(:id=>3770,:iso=>"97608",:name=>"Dzaoudzi",:country_id=>246).first_or_create
State.where(:id=>3771,:iso=>"97609",:name=>"Kani-Kéli",:country_id=>246).first_or_create
State.where(:id=>3772,:iso=>"97610",:name=>"Koungou",:country_id=>246).first_or_create
State.where(:id=>3773,:iso=>"97611",:name=>"Mamoudzou",:country_id=>246).first_or_create
State.where(:id=>3774,:iso=>"97612",:name=>"Mtsamboro",:country_id=>246).first_or_create
State.where(:id=>3775,:iso=>"97613",:name=>"M'Tsangamouji",:country_id=>246).first_or_create
State.where(:id=>3776,:iso=>"97614",:name=>"Ouangani",:country_id=>246).first_or_create
State.where(:id=>3777,:iso=>"97615",:name=>"Pamandzi",:country_id=>246).first_or_create
State.where(:id=>3778,:iso=>"97616",:name=>"Sada",:country_id=>246).first_or_create
State.where(:id=>3779,:iso=>"97617",:name=>"Tsingoni",:country_id=>246).first_or_create
State.where(:id=>3780,:iso=>"03",:name=>"Free State",:country_id=>247).first_or_create
State.where(:id=>3781,:iso=>"02",:name=>"KwaZulu-Natal",:country_id=>247).first_or_create
State.where(:id=>3782,:iso=>"05",:name=>"Eastern Cape",:country_id=>247).first_or_create
State.where(:id=>3783,:iso=>"06",:name=>"Gauteng",:country_id=>247).first_or_create
State.where(:id=>3784,:iso=>"07",:name=>"Mpumalanga",:country_id=>247).first_or_create
State.where(:id=>3785,:iso=>"08",:name=>"Northern Cape",:country_id=>247).first_or_create
State.where(:id=>3786,:iso=>"09",:name=>"Limpopo",:country_id=>247).first_or_create
State.where(:id=>3787,:iso=>"10",:name=>"North-West",:country_id=>247).first_or_create
State.where(:id=>3788,:iso=>"11",:name=>"Western Cape",:country_id=>247).first_or_create
State.where(:id=>3789,:iso=>"01",:name=>"Western",:country_id=>248).first_or_create
State.where(:id=>3790,:iso=>"07",:name=>"Southern",:country_id=>248).first_or_create
State.where(:id=>3791,:iso=>"06",:name=>"North-Western",:country_id=>248).first_or_create
State.where(:id=>3792,:iso=>"05",:name=>"Northern",:country_id=>248).first_or_create
State.where(:id=>3793,:iso=>"09",:name=>"Lusaka",:country_id=>248).first_or_create
State.where(:id=>3794,:iso=>"04",:name=>"Luapula",:country_id=>248).first_or_create
State.where(:id=>3795,:iso=>"03",:name=>"Eastern",:country_id=>248).first_or_create
State.where(:id=>3796,:iso=>"08",:name=>"Copperbelt",:country_id=>248).first_or_create
State.where(:id=>3797,:iso=>"02",:name=>"Central",:country_id=>248).first_or_create
State.where(:id=>3798,:iso=>"02",:name=>"Midlands",:country_id=>249).first_or_create
State.where(:id=>3799,:iso=>"07",:name=>"Matabeleland South",:country_id=>249).first_or_create
State.where(:id=>3800,:iso=>"06",:name=>"Matabeleland North",:country_id=>249).first_or_create
State.where(:id=>3801,:iso=>"08",:name=>"Masvingo",:country_id=>249).first_or_create
State.where(:id=>3802,:iso=>"05",:name=>"Mashonaland West Province",:country_id=>249).first_or_create
State.where(:id=>3803,:iso=>"04",:name=>"Mashonaland East",:country_id=>249).first_or_create
State.where(:id=>3804,:iso=>"03",:name=>"Mashonaland Central",:country_id=>249).first_or_create
State.where(:id=>3805,:iso=>"01",:name=>"Manicaland",:country_id=>249).first_or_create
State.where(:id=>3806,:iso=>"09",:name=>"Bulawayo",:country_id=>249).first_or_create
State.where(:id=>3807,:iso=>"10",:name=>"Harare Province",:country_id=>249).first_or_create




female_gender = Gender.find_by_sex('Female')
male_gender = Gender.find_by_sex('Male')
md_credential = Credential.find_by_name('MD')
do_credential = Credential.find_by_name('DO')
penn_state = State.find_by_name('Pennsylvania')
us_country = Country.find_by_name('United States')

row_iter = 0
max_row = 50
CSV.foreach("physician_input first_1000.csv") do |row|
  sleep(1.0/50.0)
  row_iter += 1
  if row_iter > max_row then break end
  if row_iter == 1 then next end
  csv_name = row[17].split(' ').map(&:downcase).map(&:capitalize).join(" ")
  csv_gender = row[16]
  csv_credential = row[7]
  csv_email = "doctor_" + row[0] + "@seeddoctor.com" # fake because email is required
  csv_street = row[8]
  csv_city = row[10] 
  csv_npi = row[0]
  csv_phone = row[14]

  if row[11] == "PA" then row_state = "Pennsylvania" end 
  if row[13] == "US" then row_country = "United States" end 
  puts "row #{row_iter}. gender: #{row[16]}, credential: #{row[7]}, state: #{row_state}, country: #{row_country}"
  puts "name: #{row[17]}, NPI: #{row[0]}, email: doctor_#{row[0]}@doctors.com, street: #{row[8]}, city: #{row[10]}"
  puts "\n"
  if csv_gender == "M" and csv_credential == "MD"
    # Physician.where(name: csv_name, gender: male_gender, credential: md_credential, email: csv_email, state: penn_state, country: us_country, street: csv_street, city: csv_city).first_or_create
    Physician.where(NPI: csv_npi, phone: csv_phone, name: csv_name, gender: male_gender, credential: md_credential, email: csv_email, state: penn_state, country: us_country, street: csv_street, city: csv_city).first_or_create
    puts "should see M MD, #{csv_gender} #{csv_credential}"
  
  elsif csv_gender == "M" and csv_credential == "DO"
    puts "should see M DO, #{csv_gender} #{csv_credential}"
    # Physician.where(name: csv_name, gender: male_gender, credential: do_credential, email: csv_email, state: penn_state, country: us_country, street: csv_street, city: csv_city).first_or_create
    Physician.where(NPI: csv_npi, phone: csv_phone, name: csv_name, gender: male_gender, credential: do_credential, email: csv_email, state: penn_state, country: us_country, street: csv_street, city: csv_city).first_or_create
  
  elsif csv_gender == "F" and csv_credential == "MD"
    puts "should see F MD, #{csv_gender} #{csv_credential}"
    Physician.where(NPI: csv_npi, phone: csv_phone, name: csv_name, gender: female_gender, credential: md_credential, email: csv_email, state: penn_state, country: us_country, street: csv_street, city: csv_city).first_or_create

  elsif csv_gender == "F" and csv_credential == "DO"
    Physician.where(NPI: csv_npi, phone: csv_phone, name: csv_name, gender: female_gender, credential: do_credential, email: csv_email, state: penn_state, country: us_country, street: csv_street, city: csv_city).first_or_create
    # Physician.where(NPI: csv_npi, phone: csv_phone, name: csv_name, gender: female_gender, credential: do_credential, email: csv_email, state: penn_state, country: us_country, street: csv_street, city: csv_city).first_or_create

  end 
end
