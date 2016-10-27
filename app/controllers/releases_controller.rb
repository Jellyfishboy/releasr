class ReleasesController < ApplicationController

    def show
        set_project
        set_release
    end

    private

    def set_project
        @project = Project.find(params[:project_id])
    end

    def set_release
        @release ||= @project.releases.find(params[:id])
    end
end
