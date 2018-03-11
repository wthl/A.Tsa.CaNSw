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

get '/blog' do
	@default_language = "rus"
	erb :blog
end

get '/gallery' do
	@default_language = "rus"
	erb :gallery
end

get '/q&a' do
	@default_language = "rus"
	erb :qna
end

get '/contacts' do
	@default_language = "rus"
	erb :contacts
end

# ENGLISH VERSION

get '/eng/' do
	@default_language = "eng"
	erb :index_eng
end

get '/eng/blog' do
	@default_language = "eng"
	erb :blog_eng
end

get '/eng/gallery' do
	@default_language = "eng"
	erb :gallery_eng
end

get '/eng/q&a' do
	@default_language = "eng"
	erb :qna_eng
end

get '/eng/contacts' do
	@default_language = "eng"
	erb :contacts_eng
end