get '/' do
  erb :index
end

post '/user' do
  @user = Octokit.user(params[:user])
  @user.to_json
  @followers = Octokit.following(params[:user])
  @followers.to_json

  erb :user
end

# get '/user' do

#   erb :user
# end
