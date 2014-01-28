module NotesHelper
	def getEmail(task)	
		if note.user.nil?
			"no_user"
		else
			note.user.email
		end
	end
end
