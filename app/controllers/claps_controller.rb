class ClapsController < ApplicationController
    
    
    def create
        @point = Point.find_by(id: params[:id])
        @new_clap = @point.claps.build
        if @new_clap.save
            respond_to do |format|
                format.js
                format.html { redirect_to root_path }
            end
        else 
            redirect_to @point
        end
    end
    
    
    
end
