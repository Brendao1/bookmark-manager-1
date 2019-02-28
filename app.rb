require 'sinatra/base'
require './lib/bookmark'

class Bookmarks < Sinatra::Base
  enable :sessions, :method_override

  get '/' do
    "Welcome to the Bookmarks Manager!"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  post '/bookmarks' do
    p ENV
    p Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  delete '/bookmarks/:id' do
    # let's print out the form params
    # p params
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
