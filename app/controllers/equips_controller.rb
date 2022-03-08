class EquipsController < ApplicationController
    def create
        @unit = Unit.find(params[:unit_id])
        @equip = @unit.equips.create(equip_params)
        redirect_to unit_path(@unit)
    end

    private
        def equip_params
            params.require(:equip).permit(:helm, :armor, :accessory, :weapon)
        end
end
