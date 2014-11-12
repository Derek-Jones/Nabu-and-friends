require 'rails_helper'
require 'securerandom'

describe "Create User Spec" do

	it "Should navigate to create user page" do
		visit "/users"
		click_link "New User"
		expect(page).to have_content("New user")
	end	

	it "should create a new user when the form is filled" do
		visit "/users"
		click_link "New User"
		expect(page).to have_content("New user")
		fill_in "Name", with: "The first name"
		fill_in "Email", with: "firstname@email.com"
		fill_in "Razer", with: SecureRandom.hex
		fill_in "Steam", with: SecureRandom.hex
		click_button "Create User"
		expect(page).to have_content("User was successfully created")
	end	


	it "should not create a new user when the form is filled without a steam id" do
		visit "/users"
		click_link "New User"
		expect(page).to have_content("New user")
		fill_in "Name", with: "The first name"
		fill_in "Email", with: "firstname@email.com"
		fill_in "Razer", with: SecureRandom.hex
		click_button "Create User"
		expect(page).to have_content("error")
	end 

	it "should not create a new user when the form is filled without a razer id" do
		visit "/users"
		click_link "New User"
		expect(page).to have_content("New user")
		fill_in "Name", with: "The first name"
		fill_in "Email", with: "firstname@email.com"
		fill_in "Steam", with: SecureRandom.hex
		click_button "Create User"
		expect(page).to have_content("error")
	end 





	
end