# TEAMS

get '/teams' do
  @teams = Team.all
  erb :"teams/index"
end

get '/teams/new' do
  erb :"teams/new"
end

post '/teams' do
  @team = Team.create(params[:team]
  )
  redirect "/teams/#{@team.id}"
end

get '/teams/:id' do
  @team = Team.find(params[:id])
  erb :"teams/show"
end

get '/teams/:id/edit' do
  @team = Team.find(params[:id])
  erb :"teams/edit"
end

put '/teams/:id' do
  @team = Team.find(params[:id])
  @team.update(params[:team])
  redirect "/teams/#{@team.id}"
end

delete '/teams/:id' do
  @team = Team.find(params[:id])
  @team.delete
  redirect "/teams"
end
