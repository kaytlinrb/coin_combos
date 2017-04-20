require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combos case path', {:type => :feature}) do
  it('processes the user entry and returns highest change amount') do
    visit('/')
    fill_in('money', :with => '66')
    click_button('Convert')
    expect(page).to have_content('[2, 1, 1, 1]')
  end
end
