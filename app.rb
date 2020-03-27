require "sinatra"
  require "sinatra/reloader"
  require "sinatra/activerecord"
  set :database, { adapter: "sqlite3", database: "mydb.db" }
require '/.model/user'
require '/.model/team'

get '/users1' do
  @users = User.all
  erb :users1
end

post '/show_user' do
  @users = Users.find_by(name: params [:name])
  if @user.nil?
    return "user not found"
  end
  erb :user
end

get 'teams1' do
  @teams = Team.all
  erb :team1
end

post '/show_team' do
  @users = Teams.find_by(name: params [:name])
  if @team.nil?
    return "team not found"
  end
  erb :team
end