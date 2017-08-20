require_relative '../../app.rb'

RSpec.feature "Home page", type: :feature do
  scenario "it says hello world" do
    visit "/"
    expect(page).to have_text("Hello, world!")
  end

end

RSpec.feature "Play page", type: :feature do
  scenario "displays player name" do
    set_up_spec
    expect(page).to have_content 'Will'
  end

end
