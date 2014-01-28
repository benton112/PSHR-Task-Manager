module TasksHelper
	def getEmail(task)	
		if task.user.nil?
			"no_user"
		else
			task.user.email
		end
	end
end
