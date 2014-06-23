class Admin::ReleasesController < ApplicationController
  before_action :set_release, only: [:edit, :update, :destroy]
  before_action :set_project, only: [:index, :new, :edit, :create, :destroy]
  layout 'admin'

  # GET /releases
  # GET /releases.json
  def index
    @releases = @project.releases
  end

  # GET /releases/new
  def new
    @release = @project.releases.build
  end

  # GET /releases/1/edit
  def edit
  end

  # POST /releases
  # POST /releases.json
  def create
    @release = @project.releases.build(release_params)
    respond_to do |format|
      if @release.save
        flash[:success] = 'Release was successfully created.'
        format.html { redirect_to admin_project_releases_url(@project) }
        format.json { render action: 'show', status: :created, location: @release }
      else
        format.html { render action: 'new' }
        format.json { render json: @release.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /releases/1
  # PATCH/PUT /releases/1.json
  def update
    @release.slug = nil
    respond_to do |format|
      if @release.update(release_params)
        flash[:success] = 'Release was successfully updated.'
        format.html { redirect_to admin_project_releases_url(@release.project) }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /releases/1
  # DELETE /releases/1.json
  def destroy
    @release.destroy
    respond_to do |format|
      flash[:success] = 'Release was successfully deleted'
      format.html { redirect_to admin_project_releases_url(@project) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_release
      @release = Release.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def release_params
      params.require(:release).permit(:name, :slug, :notes, :project_id)
    end
end
