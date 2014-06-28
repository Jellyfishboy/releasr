class ProjectsController < ApplicationController

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.includes(:releases).where(:releases => { draft: false } ).find(params[:id])
  end
end
