class Message < ActiveRecord::Base
	belongs_to :from, :class_name => 'User'
	belongs_to :to, :class_name => 'User'

	def index
		@messages=Message.all
	end
	
	def self.dialog_with(to_id, from_id)
		Message.where("from_id = ? and to_id = ? or from_id = ? and to_id = ? ", from_id,to_id,to_id,from_id ).order("created_at")
	end
end
