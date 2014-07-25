class ProjectsController < ApplicationController

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.includes(:releases).where(:releases => { state: 1 } ).find(params[:id])
  end
end
