feature "Adding a new bookmark" do
    scenario "user can add a bookmark to the Bookmark Manager" do
      visit'/bookmarks/new'
      fill_in('url', with: 'http://testbookmark.com')
      fill_in('title', with: 'Test Bookmark')
      click_button('Submit')
      expect(page).to have_link("Test Bookmark", href: 'http://www.testbookmark.com')
  end
end
