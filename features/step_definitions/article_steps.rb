Given /^I have articles titled (.+)$/ do |titles|
  # titles.split(', ').each do |title|
  #   Article.create!(:title => title)
  # end
  p "ddddddddddddddddddd"
  p titles
  p "step 1"
end

Given /^I have no articles$/ do
  # Article.delete_all
  p "deleted"
end

Then /^I should have ([0-9]+) articles?$/ do |count|
	# 2.should == 2
	p "ssssssssssssssss"
	p count
  # Article.count.should == count.to_i
end

When(/^I go to the list of articles$/) do
  # pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
	p arg1
  # pending # express the regexp above with the code you wish you had
end

Given(/^I am on the list of articles$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I follow "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When(/^I press "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
