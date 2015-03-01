class Project < ActiveRecord::Base
#Student-related methods
	def get_student_1
		Student.find(self.student_1_id)
	end

	def get_student_2
		Student.find(self.student_2_id) if self.student_2_id
	end

	def get_students
		[self.get_student_1, self.get_student_2]
	end

	def show_student_pair
		str = self.get_student_1.get_full_name
		if self.student_2_id
			str += " & " + self.get_student_2.get_full_name
		end
		str
	end

	def set_student_ids(s1_id,s2_id)
		s1 = Student.find(s1_id)
		s1.update(project_id: self.id)
		self.update(student_1_id: s1_id)

		if s2_id
			s2 = Student.find(s2_id)
			s2.update(project_id: self.id)
			self.update(student_2_id: s2_id)
		end
	end

#Test-related methods
	def graded?
		hash = self.attributes
		for key in hash.keys do
			if key != 'student_2_id' && (!hash[key] || hash[key] == "")
				return false
			end
		end
		return true
	end

	# def objective?
	# 	for objective in pro
	# 		if @project.objective1
	# 			return @project.objective1
	# 			<ul>
	# 				<li><%= @project.objective1_goal1 %> </li>
	# 				<li><%= @project.objective1_goal2 %> </li>
	# 				<li><%= @project.objective1_goal3 %> </li>
	# 				<li><i>Stretch Goal: </i><%= @project.objective1_goal4 %> </li>
	# 			</ul>
	# 		end



end