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

When(/^I fill sign in fields$/) do
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
  fill_in :name, :with => "Pedro"
  fill_in :email, :with => "pedrodhers@hotmail.com"
  click_button 'Sign up'
end

Then(/^I should see an error on the user creation$/) do
  expect(page).to have_content('error')                     # Expect is rpec
  expect(page).to have_content('blank')
  #assert page.has_css?('div.error_explanation')
  expect(page).to have_css('div#error_explanation')
end