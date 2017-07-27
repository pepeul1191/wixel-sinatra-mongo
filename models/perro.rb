# encoding: UTF-8
# coding: UTF-8
# -*- coding: UTF-8 -*-

class Perro < Model
	def listar
	  	rpta = find_to_json(@db[:perros].find)
	  	@db.close
	  	rpta
	end
end