class Unit < ApplicationRecord
    has_one :equips

    validates :name, presence: true
    validates :classtype, presence: true
    validates :gender, presence: true

    after_create :update_defaults
    
    def update_defaults
       if (self.classtype = "warrior")
        update(char_lvl: 1, char_xp: 0, char_atp: 30, char_def: 50, char_eva: 30, char_hp: 100, char_tp: 10)
       elsif (self.classtype = "ranger")
        update(char_lvl: 1, char_xp: 0, char_atp: 40, char_def: 30, char_eva: 40, char_hp: 80, char_tp: 20)
       else
        update(char_lvl: 1, char_xp: 0, char_atp: 50, char_def: 20, char_eva: 40, char_hp: 60, char_tp: 30)
       end
    end
end
