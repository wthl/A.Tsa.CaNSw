#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:cakesnsweets.db"

get '/' do
	@default_language = "rus"
	erb :index
end

get '/eng/' do
	@default_language = "eng"
	erb :index_eng
end