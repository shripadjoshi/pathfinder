Given /^I am on the homepage$/ do
  visit root_url
end

When /^I follow "([^"]*)" link$/ do |link|
  click_link link
end

Then /^I should see "([^"]*)"$/ do |text|
  assert page.has_content?(text)
end

Then /^I fill in "([^"]*)" with "([^"]*)"$/ do |text, value|
  fill_in(text, :with => value)
end

When /^I press "([^"]*)"$/ do |button|
  click_button button
end

Then /^there is a user called "([^"]*)"$/ do |name|
  FactoryGirl.create(:user, :name => name, :email => "shripad@gmail.com", :password => "shripad", :password_confirmation => "shripad")
end

Then /^there is a user email called "([^"]*)"$/ do |email|
  FactoryGirl.create(:user, :name => "Shripad", :email => email, :password => "shripad", :password_confirmation => "shripad")
end