class HomeController < ApplicationController

    def index
        @projects = Project.includes(:releases).where(:releases => { state: 1 } )
    end
end