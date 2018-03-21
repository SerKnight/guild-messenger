include Warden::Test::Helpers
Warden.test_mode!

feature "Message Sonversation", :js => true do
  let(:user){FactoryGirl.create(:user)}
  let(:classroom){FactoryGirl.create(:classroom, name: "Guild classroom", description: 'Guild classroom Desc', user: user)}

  after(:each) do
    Warden.test_reset!
  end

  scenario "user sends message successfully" do
    login_as(user, scope: :user)
    visit classroom_path(classroom)
    message = "Hello there"
    expect(page).to_not have_content message
    fill_in "message[content]", with: message
    find('#message_content').native.send_keys(:return)
    expect(page).to have_content message
  end

  scenario "user sends / receives a message successfully ( via action cable )" do
    login_as(user, scope: :user)
    visit classroom_path(classroom)
    message = "Oh wasssup websockets!"
    expect(page).to_not have_content message

    new_window = open_new_window
    switch_to_window new_window
    visit classroom_path(classroom)

    within_window new_window do
      fill_in "message[content]", with: message
      find('#message_content').native.send_keys(:return)
      expect(page).to have_content message
    end

    switch_to_window(windows.first)
    expect(page).to have_text(message)   
  end
end

