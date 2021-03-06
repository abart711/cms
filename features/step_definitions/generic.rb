Then /^I should see "([^"]*)"$/ do |arg1|
  page.should have_content(arg1)
end

Then /^I should see a link to "([^"]*)"$/ do |arg1|
  page.should have_link(arg1)
end

Then /^I should see a link, "([^"]*)" to "([^"]*)"$/ do |arg1, arg2|
  page.should have_link(arg1, :href => arg2)
end

Then /^I open the page/ do
  save_and_open_page
end

Then /^the URL should contain "([^"]*)"$/ do |arg1|
  page.current_url.should include(arg1)
end

When /^I click on "([^"]*)"$/ do |arg1|
  page.click_link_or_button arg1
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  page.fill_in arg1, :with => arg2
end
