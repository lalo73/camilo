Given(/^existe el evento "(.*?)" con tag "(.*?)"$/) do |arg1, arg2|
  e = Event.new
  e.name = arg1
  e.date = Date.today
  e.max = 10
  e.account = Account.first
  e.tag = arg2
  e.save
end

Given(/^estoy en la pagina de mis eventos$/) do
  visit "/events/my"
end

When(/^voy a la pagina de comparacion del tag "(.*?)"$/) do |arg1|
  visit "/events/#{arg1}/comparacion"
end
