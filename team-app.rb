require "sinatra"
require_relative "randog.rb"
require_relative "user.rb"
require_relative "smoosh.rb"

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
	redirect '/put?first='+first+'&last='+last
end
get '/put' do
	erb :inputs, locals:{first: first, last: last}
end
post '/nput' do
	names = params[:names]
	first = params[:first]
	last = params[:last]
	pairs = res(names)
	smoosh = smoosher(pairs) 
	redirect '/zit?smoosh='+smoosh+'&first='+first+'&last='+last
end	
get '/zit' do
	first = params[:first]
	last = params[:last]
	smoosh = params[:smoosh]
	erb :results, locals:{first: first, last: last, smoosh: smoosh}
end	