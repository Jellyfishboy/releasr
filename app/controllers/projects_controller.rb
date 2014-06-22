class ProjectsController < ApplicationController

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
  end
end
