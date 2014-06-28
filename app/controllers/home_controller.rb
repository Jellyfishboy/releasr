class HomeController < ApplicationController

    def index
        @projects = Project.includes(:releases).where(:releases => { draft: false } )
    end
end