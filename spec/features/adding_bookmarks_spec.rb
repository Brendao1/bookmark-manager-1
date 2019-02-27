feature "Adding a new bookmark" do
  scenario "user can add a bookmark to the Bookmark Manager" do
    visit'/bookmarks/new'
    fill_in('url', with: 'http://testbookmark.com')
    fill_in('title', with: 'Test Site')
    click_button('Submit')
    
    expect(page).to have_link('Test Site', href: 'http://testbookmark.com')
  end
end
