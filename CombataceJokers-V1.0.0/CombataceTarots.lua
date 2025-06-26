--- STEAMODDED HEADER
--- MOD_NAME: Combatace Tarots
--- MOD_ID: CombataceTarots
--- MOD_AUTHOR: [Blizzow]
--- MOD_DESCRIPTION: Adds Tarot cards to get TJ Jokers more reliable

----------------------------------------------
------------MOD CODE -------------------------

----------------------------------------------
-------------------UTIL-----------------------

function addjoker(joker,negative)
    local card = create_card('Joker', G.jokers, nil, 0, nil, nil, joker, nil)
    if negative~=nil then
        card:set_edition({negative = true})
    end
    card:add_to_deck()
    G.jokers:emplace(card)
    G.GAME.used_jokers[joker] = true
end

function getjokerfromlist(list)
    return math.random(1,#list)
end


local contractjoker ={
    'j_combatacesoldier',
    'j_combatacemercenary',
    'j_combatacegeneral',
    'j_combatacesupplies',
    'j_combatacesecretagent',
    'j_combatacepromotion'
}

-- SMODS.Tarot:new(name, slug, config, pos, loc_txt, cost, cost_mult, effect, consumeable, discovered, atlas)

local tarots = {
    contract = {
        name = "合同",
        text = {
            "创造一个随机的A军团小丑",
            "{C:inactive}(必须有空间)"
		},
		config = {},
		pos = { x = 0, y = 2 },
        cost = 3,
        cost_mult = 1,
        effect=nil,
        consumable=true,
        discovered=true,
        can_use = function() 
            if  #G.jokers.cards < G.jokers.config.card_limit then
                return true
            end          
        end,
        use = function(self, area, copier)
            if self.ability.name == '合同' then
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    play_sound('timpani')
                    addjoker(contractjoker[getjokerfromlist(contractjoker)])
                    self:juice_up(0.3, 0.5)
                    return true end }))
                delay(0.6)
            end
        end      
	},
}

function SMODS.INIT.CombataceTarots()    
    
    init_localization()

    for k, v in pairs(tarots) do
        local tarot = SMODS.Tarot:new(v.name, k, v.config, v.pos, { name = v.name, text = v.text }, v.cost, v.cost_mult, v.effect, v.consumable, v.discovered, "CombataceTarots")
        -- SMODS.Tarot:new(name, slug, config, pos, loc_txt, cost, cost_mult, effect, consumeable, discovered, atlas)
        tarot:register()
        SMODS.Tarots[tarot.slug].use=v.use
        SMODS.Tarots[tarot.slug].can_use=v.can_use
        if(v.loc_def ~= nil) then
            SMODS.Tarots[tarot.slug].loc_def=v.loc_def
        end

    end
    SMODS.Sprite:new("CombataceTarots", SMODS.findModByID("CombataceTarots").path, "CombataceTarots.png", 71, 95, "asset_atli"):register()

 

end
----------------------------------------------
------------MOD CODE END----------------------
