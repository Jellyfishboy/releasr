class ReleasesController < ApplicationController

  # GET /releases/1
  # GET /releases/1.json
  def show
    @release = Release.find(params[:id])
  end
end
