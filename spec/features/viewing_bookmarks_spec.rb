# feature "Index page for the bookmarks" do
#   scenario "index page for the bookmarks" do
#     visit '/'
#     expect(page).to have_content "Bookmark Manager!"
#   end
# end

# feature "Viewing bookmarks" do
#   scenario "a user can see bookmarks" do
#
#     # Add the test data
#     Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
#     Bookmark.create(url: 'http://www.github.com', title: 'Github')
#     Bookmark.create(url: 'http://www.google.com', title: 'Google')
#
#     visit '/bookmarks'
#
#     expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
#     expect(page).to have_link('Github', href: 'http://www.github.com')
#     expect(page).to have_link("Google", href: 'http://www.google.com')
#   end
# end

feature "viewing bookmarks in /bookmarks route" do
  scenario "show list of bookmarks" do

    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.github.com', title: 'Github')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')

    visit '/bookmarks'
    expect(page).to have_link("Makers Academy", href: 'http://www.makersacademy.com')
    expect(page).to have_link("Github", href: 'http.//www.github.com')
    expect(page).to have_link("Google", href: 'http://www.google.com')
  end
end
