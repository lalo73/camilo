Given(/^salgo del sistema$/) do
  visit "/logout"
end

Then(/^NO veo notificacion en la pagina de inicio$/) do
end

Then(/^voy a la pagina de eventos$/) do
  visit "/events/my"
end

Given(/^lleno el campo "(.*?)" con today$/) do |arg1|
  fill_in(arg1, :with => Date.today)
end

Given(/^me logueo$/) do
  visit "/login"
  fill_in("name", :with => "Usuario")
  fill_in("email", :with => "Usuario@someplace.com")
  click_button "submit"
end