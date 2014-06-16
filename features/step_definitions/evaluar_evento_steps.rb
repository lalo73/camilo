
Given(/^existe el evento "(.*?)" con cantidad de participantes (\d+)$/) do |arg1, arg2|
  e = Event.new
  e.name = arg1
  e.date = Date.today
  e.max = arg2
  e.account = Account.first
  e.save
end

Given(/^quiero evaluar "(.*?)"$/) do |arg1|
  event = Event.find_by_name(arg1)
  visit "/events/rate/#{event.slug}"
end

#When(/^evaluo$/) do
  #click_button(happyButton)
#end
