class LocationsController < ApplicationController
    def index
        @locations = Location.all
    end
    
    def show
        @location = Location.find(params[:id])
    end

    def edit
      @location = Location.find(params[:id])
    end

    def create
        @location = Location.new(location_params)
    
        if @location.save
          redirect_to @location
        else
          render :new, status: :unprocessable_entity
        end
      end

    def new
        @location = Location.new
    end

    def destroy
      @location = Location.find(params[:id])
      @location.destroy
  
      redirect_to root_path, status: :see_other
    end

    private
        def location_params
            params.require(:location).permit(:name)
        end
end
