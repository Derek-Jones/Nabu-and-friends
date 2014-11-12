require 'rails_helper'

describe "Create a Bump" do

	let!(:new_user){User.create(name:"First Test Name", email:"first_test_email@email.com", razer_id:"eHz4MfYkXPKabfgvDNGBDCXRpT3vbQtF", steam_id:"eHz4MfYkXPKabfgvDNGBDCXRpT3vbzzz")}
	let!(:new_bump){new_user.bumps.create(contact:"eHz4MfYkXPKabfgvDN2knj7hgT3vbzzz", time:Time.now)}

	it "should have a bump for the new user in the database" do
		expect(new_user.bumps.length).to eq(1)
	end

	it "should be able to find a create bump link on the index page" do
		visit "/users"
		within "#user_1" do
			click_link "Make Bump"			
		end
		expect(page).to have_content("New Bump")
	end

	it "should have a form to fill in the new bump content" do
		visit "/users"
		within "#user_1" do
			click_link "Make Bump"			
		end
		expect(page).to have_content("Contact ID")
		expect(page).to have_content("Contact Time")
	end		
end