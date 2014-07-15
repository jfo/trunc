require 'sinatra'
require_relative 'trie.rb'
require 'pry'
require 'redis'
require 'json'


get("/") do

  @list = Trie.new
  @list.populate
  @list.second_pop

  db = Redis.new
  db.set "jeff", @list.to_json
  db.set "jeff", @list.to_json

  erb :index
end

get("/retrieve") do

  db = Redis.new
  @list = JSON.parse(db.get("jeff"))
  erb :index

end
