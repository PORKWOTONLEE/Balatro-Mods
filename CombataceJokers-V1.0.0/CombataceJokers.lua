--- STEAMODDED HEADER
--- MOD_NAME: Combatace Jokers
--- MOD_ID: CombataceJokers
--- MOD_AUTHOR: [Blizzow]
--- MOD_DESCRIPTION: A bunch of themed Jokers. WIP

----------------------------------------------
------------MOD CODE -------------------------

---Config---
config = {
vanillaart=true, --true/false enables alternative artworks

}
---UTILITY METHODS---
function destroyCard(self,sound)
    G.E_MANAGER:add_event(Event({
        func = function()
            play_sound(sound, math.random()*0.2 + 0.9,0.5)
            self.T.r = -0.2
            self:juice_up(0.3, 0.4)
            self.states.drag.is = true
            self.children.center.pinch.x = true
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                func = function()
                        G.jokers:remove_card(self)
                        self:remove()
                        self = nil
                    return true; end})) 
            return true
        end
    })) 
    self.gone = true
end

function shakecard(self)
    G.E_MANAGER:add_event(Event({
        func = function()
            self:juice_up(0.5, 0.5)
            return true
        end
    }))
end
function fakemessage(_message,_card,_colour)
    G.E_MANAGER:add_event(Event({ trigger = 'after',delay = 0.15,       
        func = function() card_eval_status_text(_card, 'extra', nil, nil, nil, {message = _message, colour = _colour, instant=true}); return true
        end}))
    return
end


function poll_enhancement(seed)
    local enhancements = {}
    --add all enhancements but m_stone to list
    for k, v in pairs() do
        if v.key ~= 'm_stone' then 
            enhancements[#enhancements+1] = v
        end
    end
    return pseudorandom_element(enhancements, pseudoseed(seed))
end

function poll_seal(seed)
    local seals = {}
    for k, v in pairs(G.P_SEALS) do
        seals[#seals+1] = v
    end
    return pseudorandom_element(seals, pseudoseed(seed)).key
end

function poll_FromTable(_table,seed,filter)
    local items = {}    
    for k, v in pairs(_table) do
        if v.key ~= filter then
            items[#items+1] = v
        end        
    end
    return pseudorandom_element(items, pseudoseed(seed))
end


    --G.P_TAGS 
    --G.P_CARDS
    --G.P_SEALS
function randomFromTable(source)
    local keys = {} 
    for k in pairs(source) do
        table.insert(keys, k)
    end    
    local choiceIndex = math.random(1,#keys) 
    local choiceKey = keys[choiceIndex] 
    local choice = source[choiceKey]
    return {key = choiceKey, value = choice}
end


function addjoker(joker)
    local card = create_card('Joker', G.jokers, nil, 0, nil, nil, joker, nil)
    card:add_to_deck()
    G.jokers:emplace(card)
    G.GAME.used_jokers[joker] = true
end




local jokers = {
    
      combatacesoldier = {
        name = "A军团 - 新兵",
        text = {
            "每张计分的{C:attention}A{}",			
			"额外提供{C:chips}+#1#{}筹码",
            "(A军团的常见战力)",
            "{C:inactive}(当兵很艰难,存活了{C:attention}#2#{C:inactive}回合.)"
		},
		ability = {extra={chips=35, counter=0}},
		pos = { x = 0, y = 0 },
        rarity=1,
        cost = 4,
        blueprint_compat=true,
        eternal_compat=true,
        effect=nil,
        soul_pos=nil,
        calculate = function(self,context)
            if context.individual and context.cardarea == G.play and (context.other_card:get_id() == 14) then
                return {
                message = localize{type='variable',key='a_chips',vars={self.ability.extra.chips}},
                chips = self.ability.extra.chips,
                card = self
                }
            end
            if context.end_of_round and not (context.individual or context.repetition or context.blueprint) then
                self.ability.extra.counter=self.ability.extra.counter+1
                if self.ability.extra.counter>=15 then
                    destroyCard(self,'holo1')
                    local card = create_card('Joker', G.jokers, nil, 0, nil, nil, 'j_combataceveteran', nil)
                    card:set_edition({negative = true})
                    card:add_to_deck()
                    G.jokers:emplace(card)
                    card:start_materialize()
                    G.GAME.used_jokers['j_combataceveteran'] = true  
                    return {
                    message = localize('k_promotion'),
                    colour = G.C.RED,
                    card = self
                    }
                end      
            end
        end,
        loc_def=function(self)
            return {self.ability.extra.chips, self.ability.extra.counter}
        end        
	},

    combatacesecretagent = {
        name = "A军团 - 特工",
        text = {
            "复制此牌右边的{C:attention}A军团{}效果",			
			"只能复制A军团系列小丑牌!",
            "{C:inactive}(A军团的战略大师)"
		},
		ability = {extra={name = "A军团 - 特工"}},
		pos = { x = 1, y = 0 },
        rarity=2,
        cost = 8,
        blueprint_compat=true,
        eternal_compat=true,
        effect=nil,
        soul_pos=nil,
        calculate = function(self,context)
            if self.ability.set == "Joker" and not self.debuff then
                local other_joker = nil
                for i = 1, #G.jokers.cards do
                    if G.jokers.cards[i] == self then other_joker = G.jokers.cards[i+1] end
                end
                if other_joker and other_joker ~= self and string.match(other_joker.ability.name, "A军团") then
                    self.ability.extra.name= other_joker.ability.name
                    context.blueprint = (context.blueprint and (context.blueprint + 1)) or 1
                    context.blueprint_card = context.blueprint_card or self
                    if context.blueprint > #G.jokers.cards + 1 then return end
                    local other_joker_ret = other_joker:calculate_joker(context)
                    if other_joker_ret then 
                        other_joker_ret.card = context.blueprint_card or self
                        other_joker_ret.colour = G.C.BLUE
                        return other_joker_ret
                    end
                end
            end
        end,
        loc_def=function(self)
            return {self.ability.extra.name}
        end 
	},

    combatacesupplies = {
        name = "A军团 - 补给",
        text = {	
			"累计弃掉3张{C:attention}A{}后获得{C:money}$#1#{}",
            "每次生效后都会再涨{C:money}$1{}",
            "(维持很重要，距离下次供应：{C:attention}#2#{})",
			"{C:inactive}(A军团的金银珠宝)"
		},
		ability = {extra={dollars=3, counter=3}},
		pos = { x = 2, y = 0 },
        rarity=1,
        cost = 4,
        blueprint_compat=true,
        eternal_compat=true,
        effect=nil,
        soul_pos=nil,
        calculate = function(self,context)
            if context.discard and not context.other_card.debuff and context.other_card:get_id()==14 then        
                local card=context.other_card
                shakecard(self)
                if not context.blueprint then
                self.ability.extra.counter=self.ability.extra.counter-1
                end     
                if self.ability.extra.counter==0 then
                    self.ability.extra.counter=3
                    ease_dollars(self.ability.extra.dollars)
                    if not context.blueprint then
                    self.ability.extra.dollars=self.ability.extra.dollars+1
                    end
                    return {
                        message = localize('k_supplydrop'),
                        card = card,
                        colour = G.C.YELLOW
                    }          
                else
                return {
                    message = localize('k_supplies_up'),
                    card = card,
                    colour = G.C.YELLOW
                }
                end
            end
        end,
        loc_def=function(self)
            return {self.ability.extra.dollars, self.ability.extra.counter}
        end        
	},

    combatacemercenary = {
        name = "A军团 - 雇佣兵",
        text = {
            "每张计分的{C:attention}A{}提供{X:mult,C:white} X#1# {}倍率",			
            "在每{C:attention}回合{}结束时支付{C:money}$5{}",
            "如果付不起则{C:red}摧毁{}此小丑牌",
			"(A军团的“特殊”火力)",
            "{C:inactive}(火力,但代价是什么？)"
		},
		ability = {extra={x_mult = 1.5}},
		pos = { x = 3, y = 0 },
        rarity=1,
        cost = 4,
        blueprint_compat=true,
        eternal_compat=true,
        effect=nil,
        soul_pos=nil,
        calculate = function(self,context)
            if context.individual and context.cardarea == G.play and (context.other_card:get_id() == 14) then           
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.x_mult}},
                    x_mult = self.ability.extra.x_mult 
                }
            end
            if context.end_of_round and not (context.individual or context.repetition or context.blueprint) then
                shakecard(self)
                if G.GAME.dollars>=5 then
                    ease_dollars(-5)
                    return {
                        message = localize('k_mercenary_pay'),
                        colour = G.C.RED,
                        card = self
                    } 
                else                
                    destroyCard(self,'glass5')
                    return {
                    message = localize('k_mercenary_destroy'),
                    colour = G.C.RED,
                    card = self
                }          
                end
            end
        end,
        loc_def=function(self)
            return {self.ability.extra.x_mult}
        end        
	},

	combatacepromotion = {
        name = "A军团 - 长官",
        text = {
			"打出的{C:attention}A{}有{C:green}#1#/#2#{}几率",
			"添加随机卡牌版本",
			"(A军团的精英战力)",
            "{C:inactive}(是时候晋升了！)"
		},
		ability = {extra={odds = 6}},
		pos = { x = 4, y = 0 },
        rarity = 3,
        cost = 12,
        blueprint_compat=true,
        eternal_compat=true,
        effect=nil,
        soul_pos=nil,
        calculate = function(self,context)
            if context.individual and context.cardarea == G.play and context.other_card:get_id()==14 then		
                local card=context.other_card
                if pseudorandom('promotion') < G.GAME.probabilities.normal / self.ability.extra.odds then						
                    if card:get_edition() ~= nil then return nil end
                    local edition = poll_edition('promotion', nil, true, true)
                    shakecard(card)
                    card:set_edition(edition)
                    return {
                        message = localize('k_agedup'),
                        colour = G.C.CHIPS,
                        card = card
                    }       
                    
                end
            end
        end,
        loc_def=function(self)
            return {''..(G.GAME and G.GAME.probabilities.normal or 1),self.ability.extra.odds}
        end        
	},

    combatacerecruiter = {
        name = "A军团 - 领队",
        text = {
            "弃掉的牌有",
			"{C:green}#1#/#2#{}几率变成{C:attention}A",
			"(A军团的重要首脑)",
			"{C:inactive}(你有兴趣加入A军团吗？)"
		},
		ability = {extra={odds = 8}},
		pos = { x = 5, y = 0 },
        rarity = 2,
        cost = 8,
        blueprint_compat=true,
        eternal_compat=true,
        effect=nil,
        soul_pos=nil,
        calculate = function(self,context)
            if context.discard and not context.other_card.debuff and
            pseudorandom('recruiter') < G.GAME.probabilities.normal/self.ability.extra.odds and
            context.other_card:get_id() ~= 14 then
                local card=context.other_card
                local suit_data = SMODS.Card.SUITS[card.base.suit]
                local suit_prefix = string.sub(card.base.suit, 1, 1)..'_'
                local rank_suffix='A'			
                shakecard(self) 
                card:set_base(G.P_CARDS[suit_prefix..rank_suffix])
                return {
                    message = localize('k_recruit'),
                    card = card,
                    colour = G.C.CHIPS
                }
            end            
        end,
        loc_def=function(self)
            return {''..(G.GAME and G.GAME.probabilities.normal or 1),self.ability.extra.odds}
        end        
	},

    combatacegeneral = {
        name = "A军团 - 后援",
        text = {
            "包括此牌在内的",
            "每张{C:attention}\"A军团系列小丑\"{}",
            "将提供{X:mult,C:white} X#1# {}倍率",
            "(A军团的支援战力)",
			"{C:inactive}(A就是力量！)"
		},
		ability = {extra={x_mult = 1.5}},
		pos = { x = 6, y = 0 },
        rarity = 2,
        cost = 8,
        blueprint_compat=true,
        eternal_compat=true,
        effect=nil,
        soul_pos=nil,
        calculate = function(self,context)
            if context.other_joker then
                if string.match(context.other_joker.ability.name, "A军团") then
                    shakecard(context.other_joker)
                    return {
                        message = localize{type='variable',key='a_xmult',vars={self.ability.extra.x_mult}},
                        Xmult_mod = self.ability.extra.x_mult
                    }
                end
            end
        end,
        loc_def=function(self)
            return {self.ability.extra.x_mult}
        end        
	},

    combataceveteran = {
        name = "A军团 - 老兵",
        text = {            
            "每张计分的{C:attention}A{}",			
			"将重复触发并添加{C:chips}+#3#{}筹码",
            "回合结束获得{C:chips}10{}筹码效果提升",
			"{C:inactive}(A军团冲锋陷阵!目前存在{C:attention}#2#{C:inactive}回合)"
		},
		ability = {extra={chips=50, counter=0, bonustotal=50}},
		pos = { x = 7, y = 0 },
        rarity=4,
        cost = 20,
        blueprint_compat=true,
        eternal_compat=true,
        effect=nil,
        soul_pos=nil,
        calculate = function(self,context)
            if context.individual and context.cardarea == G.play and (context.other_card:get_id() == 14) then
                return {
                message = localize{type='variable',key='a_chips',vars={self.ability.extra.bonustotal}},
                chips = self.ability.extra.bonustotal,
                card = self
                }
            end
            
            if  context.repetition and context.cardarea == G.play and (context.other_card:get_id() == 14) then            
                return {
                    message = localize('k_again_ex'),
                    repetitions = 1,
                    card = context.other_card
                }
            end
    
            if context.end_of_round and not (context.individual or context.repetition or context.blueprint) then
                self.ability.extra.counter=self.ability.extra.counter+1
                self.ability.extra.bonustotal=self.ability.extra.chips+self.ability.extra.counter*10
                return {
                    message = localize('k_agedup'),
                    colour = G.C.CHIPS,
                    card = self
                }                    
            end
    
        end,
        loc_def=function(self)
            return {self.ability.extra.chips, self.ability.extra.counter, self.ability.extra.bonustotal}
        end        
	},    
}


function SMODS.INIT.CombataceJokers()
    ---localization texts:---
    --BATTLE ACE
    G.localization.misc.dictionary.k_agedup = "升级!!"
    G.localization.misc.dictionary.k_supplies_up = "+ 提供收益!"
    G.localization.misc.dictionary.k_supplydrop = "空降补给!"
    G.localization.misc.dictionary.k_recruit = "招募!"
	G.localization.misc.dictionary.k_promotion = "晋升!"
    G.localization.misc.dictionary.k_mercenary_pay = "发薪日!"
    G.localization.misc.dictionary.k_mercenary_destroy = "散会!"
    
    
    init_localization()

    --Create and register jokers
    for k, v in pairs(jokers) do
        if not config.vanillaart and string.match(k,'cosmic') then
            v.pos.y=v.pos.y+1
        end
        local joker = SMODS.Joker:new(v.name, k, v.ability, v.pos, { name = v.name, text = v.text }, v.rarity, v.cost, true, true, v.blueprint_compat, v.eternal_compat, v.effect, "CombataceJokers",v.soul_pos)
        -- SMODS.Joker:new(name, slug, config, spritePos, tloc_tx, rarity, cost, unlocked, discovered, blueprint_compat, eternal_compat, effect, atlas, soul_pos)
        joker:register()
        --added calculate function into jokers to make code cleaner
        SMODS.Jokers[joker.slug].calculate=v.calculate
        --added loc_def function into jokers to make code cleaner
        SMODS.Jokers[joker.slug].loc_def=v.loc_def
        if(v.tooltip ~= nil) then
            SMODS.Jokers[joker.slug].tooltip=v.tooltip
        end
    end
    --Create sprite atlas
    SMODS.Sprite:new("CombataceJokers", SMODS.findModByID("CombataceJokers").path, "CombataceJokers.png", 71, 95, "asset_atli"):register()
end	

----------------------------------------------
------------MOD CODE END----------------------
