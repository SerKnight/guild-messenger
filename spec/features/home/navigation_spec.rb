feature "Navigation links", :js => true do
 
  scenario "view navigation links logged out" do
    visit root_path
    expect(page).to have_content "Sign in"
    expect(page).to have_content "Sign up"
  end

  describe "once logged in" do
    before(:each) do
      sign_up_with(Faker::Name.first_name, "test@example.com", "please123", "please123")
    end

    scenario 'can visit all classrooms' do
      visit classrooms_path
      expect(page).to have_content "Joined Classrooms"
      expect(page).to have_content "Other Classrooms"
    end

    scenario 'can view the account page' do
      visit edit_user_registration_path
      expect(page).to have_content "Edit User"
      expect(page).to have_content "Cancel Account"
    end
  end
end
