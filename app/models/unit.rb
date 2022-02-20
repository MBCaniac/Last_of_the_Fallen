class Unit < ApplicationRecord
    #include Visible

    has_one :equips

    validates :name, presence: true
    validates :classtype, presence: true
    validates :gender, presence: true

    after_create :update_defaults
    
    def update_defaults
        update(char_lvl: 1)
        update(char_xp: 0)
       if (self.classtype = "warrior")
        update(char_atp: 30)
        update(char_def: 50)
        update(char_eva: 30)
        update(char_hp: 100)
        update(char_tp: 10)
       elsif (self.classtype = "ranger")
        update(char_atp: 40)
        update(char_def: 30)
        update(char_eva: 40)
        update(char_hp: 80)
        update(char_tp: 20)
       else
        update(char_atp: 50)
        update(char_def: 20)
        update(char_eva: 40)
        update(char_hp: 60)
        update(char_tp: 30)
       end
    end
end
