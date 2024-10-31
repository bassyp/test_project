require 'rails_helper'
# require 'webdrivers/chromedriver'
#require 'webdrivers/geckodriver'
#require 'webdrivers/iedriver'
#require 'webdrivers/edgedriver'

# This drivers work
# :selenium => Selenium driving Firefox
# :selenium_headless => Selenium driving Firefox in a headless configuration
# This drivers doesn't work
# :selenium_chrome => Selenium driving Chrome
# :selenium_chrome_headless => Selenium driving Chrome in a headless configuration
RSpec.describe User, driver: :selenium_headless, js: true do
describe 'the create posts process' do
    it 'should create a post' do
      # visit '/users/sign_in'
      visit 'users/sign_up'

      fill_in 'user_email', with: 'robert.rassau@ewe.de'
      fill_in 'user_password', with: 'test'
      fill_in 'user_password_confirmation', with: 'test2'

      click_button 'Register'
      expect(page).to have_content 'Password is too short'
    end
  end
end