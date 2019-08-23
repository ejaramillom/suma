require 'sinatra'

get '/' do
	if params[:contar] == nil
	    	@contar = 0
	    else
	    	@contar = params[:contar].to_i
	    end
	erb :index
end

post '/' do
	@contar = params[:contar].to_i + 1
	erb :index
end
