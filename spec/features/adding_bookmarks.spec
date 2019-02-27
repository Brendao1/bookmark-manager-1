feature "Adding a new bookmark" do
  scenario "user can add a bookmark to the Bookmark Manager" do
    visit'/bookmarks/new'
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')
    expect(page).to have_content "'http://testbookmark.com' added to bookmarks"
  end
end
