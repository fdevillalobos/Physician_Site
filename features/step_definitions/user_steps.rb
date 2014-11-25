Given(/^I'm on the (.*) page$/) do |page|
  visit eval("new_user_#{page}_path")
end


########################################################################################################################

When(/^I create a new user$/) do
  fill_in :name, :with => "Juan"
  fill_in :email, :with => "juan86@hotmail.com"
  fill_in :password, :with => "holahola"
  fill_in :user_password_confirmation, :with => "holahola"
  click_button 'Sign up'
end

Then(/^should be redirected to my dashboard$/) do
  #assert page.has_content?('successfully')
  expect(page).to have_content('successfully')
end


########################################################################################################################
Given(/^I have an existing user$/) do
  @password = '22082208'
  @user = User.create(:email => 'franciscodevillalobos@gmail.com', :password => @password, :password_confirmation => @password)
end

When(/^I fill sign in fields|I sign in with my credentials$/) do
  fill_in :user_email, :with => @user.email
  fill_in :user_password, :with => @password
  click_button 'Sign in'
end

Then(/^I should see signed in message$/) do
  #assert page.has_css?('body')
  #puts page.has_content?
  expect(page).to have_content('Signed in successfully')
end


########################################################################################################################
When(/^I complete only the email and password fields$/) do
  fill_in :email, :with => "pedrodhers@hotmail.com"
  fill_in :password, :with => "holahola"
  click_button 'Sign up'
end

Then(/^I should see an error on the user creation$/) do
  #expect(page).to have_content('error')                     # Expect is rpec
  #expect(page).to have_content('blank')
  #assert page.has_css?('div.error_explanation')
  expect(page).to have_css('div#error_explanation')
end

When(/^I complete the email and password fields with less than eight chars$/) do
  fill_in :email, :with => "pedrodhers2@hotmail.com"
  fill_in :password, :with => "short"
  fill_in :user_password_confirmation, :with => "short"
  click_button 'Sign up'
end

Then(/^I should see password error|I should see account not updated error$/) do
  expect(page).to have_content('error')
  expect(page).to have_css('div#error_explanation')
end



########################################################################################################################

# the below was used for visitor.feature but that was deleted, the below might be used in the future

Given(/^I'm not a user of the site$/) do
end

Given(/^I'm on the root$/) do
  visit root_path
end

When(/^I try to access the user list$/) do
  click_link 'Users'
end

Then(/^I should be redirected to login page$/) do
  expect(current_path).to eq(new_user_session_path)
end


########################################################################################################################
Given(/^I'm on the edit user webpage$/) do
  visit edit_user_registration_path
end
# can we incorporate this into the "I'm on the ___ page" step?

When(/^I fill the new password fields$/) do
  @new_password = '56781234'
  fill_in :user_password, :with => @new_password
  fill_in :user_password_confirmation, :with => @new_password
end

When(/^I fill the current password field and update$/) do
  fill_in :user_current_password, :with => @password
  click_button 'Update'
end

#Then(/^I should see account successfully updated$/) do
#  pending # express the regexp above with the code you wish you had
#end

When(/^I don't fill the current password field and update$/) do
  click_button 'Update'
end

#Then(/^I should see account not updated error$/) do
#  pending # express the regexp above with the code you wish you had
#end

########################################################################################################################

When(/^I fill in the name$/) do
  fill_in :user_name, :with => "John"
end

When(/^I fill in the email$/) do
  fill_in :user_email, :with => "john86@hotmail.com"
end

########################################################################################################################
When(/^I cancel my account$/) do
  click_button 'Cancel my account'
end

Then(/^I should see account successfully cancelled|I should see account successfully updated$/) do
  expect(page).to have_content('successfully')
end

########################################################################################################################

Given(/^doctors are in the database$/) do
  @gender_m = Gender.create(:sex => "male")
  @gender_f = Gender.create(:sex => "female")
  @credential = Credential.create(:name => "MD")
  @physician = Physician.create(:name => 'Martin Bohnenkamp', :email => 'martin.bohnenkamp@uphs.upenn.edu')
  @physician.credential, @physician.gender = @credential, @gender_m
  @physician.save!

  @physician2 = Physician.create(:name => 'Stephanie Ewing', :email => 'fakeemail@fakehost.com')
  @physician2.credential, @physician2.gender = @credential, @gender_f
  @physician2.save!
end

Given(/^the doctors database has many doctors$/) do
  pending
end

Given(/^I'm on the doctor search webpage$/) do
  visit physicians_path
end

When(/^I search for a doctor who exists in the database$/) do
  fill_in :search, :with => "bohnenkamp" # id for search field is  "search"
  click_button 'Search' # button's value is "Search"
end

When(/^I search for a doctor who doesn't exist in the database$/) do
  fill_in :search, :with => "abcdefghijklmnopqrstuvwxyz" # id for search field is  "search"
  click_button 'Search' # button's value is "Search"
end

When(/^I search with search terms that will give me many results$/) do
  #pending
end

Then(/^I should see a list of doctors$/) do
  expect(page).to have_content(/Your search returned (.*) results/)
  expect(page).to have_no_content(/Your search returned 0 results/)
  # the two above could be combined into something that makes sure $1 != '0' in the first statement
end

Then(/^I should not get any results$/) do
  expect(page).to have_content(/Your search returned 0 results/)
  # the two above could be combined into something that makes sure $1 != '0' in the first statement
end



Then(/^I should see a table of the top (\d+) quality doctors$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a map with the doctors' locations$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a form whose default values equal my search parameters$/) do
  pending # express the regexp above with the code you wish you had
end



Given(/^I've searched for a doctor$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I sort the doctors by distance ascending$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see the doctors table reorganized by distance ascending$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I sort the doctors by rating descending$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see the doctors table reorganized by rating descending$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I sort the doctors by last name ascending$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see the doctors table reorganized by last name ascending$/) do
  pending # express the regexp above with the code you wish you had
end




########################################################################################################################

Given(/^I have a Facebook account$/) do
  pending
end

Given(/^I'm currently on the Facebook authentication webpage$/) do
  pending
  # the line below should work in theory but think Capybara is not well-hooked into external sites e.g. Facebook
  # visit user_omniauth_authorize_path
end

Then(/^I should see successful Facebook authentication message$/) do
  pending # express the regexp above with the code you wish you had
end


