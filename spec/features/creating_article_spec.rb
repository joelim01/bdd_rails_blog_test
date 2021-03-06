require "rails_helper"

RSpec.feature "Creating Articles" do
  scenario "User creates a new article" do
    # visit root
     visit "/"
    # click on new article
    click_link "New Article"
    # fill in Title and Body
    fill_in "Title", with: "Creating a blog"
    fill_in "Body", with: "Lorem Ipsum"
    # Click Create Article
    click_button "Create Article"

    expect(page).to have_content("Article has been created")
    expect(page.current_path).to eq(articles_path)
  end
end
