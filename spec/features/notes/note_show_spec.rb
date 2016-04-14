include Warden::Test::Helpers
Warden.test_mode!

feature 'Note show page', :devise do

  build_notes

  after(:each) do
    Warden.test_reset!
  end



  # # Scenario: User sees own profile
  # #   Given I am signed in
  # #   When I visit the user profile page
  # #   Then I see my own email address
  # scenario 'user sees own profile' do
  #   user = FactoryGirl.create(:user)
  #   login_as(user, :scope => :user)
  #   visit user_path(user)
  #   expect(page).to have_content 'User'
  #   expect(page).to have_content user.email
  # end

  # # Scenario: User cannot see another user's profile
  # #   Given I am signed in
  # #   When I visit another user's profile
  # #   Then I see an 'access denied' message
  # scenario "user cannot see another user's profile" do
  #   me = FactoryGirl.create(:user)
  #   other = FactoryGirl.create(:user, email: 'other@example.com')
  #   login_as(me, :scope => :user)
  #   Capybara.current_session.driver.header 'Referer', root_path
  #   visit user_path(other)
  #   expect(page).to have_content 'Access denied.'
  # end

end
