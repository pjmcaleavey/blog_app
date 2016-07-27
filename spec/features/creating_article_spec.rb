require 'rails_helper'
require 'spec_helper'

RSpec.feature "Creating Articles" do
  scenario "A user creates a new article" do
    visit "/" # / == root

    click_link "New Article"

    fill_in "Title", with: "Creating First Article"
    fill_in "Body", with: "Billy Bob"
    click_button "Create Article"

    expect(page).to have_content("Article has been created")
    expect(page.current_path).to eq(articles_path)# eq - expectation (rspec) - define expected outcome
  end
end
