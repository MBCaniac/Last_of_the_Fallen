class Location < ApplicationRecord
    validates :name, presence: true
    
    after_create :update_defaults
    
    def update_defaults
        if (self.name == "Tornire")
            update(shop: "potion, basic bow, basic wand, basic sword", 
                bank: "deposit, withdraw", 
                quest: "defeat coyote")
        end
    end
end
