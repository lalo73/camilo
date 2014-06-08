require 'date'

Given(/^no hay eventos$/) do
  Rating.all.destroy
  Event.all.destroy
end

Given(/^estoy logueado$/) do
  visit "/login"
  fill_in("name", :with => "cucumber_user")
  fill_in("email", :with => "cucumber_user@someplace.com")
  click_button "submit" 
end

Given(/^estoy en la pagina de creacion de eventos "(.*?)"$/) do |arg1|
  visit path_to(arg1)
end

Given(/^lleno el campo "(.*?)" con "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

Given(/^lleno el campo "(.*?)" con tomorrow$/) do |arg1|
  fill_in(arg1, :with => Date.today+1) 
end

Given(/^lleno el campo "(.*?)" con (\d+)$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When(/^preciono el boton "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Given(/^dejo vacio el campo event\[max\]$/) do
  
end

Given(/^lleno el campo "(.*?)" con diez$/) do |arg1|
  fill_in(arg1, :with => 'diez')
end

Given(/^lleno el campo "(.*?)" con \-(\d+)$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2) 
end