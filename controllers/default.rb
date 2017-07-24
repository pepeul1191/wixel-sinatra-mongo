class App < Sinatra::Base
	# Show the index.erb page
	get '/' do
		erb :index
	end

	get '/estacion/listar' do
		estacion = Estacion.new
		estacion.listar.to_json
	end
end