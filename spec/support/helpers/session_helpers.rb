module Features
  module SessionHelpers
    def sign_up_with(first_name, email, password, confirmation)
      visit new_user_registration_path
      fill_in 'Name', with: first_name
      fill_in 'Email', with: email
      fill_in 'Password', with: password
      fill_in 'Password confirmation', :with => confirmation
      click_button 'Sign up'
    end

    def signin(email, password)
      visit new_user_session_path
      fill_in 'Email', with: email
      fill_in 'Password', with: password
      click_button 'Sign in'
    end
  end
end
