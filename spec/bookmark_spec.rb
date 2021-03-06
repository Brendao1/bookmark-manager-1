require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test database
      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.github.com", title: "Github")
      Bookmark.create(url: "http://www.google.com", title: "Google")

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
      end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      # removed .first
      # first returns the first element of the array
      # bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark').first

      persisted_data = persisted_data(id: bookmark.id)
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      # removed .first['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.testbookmark.com'
    end
  end

  describe '.delete' do
    it 'deletes the given bookmark' do
      bookmark = Bookmark.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')
      Bookmark.delete(id: bookmark.id)
      expect(Bookmark.all.length).to eq 0
    end
  end
end
