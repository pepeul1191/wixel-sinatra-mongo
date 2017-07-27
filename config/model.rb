# config/model.rb

require_relative 'database'

class Model
	def initialize
		db = Database.new
		@db = db.connection
		@last_id = nil
	end

	def find_to_json(docs)
		rpta = Array.new
		docs.each do |d|
		   rpta.push(d.to_json)
		end
		rpta
	end
end