require "sinatra"
require_relative "rbstuff.rb"
enable :sessions

######################################################
get '/' do 
	mssg = params[:mssg] || ""	
	erb :logn, locals:{mssg: mssg}	
end

post '/login' do
	uname = params[:uname]
	pword = params[:pword]
	authrz(uname, pword)
end	
#####################################################
get '/names' do
	mssg = params[:mssg]
	erb :name, locals:{mssg: mssg}
end

post '/names' do
	session[:first] = params[:first]
	session[:last] = params[:last]
	redirect '/nput'
end
####################################################
get '/nput' do
	erb :inputs

end
post '/nput' do
  names = params[:names]
  puts "names:     #{names}"
	pears = tea_maker(names)
 	session[:c] = smoosh(pears)
  session[:v] = strangy(session[:c])
  redirect '/chiggy?'
end	
######################################################
get '/chiggy' do
  erb :check, locals:{v:session[:v]}
end

post '/p_check' do
	session[:pairs] = params.values#[:pickem]
	redirect '/zit'
end

######################################################
get '/zit' do

	erb :results, locals:{first: session[:first],
		last:session[:last], pairs: session[:pairs]}
end	