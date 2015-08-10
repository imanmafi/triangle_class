require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes the user entry and return a triangle') do
    visit('/')
    fill_in('triangle', :with => '4, 3, 2')
    click_button('Send')
    expect(page).to have_content('scalene')
  end
end
