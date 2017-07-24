# config/model.rb

require_relative 'database'

class Model
	def initialize
		db = Database.new
		@db = db.connection
		@last_id = nil
	end
end