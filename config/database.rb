# config/database.rb
require 'mongo'

class Database
	def initialize
		begin
   		@connection = Mongo::Client.new([ '192.168.1.19:27017' ], :database => 'db_animales')
	  	rescue ZeroDivisionError => e#ZeroDivisionError#LoadError
	   	{:tipo_mensaje => 'error', :rpta_mensaje => "Error ocurrido con la conección con la base de datos", :error => e}.to_json
	  	end
	end

	def connection
		@connection
	end
end