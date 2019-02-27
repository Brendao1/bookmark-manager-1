feature 'Viewing bookmarks' do
  feature 'vising the homepage' do
    scenario 'the page title is visible' do
      visit '/'
      expect(page).to have_content "Welcome to the Bookmarks Manager!"
    end
  end

  feature "viewing bookmarks in /bookmarks route" do
    scenario "show list of bookmarks" do

      Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.github.com", title: "Github")
      Bookmark.create(url: "http://www.google.com", title: "Google")

      visit '/bookmarks'
      expect(page).to have_link("Makers Academy", href: 'http://www.makersacademy.com')
      expect(page).to have_link("Github", href: 'http.//www.github.com')
      expect(page).to have_link("Google", href: 'http://www.google.com')
    end
  end
end
