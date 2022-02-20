class EquipsController < ApplicationController
    def create
        @unit = Unit.find(params[:unit_id])
        @equip = @unit.equips.create(equip_params)
        redirect_to unit_path(@unit)
    end

    private
        def equip_params
            params.require(:equip.permit(:heml, :armor, :accessory, :weapon)
            helm = params[:helm].presence || "none"
            armor = params[:armor].presence || "none"
            accessory = params[:accessory].presence || "none"
            weapon = params[:weapon].presence || "none"
        end
end
