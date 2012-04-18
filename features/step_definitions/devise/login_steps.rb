Given /^I am a register user with user email "([^"]*)" and password "([^"]*)"$/ do |email, pass|
  FactoryGirl.create(:user, :name => "shripad", :email => email, :password => pass, :password_confirmation => pass)
end
