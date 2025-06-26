--- STEAMODDED HEADER
--- MOD_NAME: Combatace Deck
--- MOD_ID: CombataceDeck
--- MOD_AUTHOR: [Blizzow]
--- MOD_DESCRIPTION: Adds Decks for Themed Joker starts

----------------------------------------------
------------MOD CODE -------------------------

----------------------------------------------
-------------------UTIL-----------------------

function SMODS.INIT.CombataceDeck()
    local CombataceDeck={
        name = "A军团牌组",
        text = {
        "开局时拥有一张",
        "{C:attention}A军团 - 新兵{}和",
        "一张{C:attention}A军团 -领队"
        }
    }
    
    
       
    local happiest1 = SMODS.Deck:new("Combatace", "Combatace", {Combatace = true, atlas = "b_Combatace"}, {x = 0, y = 0},CombataceDeck)
    SMODS.Sprite:new("b_Combatace", SMODS.findModByID("CombataceDeck").path, "j_combatace_deck.png", 71, 95, "asset_atli"):register();
    happiest1:register()
  
      
      
    local Backapply_to_runRef = Back.apply_to_run
    function Back.apply_to_run(self)
        if self.effect.config.Combatace then
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('timpani')
            local card = create_card('Joker', G.jokers, nil, nil, nil, nil,"j_combatacesoldier",'Combatace')
            card:add_to_deck()
            G.jokers:emplace(card)
            return true end }))
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('timpani')
            local card = create_card('Joker', G.jokers, nil, nil, nil, nil,"j_combatacerecruiter",'Combatace')
            card:add_to_deck()
            G.jokers:emplace(card)
            return true end }))
        end
        Backapply_to_runRef(self)
    end
end

----------------------------------------------
------------MOD CODE END----------------------
