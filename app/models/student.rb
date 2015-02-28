class Student < ActiveRecord::Base
	def get_project
		Project.find(self.project_id)
	end

	def get_full_name
		self.first_name + " " + self.last_name
	end
end