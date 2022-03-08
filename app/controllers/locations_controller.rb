class LocationsController < ApplicationController
    def create
        @unit = Unit.find(params[:unit_id])
        @location = @unit.locations.create(location_params)
        redirect_to unit_path(@unit)
    end

    private
        def location_params
            params.require(:location.permit(:bank, :shop, :quest)
        end
end
