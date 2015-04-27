require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Wordcount Integration Testing', {:type => :feature}) do
  #framework test
  it('verifies a test route is getting to a test layout page') do
    visit('/index')
    expect(page).to have_content('Triangle Type')
  end
end
