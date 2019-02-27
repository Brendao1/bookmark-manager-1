require 'pg'

class Bookmark

attr_reader :title, :url

# def initialize()

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    bookmarks = connection.exec("SELECT * FROM bookmarks;")
    bookmarks.map { |bookmark| bookmark['url']
        Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    }
  end

  def self.create(url:, title:)

    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, url, title")
  end




end
