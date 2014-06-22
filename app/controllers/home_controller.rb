class HomeController < ApplicationController

    def index
        @projects = Project.includes(:releases).all
    end
end