class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def grade
		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		project = Project.find(params[:id])
		project.update(project_params)
		redirect_to project_path
	end

	private

	def project_params
		params.require(:project).permit(:name,
										:objective1,
										:objective1_goal1,
										:objective1_goal2,
										:objective1_goal3,
										:objective1_goal4,
										:objective1_score,
										:objective1_feedback,
										:objective2,
										:objective2_goal1,
										:objective2_goal2,
										:objective2_goal3,
										:objective2_goal4,
										:objective2_score,
										:objective2_feedback,
										:objective3,
										:objective3_goal1,
										:objective3_goal2,
										:objective3_goal3,
										:objective3_goal4,
										:objective3_score,
										:objective3_feedback,
										:presentation_score,
										:presentation_feedback,
										:teamwork_score,
										:teamwork_feedback,
										:overall_score,
										:overall_feedback)										end

end


# :index, :show, :edit, :update