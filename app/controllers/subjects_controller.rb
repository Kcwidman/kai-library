class SubjectsController < ApplicationController

    # layout 'standard'
    

    def show
        @subject=Subject.find(params[:id])
    end

end
