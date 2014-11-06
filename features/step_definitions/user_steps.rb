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
When(/^I complete the email and password fields$/) do
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

Then(/^I should see password error$/) do
  expect(page).to have_content('error')
  expect(page).to have_css('div#error_explanation')
end



########################################################################################################################

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

When(/^I fill the new password fields$/) do
  fill_in :password, :with => @password
  fill_in :user_password_confirmation, :with => @password
end

When(/^I fill the current password field and update$/) do
  @password = '56781234'
  fill_in :user_current_password, :with => @password
  click_button 'Update'
end

Then(/^I should see account successfully updated$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I don't fill the current password field and update$/) do
  click_button 'Update'
end

Then(/^I should see account not updated error$/) do
  pending # express the regexp above with the code you wish you had
end