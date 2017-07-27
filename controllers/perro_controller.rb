class App < Sinatra::Base
	get '/perro/listar' do
		perros = Perro.new
		perros.listar
	end
end