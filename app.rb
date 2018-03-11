#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:cakesnsweets.db"



get '/' do
	@language = "rus"
	erb :index
end

get '/blog' do
	@language = "rus"
	erb :blog
end

get '/gallery' do
	@language = "rus"
	erb :gallery
end

get '/q&a' do
	@language = "rus"
	erb :qna
end

get '/contacts' do
	@language = "rus"
	erb :contacts
end

# ENGLISH VERSION

get '/eng/' do
	@language = "eng"
	erb :index_eng
end

get '/eng/blog' do
	@language = "eng"
	erb :blog_eng
end

get '/eng/gallery' do
	@language = "eng"
	erb :gallery_eng
end

get '/eng/q&a' do
	@language = "eng"
	erb :qna_eng
end

get '/eng/contacts' do
	@language = "eng"
	erb :contacts_eng
end