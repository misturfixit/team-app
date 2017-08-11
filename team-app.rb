require "sinatra"
require_relative "randog.rb"
require_relative "user.rb"

get '/' do 
	mssg = params[:mssg] || ""	
	erb :logn, locals:{mssg: mssg}	
end
post '/login' do
	uname = params[:uname]
	pword = params[:pword]
	authrz(uname, pword)
end	
get '/names' do
	mssg = params[:mssg]
	erb :name, locals:{mssg: mssg}
end
post '/names' do
	first = params[:first]
	last = params[:last]
	redirect '/?first='+first+'&last='+last
end
