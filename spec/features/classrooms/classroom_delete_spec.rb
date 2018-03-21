include Warden::Test::Helpers
Warden.test_mode!

feature "Classroom delete", :js => true do

  before do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    FactoryGirl.create(:classroom, name: "Classroom Name", description: 'Classroom Name Desc.', user: user)
    visit classrooms_path
  end

  after(:each) do
    Warden.test_reset!
  end

  scenario "user deletes classroom successfully" do
    expect(page).to have_content "Classroom Name"
    click_link "Delete"
    page.driver.browser.switch_to.alert.accept
    expect(page).to_not have_content 'Classroom Name'
  end


  scenario "user cannot delete other user's classrooms" do
    logout(:user)
    another_user = FactoryGirl.create(:user)
    login_as(another_user, scope: :user)
    visit classrooms_path
    expect(page).to have_content "Classroom Name"
    expect(page).to_not have_content "Delete"
  end
end
