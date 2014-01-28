namespace :db do 
	desc "Erase and fill database"
	task :populate => :environment do
    	require 'populator'
    	require 'faker'

    	Task(&:delete_all)



	end
end