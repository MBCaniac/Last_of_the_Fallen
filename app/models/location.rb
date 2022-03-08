class Location < ApplicationRecord
    belongs_to :unit

    after_create :update_defaults
    
    def update_defaults
        if (@unit.location == "Tornire")
            update(shop: "potion, basic bow, basic wand, basic sword", 
                bank: "deposit, withdraw", 
                quest: "defeat coyote")
        end
    end
end
