require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Wordcount Integration Testing', {:type => :feature}) do
  #framework test
  it('verifies a test route is getting to a test layout page') do
    visit('/')
    expect(page).to have_content('Triangle Type')
  end

  it('verifies test route from form to results page') do
    visit('/')
    fill_in('side_a', :with => 1)
    fill_in('side_b', :with => 1)
    fill_in('side_c', :with => 1)
    click_button('Send')
    expect(page).to have_content('equilateral')
  end

end
