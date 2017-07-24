class App < Sinatra::Base
	get '/estacion/listar' do
		estacion = Estacion.new
		estacion.listar.to_json
	end

	get '/estacion/detalle/:id' do
		id = params[:id]
		estacion = Estacion.new
		estaciones = estacion.detalle(id)

		sensores =[]
		for  estacion in estaciones
			temp = Hash.new 
			temp[:nombre_sensor] = estacion[:nombre_sensor]
			temp[:desc_instrumento] = estacion[:desc_instrumento]
			temp[:des_tipo] = estacion[:des_tipo]
			temp[:ide_sensor] = estacion[:ide_sensor]
			sensores.push(temp)
		end
		rpta = Hash.new
		rpta[:nombre_estacion] = estaciones[0][:nombre_estacion]
		rpta[:descripcion] = estaciones[0][:descripcion]
		rpta[:sensores] = sensores

		rpta.to_json
	end
end