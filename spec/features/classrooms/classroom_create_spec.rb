include Warden::Test::Helpers
Warden.test_mode!

feature "Classroom create", :js => true do
  let(:user){FactoryGirl.create(:user)}

  before do
    login_as(user, scope: :user)
    visit classrooms_path
  end

  after(:each) do
    Warden.test_reset!
  end

  scenario 'User must be logged in' do
    click_link "Sign out"
    visit root_path
    expect(page).to have_content('You need to sign in or sign up before continuing')
  end

  scenario "user creates classroom successfully" do
    click_link "Create new classroom"
    fill_in "classroom[name]", with: "Tech Talks"
    fill_in "classroom[description]", with: "Tech Talks desc."
    click_button "Create"

    expect(page).to have_content "classroom created successfully."
    expect(page).to have_content "Tech Talks"
  end

  scenario "user sees form validation when required form fields are not filled" do
    click_link "Create new classroom"
    click_button "Create"
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Description can't be blank"
  end
end
