--- STEAMODDED HEADER
--- MOD_NAME: Bmjokers
--- MOD_ID: Bmjokers
--- MOD_AUTHOR: [BaiMao]
--- MOD_DESCRIPTION: Create more powerful jokers
--- BADGE_COLOUR: D9D919
--- VERSION: 1.0.3
----------------------------------------------
------------MOD CODE -------------------------

G.FUNCS.microchip_leftcompat = function(e)
    if e.config.ref_table.ability.leftblueprint_compat ~= e.config.ref_table.ability.leftblueprint_compat_check then
        if e.config.ref_table.ability.leftblueprint_compat == 'compatible' then 
            e.config.colour = mix_colours(G.C.GREEN, G.C.JOKER_GREY, 0.8)
            e.config.ref_table.ability.leftblueprint_compat_ui = ' 左侧兼容 '
        elseif e.config.ref_table.ability.leftblueprint_compat == 'incompatible' then
            e.config.colour = mix_colours(G.C.RED, G.C.JOKER_GREY, 0.8)
            e.config.ref_table.ability.leftblueprint_compat_ui = ' 左侧不兼容 '
        end
        e.config.ref_table.ability.leftblueprint_compat_check = e.config.ref_table.ability.leftblueprint_compat
    end
end

G.FUNCS.microchip_rightcompat = function(e)
    if e.config.ref_table.ability.rightblueprint_compat ~= e.config.ref_table.ability.rightblueprint_compat_check then
        if e.config.ref_table.ability.rightblueprint_compat == 'compatible' then 
            e.config.colour = mix_colours(G.C.GREEN, G.C.JOKER_GREY, 0.8)
            e.config.ref_table.ability.rightblueprint_compat_ui = ' 右侧兼容 '
        elseif e.config.ref_table.ability.rightblueprint_compat == 'incompatible' then
            e.config.colour = mix_colours(G.C.RED, G.C.JOKER_GREY, 0.8)
            e.config.ref_table.ability.rightblueprint_compat_ui = ' 右侧不兼容 '
        end
        e.config.ref_table.ability.rightblueprint_compat_check = e.config.ref_table.ability.rightblueprint_compat
    end
end

local generate_UIBox_ability_table_ref = Card.generate_UIBox_ability_table
function Card:generate_UIBox_ability_table()
    local generate_UIBox_ability_table_val = generate_UIBox_ability_table_ref(self)

    if self.ability and self.ability.name == 'Microchip' then
        self.ability.leftblueprint_compat_ui = self.ability.leftblueprint_compat_ui or ''; self.ability.leftblueprint_compat_check = nil
        self.ability.rightblueprint_compat_ui = self.ability.rightblueprint_compat_ui or ''; self.ability.rightblueprint_compat_check = nil
        local main_text = generate_UIBox_ability_table_val.main
        main_text[#main_text + 1] = (self.area and self.area == G.jokers) and {
            {
                n=G.UIT.C, config={align = "bm", minh = 0.4}, nodes={
                    {n=G.UIT.C, config={ref_table = self, align = "m", colour = G.C.JOKER_GREY, r = 0.05, padding = 0.06, func = 'microchip_leftcompat'}, nodes={
                        {n=G.UIT.T, config={ref_table = self.ability, ref_value = 'leftblueprint_compat_ui',colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.8}},
                    }}
                }
            }
        } or nil
        main_text[#main_text + 1] = (self.area and self.area == G.jokers) and {
            {
                n=G.UIT.C, config={align = "bm", minh = 0.4}, nodes={
                    {n=G.UIT.C, config={ref_table = self, align = "m", colour = G.C.JOKER_GREY, r = 0.05, padding = 0.06, func = 'microchip_rightcompat'}, nodes={
                        {n=G.UIT.T, config={ref_table = self.ability, ref_value = 'rightblueprint_compat_ui',colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.8}},
                    }}
                }
            }
        } or nil
        end
    return generate_UIBox_ability_table_val
end

SMODS.Atlas{
    key = 'heart',
    px = 71,
    py = 95,
    path = 'heart.png'
}

SMODS.Atlas{
    key = 'supermeteor',
    px = 71,
    py = 95,
    path = 'supermeteor.png'
}

SMODS.Atlas{
    key = 'smartcowboy',
    px = 71,
    py = 95,
    path = 'smartcowboy.png'
}

SMODS.Atlas{
    key = 'clover',
    px = 71,
    py = 95,
    path = 'clover.png'
}

SMODS.Atlas{
    key = 'duke',
    px = 71,
    py = 95,
    path = 'duke.png'
}

SMODS.Atlas{
    key = 'supergodcard',
    px = 71,
    py = 95,
    path = 'supergodcard.png'
}

SMODS.Atlas{
    key = 'chef',
    px = 71,
    py = 95,
    path = 'chef.png'
}

SMODS.Atlas{
    key = 'microchip',
    px = 71,
    py = 95,
    path = 'microchip.png'
}

SMODS.Joker{
    key = 'heart',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    soul_pos = { x = 1, y = 0 },
    loc_txt ={
        name = '腐化之心<骷髅模式>',
        text = {
            '拥有至少{C:money}$#1#{}时',
            '若最终得到的筹码',
            '{C:red}未达到{}所需筹码',
            '不会死亡并失去{C:money}$#2#{}',
            '{C:inactive}(#3#)'
        }
    },
    atlas = 'heart',
    config = { extra = {price = 100, cost_lost = 100} },
    loc_vars = function(self, info_queue, card)
        local state
        if G.GAME.dollars >= card.ability.extra.price then
            state = '已激活'
        else
            state = '未激活'
        end
        return { vars = {card.ability.extra.price, card.ability.extra.cost_lost, state} }
    end,
    calculate = function(self, card, context)
        if context.end_of_round then
            if context.game_over and G.GAME.dollars >= card.ability.extra.price then
                G.E_MANAGER:add_event(Event({func = function()
                    ease_dollars(-card.ability.extra.cost_lost)
                    G.hand_text_area.blind_chips:juice_up()
                    G.hand_text_area.game_chips:juice_up()
                    play_sound('tarot1')
                return true end}))
                return {
                    message = localize('k_saved_ex'),
                    saved = true,
                    colour = G.C.RED
                }
            end
        end
    end
}

SMODS.Joker{
    key = 'supermeteor',
    name = 'Supermeteor',
    rarity = 3,
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={
        name = '巨型流星',
        text = {
            '使用{C:planet}星球牌{}时',
            '{C:attention}额外提升{}一次牌型等级'
        }
    },
    atlas = 'supermeteor',
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
    end
}

SMODS.Joker{
    key = 'smartcowboy',
    name = 'Smartcowboy',
    rarity = 3,
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={
        name = '精装牛仔',
        text = {
            '每拥有{C:money}$#2#{}',
            '{X:mult,C:white}X#1#{}倍率',
            '{C:inactive}(当前为{X:mult,C:white}X#3#{C:inactive})'
        }
    },
    atlas = 'smartcowboy',
    config = { extra = {perxmult = 0.3, perdollar = 30, x_mult = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.perxmult, card.ability.extra.perdollar, card.ability.extra.x_mult,} }
    end,
    calculate = function(self, card, context)
        local smartcowboy_mult = math.floor((G.GAME.dollars + (G.GAME.dollar_buffer or 0))/card.ability.extra.perdollar)
        card.ability.extra.x_mult = 1 + card.ability.extra.perxmult * math.abs(smartcowboy_mult)
      if context.joker_main and context.cardarea == G.jokers then
        if card.ability.extra.x_mult > 1 then
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.x_mult } },
                Xmult_mod = card.ability.extra.x_mult
            }
        end
      end
    end
}

SMODS.Joker{
    key = 'clover',
    rarity = 3,
    cost = 9,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={
        name = '四叶草',
        text = {
            '每{C:attention}售出{}一张小丑有{C:green}#1#/#2#{}几率',
            '生成{C:attention}#3#{}张随机的{C:planet}星球牌{}或{C:tarot}塔罗牌{}',
            '选择{C:attention}盲注{}时摧毁右侧的小丑牌',
            '若该小丑牌的价值低于{C:money}$3{}',
            '则生成{C:attention}#4#{}张随机的{C:planet}星球牌{}或{C:tarot}塔罗牌{}',
            '反之则生成{C:attention}#4#{}张随机的{C:dark_edition}优质{}{C:spectral}幻灵牌{}',
            '{C:inactive}(必须有空位){}'
        }
    },
    atlas = 'clover',
    config = { extra = {odd = 2, amount = 1, amounts = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odd, card.ability.extra.amount, card.ability.extra.amounts} }
    end,
    calculate = function(self, card, context)
        if context.setting_blind and not (context.blueprint_card or card).getting_sliced and not card.debuff then
            local clo_pos = nil
            for k, v in pairs(G.jokers.cards) do
                if G.jokers.cards[k] == card then clo_pos = k end
            end
            if clo_pos and G.jokers.cards[clo_pos + 1] and not G.jokers.cards[clo_pos + 1].ability.eternal and not G.jokers.cards[clo_pos + 1].getting_sliced then
                local joker_to_destroy = G.jokers.cards[clo_pos + 1]
                joker_to_destroy.getting_sliced = true
                G.GAME.joker_buffer = G.GAME.joker_buffer - 1
                G.E_MANAGER:add_event(Event({func = function()
                    card:juice_up(0.8, 0.8)
                    joker_to_destroy:start_dissolve({G.C.RED}, nil, 1.6)
                return true end }))
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    local consumeables_to_create = math.min(card.ability.extra.amounts, G.consumeables.config.card_limit - (#G.consumeables.cards + G.GAME.consumeable_buffer))
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + consumeables_to_create
                    if joker_to_destroy.sell_cost < 3 then
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                for i = 1, consumeables_to_create do
                                    local card = create_card('Tarot_Planet', G.consumeables, nil, nil, nil, nil, nil, 'clo')
                                    card:add_to_deck()
                                    G.consumeables:emplace(card)
                                    G.GAME.consumeable_buffer = 0
                                end
                                return true
                            end}))
                            card_eval_status_text(card, 'extra', nil, nil, nil, {message = '落叶', colour = G.C.GREEN})
                    elseif joker_to_destroy.sell_cost >= 3 then
                        local useful_list = {
                        "c_immolate",
                        "c_cryptid",
                        "c_talisman",
                        "c_deja_vu",
                        "c_trance",
                        "c_medium"
                        }
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                for i = 1, consumeables_to_create do
                                    local chosen_spectral = pseudorandom_element(useful_list, pseudoseed('clo'))
                                    local card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, chosen_spectral, 'clo')
                                    card:add_to_deck()
                                    G.consumeables:emplace(card)
                                    G.GAME.consumeable_buffer = 0
                                end
                                return true
                            end}))
                    end
                        card_eval_status_text(card, 'extra', nil, nil, nil, {message = '落叶', colour = G.C.GREEN})
                end
            end
        end
        if context.selling_card and context.card.ability.set == "Joker" then
            if (pseudorandom('clover') < G.GAME.probabilities.normal/card.ability.extra.odd) then
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    local consumeables_to_create_2 = math.min(card.ability.extra.amount, G.consumeables.config.card_limit - (#G.consumeables.cards + G.GAME.consumeable_buffer))
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + consumeables_to_create_2
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            for i = 1, consumeables_to_create_2 do
                                local card = create_card('Tarot_Planet', G.consumeables, nil, nil, nil, nil, nil, 'clo')
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                            end
                            return true
                        end}))
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = '落叶', colour = G.C.GREEN}) 
                end
            end
        end
    end
}

SMODS.Joker{
    key = 'duke',
    rarity = 3,
    cost = 9,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={
        name = '公爵',
        text = {
            '留在手中的每一张{C:attention}人头牌{}',
            '会给予{X:mult,C:white}X#1#{}倍率',
            '如果同时还是{C:attention}钢铁牌{}',
            '{C:attention}重复触发{}额外{C:attention}#2#{}次所有效果',
        }
    },
    atlas = 'duke',
    config = { extra = {x_mult = 1.2, repetitions = 2} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.x_mult, card.ability.extra.repetitions} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.hand then
            if context.other_card ~= nill and context.other_card:is_face() and not context.other_card.debuff then
                if context.individual and not context.end_of_round then
                    return{
                        x_mult = card.ability.extra.x_mult,
                        card = card
                    }
                elseif context.repetition and not context.end_of_round then
                    if context.other_card ~= nill and context.other_card.ability.effect == 'Steel Card' then
                        return{
                            message = localize('k_again_ex'),
                            repetitions = card.ability.extra.repetitions,
                            card = card
                        }
                    end
                elseif context.repetition and context.end_of_round then
                    if context.other_card ~= nill and context.other_card.ability.effect == 'Steel Card' then
                        if (next(context.card_effects[1]) or #context.card_effects > 1) then
                            return{
                                message = localize('k_again_ex'),
                                repetitions = card.ability.extra.repetitions,
                                card = card
                            }
                        end
                    end
                end
            end
        end
    end
}

SMODS.Joker{
    key = 'supergodcard',
    name = 'Supergodcard',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={
        name = '大神卡',
        text = {
            '击败{C:attention}Boss盲注{}时',
            '为{C:attention}消耗牌{}槽位中所有牌添加{C:dark_edition}负片{}',
            '每回合结束时',
            '获得等同所有{C:attention}消耗牌{}售价的资金',
            '{C:inactive}(当前{C:money}$#3#{C:inactive})'
        }
    },
    atlas = 'supergodcard',
    config = { extra = {times = 1, suml = 0} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.times, card.ability.extra.suml, card.ability.extra.suml*card.ability.extra.times} }
    end,
    calculate = function(self, card, context)
        if G.GAME.blind.boss and context.end_of_round and not context.blueprint then
            for k, v in ipairs(G.consumeables.cards) do
                if not (v.edition and v.edition.type == 'negative') then
                    v:set_edition({negative =true},true)
                end
            end
        end
        local sum = 0
        --for k, v in ipairs(G.consumeables.cards) do
            --sum = sum + G.consumeables.cards[k].sell_cost 等效替代
        --end
        for i = 1, #G.consumeables.cards do
            sum = sum + G.consumeables.cards[i].sell_cost 
        end
        card.ability.extra.suml = sum
    end,
    calc_dollar_bonus = function(self, card)
        local bonus = math.abs(card.ability.extra.suml*card.ability.extra.times)
        if bonus > 0 then return bonus end
    end
}

SMODS.Joker{
    key = 'chef',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={
        name = '粗心大厨',
        text = {
            "选择{C:attention}盲注{}时",
            "随机生成一张",
            "{C:dark_edition}奇怪{}的{C:attention}食物小丑{}",
            "{C:inactive}(必须有空位){}"
        }
    },
    atlas = 'chef',
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            if not (context.blueprint_card or card).getting_sliced and #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                local jokers_to_create = math.min(1, G.jokers.config.card_limit - (#G.jokers.cards + G.GAME.joker_buffer))
                local food_list = {
                    "j_popcorn",
                    "j_gros_michel",
                    "j_ice_cream",
                    "j_turtle_bean",
                    "j_ramen",
                    "j_selzer",
                    "j_diet_cola",
                    "j_cavendish",
                    "j_egg"
                }
                G.GAME.joker_buffer = G.GAME.joker_buffer + jokers_to_create
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local chosen_joker = pseudorandom_element(food_list, pseudoseed('ctcfd'))
                        local card = create_card('Joker', G.jokers, nil, nil, nil, nil, chosen_joker, nil)
                        local foodeffect = math.random(1, 5)
                        if foodeffect == 1 then
                            card:set_debuff(true)
                            card:set_perishable(true)
                            card.ability.perish_tally = 0
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = '烤糊了...', colour = G.C.MULT})
                        elseif foodeffect == 2 then
                            card:set_perishable(true)
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = '保质期有点短...', colour = G.C.MULT})
                        elseif foodeffect == 3 then
                            card:set_rental(true)
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = '还想吃霸王餐?', colour = G.C.MULT})
                        elseif foodeffect == 4 then
                            card.ability.eternal = true
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = '这是道硬菜', colour = G.C.MULT})
                        elseif foodeffect == 5 then
                            card.pinned = true
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = '靠左排队有序用餐', colour = G.C.MULT})
                        end
                        local foodedition = math.random(1, 30)
                        if foodedition == 1 then
                        card:set_edition({negative = true})
                        elseif foodedition == 2 then
                        card:set_edition({foil = true})
                        elseif foodedition == 3 then
                        card:set_edition({holo = true})
                        elseif foodedition == 4 then
                        card:set_edition({polychrome = true})
                        end
                        card:add_to_deck()
                        G.jokers:emplace(card)
                        G.GAME.joker_buffer = 0
                        return true
                    end}))
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE}) 
            end
        end
    end
}

SMODS.Joker{
    key = 'microchip',
    name = 'Microchip',
    rarity = 3,
    cost = 15,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={
        name = '芯片',
        text = {
            '复制左右两侧',
            '{C:attention}小丑牌{}的能力'
        }
    },
    atlas = 'microchip',
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        local left_joker = nil
        local right_joker = nil
        local transfer_ret = nil
        local green_list = {}
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] == card then
                local index = i - 1
                local index1 = i + 1
                local index2 = index1
                local index3 = 1
                local index4 = index3
                while index > 0 and G.jokers.cards[index].ability and G.jokers.cards[index].ability.name == 'Microchip' and not G.jokers.cards[index].debuff do
                    index = index - 1
                end
                if index > 0 and G.jokers.cards[index].ability and G.jokers.cards[index].ability.name == 'Blueprint' and not G.jokers.cards[index].debuff then
                    while index1 <= #G.jokers.cards and G.jokers.cards[index1].ability and (G.jokers.cards[index1].ability.name == 'Microchip' or G.jokers.cards[index1].ability.name == 'Blueprint') and not G.jokers.cards[index1].debuff do
                        index1 = index1 + 1
                    end
                    if index1 <= #G.jokers.cards and G.jokers.cards[index1].ability and G.jokers.cards[index1].ability.name == 'Brainstorm' and not G.jokers.cards[index1].debuff then
                        while G.jokers.cards[index3].ability and (G.jokers.cards[index3].ability.name == 'Microchip' or G.jokers.cards[index3].ability.name == 'Blueprint') and not G.jokers.cards[index3].debuff do
                            index3 = index3 + 1
                        end
                        if G.jokers.cards[index3].ability and G.jokers.cards[index3].ability.name ~= 'Brainstorm' then
                            left_joker = G.jokers.cards[index3]
                        end
                    elseif index1 <= #G.jokers.cards and G.jokers.cards[index1].ability and G.jokers.cards[index1].ability.name ~= 'Brainstorm' then
                        left_joker = G.jokers.cards[index1]
                    end
                elseif index > 0 and G.jokers.cards[index].ability and G.jokers.cards[index].ability.name == 'Brainstorm' and not G.jokers.cards[index].debuff then
                    while G.jokers.cards[index3].ability and (G.jokers.cards[index3].ability.name == 'Microchip' or G.jokers.cards[index3].ability.name == 'Blueprint') and not G.jokers.cards[index3].debuff do
                        index3 = index3 + 1
                    end
                    if G.jokers.cards[index3].ability and G.jokers.cards[index3].ability.name ~= 'Brainstorm' then
                        left_joker = G.jokers.cards[index3]
                    end
                elseif index > 0 then
                    left_joker = G.jokers.cards[index]
                end
                while index2 <= #G.jokers.cards and G.jokers.cards[index2].ability and (G.jokers.cards[index2].ability.name == 'Microchip' or G.jokers.cards[index2].ability.name == 'Blueprint') and not G.jokers.cards[index2].debuff do
                    index2 = index2 + 1
                end
                if index2 <= #G.jokers.cards and G.jokers.cards[index2].ability and G.jokers.cards[index2].ability.name == 'Brainstorm' and not G.jokers.cards[index2].debuff then
                    while G.jokers.cards[index4].ability and (G.jokers.cards[index4].ability.name == 'Microchip' or G.jokers.cards[index4].ability.name == 'Blueprint') and not G.jokers.cards[index4].debuff do
                        index4 = index4 + 1
                    end
                    if G.jokers.cards[index4].ability and G.jokers.cards[index4].ability.name ~= 'Brainstorm' then
                        right_joker = G.jokers.cards[index4]
                    end
                elseif index2 <= #G.jokers.cards then
                    right_joker = G.jokers.cards[index2]
                end
            end
        end
        if left_joker then
            green_list[#green_list + 1] = left_joker
        end
        if right_joker then
            green_list[#green_list + 1] = right_joker
        end
        if #green_list ~= 0 then
            for i = 1, #green_list do
                if green_list[i] and green_list[i] ~= card then
                    context.blueprint_card = context.blueprint_card or card
                    green_list[i]:calculate_joker(context)
                end
            end
        end
    end
}

--[[
SMODS.Joker{
    key = 'heart',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    soul_pos = { x = 1, y = 0 },
    loc_txt ={
        name = '腐化之心',
        text = {
            '每次出牌时',
            '使{C:attention}已积累{}的分数{C:dark_edition}X2'
        }
    },
    atlas = 'heart',
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.before then
            G.GAME.chips = G.GAME.chips*2
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "X2已得分数", colour = G.C.DARK_EDITION})
        end
    end
}

SMODS.Joker{
    key = 'heart',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    soul_pos = { x = 1, y = 0 },
    loc_txt ={
        name = '腐化之心<杀戮模式>',
        text = {
            '每次出牌计分后',
            '无视永恒摧毁右侧的小丑牌',
            '并获得其售价{C:attention}#1#倍{}的{X:mult,C:white}X#2#{}倍率',
            '{C:inactive}(当前为{X:mult,C:white}X#3#{C:inactive})'
        }
    },
    atlas = 'heart',
    config = { extra = {persellcost = 2, perxmult = 0.5, x_mult = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.persellcost, card.ability.extra.perxmult, card.ability.extra.x_mult} }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.after and not (context.blueprint_card or card).getting_sliced and not card.debuff then
            local hea_pos = nil
            for k, v in pairs(G.jokers.cards) do
                if G.jokers.cards[k] == card then hea_pos = k end
            end
            if hea_pos and G.jokers.cards[hea_pos + 1] and not G.jokers.cards[hea_pos + 1].getting_sliced then
                local joker_to_destroy = G.jokers.cards[hea_pos + 1]
                joker_to_destroy.getting_sliced = true
                G.GAME.joker_buffer = G.GAME.joker_buffer - 1
                G.E_MANAGER:add_event(Event({func = function()
                    G.GAME.joker_buffer = 0
                    card.ability.extra.x_mult = card.ability.extra.x_mult + joker_to_destroy.sell_cost*card.ability.extra.persellcost*card.ability.extra.perxmult
                    card:juice_up(0.8, 0.8)
                    joker_to_destroy:start_dissolve({G.C.RED}, nil, 1.6)
                return true end }))
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.x_mult + joker_to_destroy.sell_cost*card.ability.extra.persellcost*card.ability.extra.perxmult}}})
            end
        end
        if context.joker_main and context.cardarea == G.jokers then
            if card.ability.extra.x_mult > 1 then
            return {
                message = localize {type = 'variable', key = 'a_xmult', vars = {card.ability.extra.x_mult} },
                Xmult_mod = card.ability.extra.x_mult
            }
            end
        end
    end
}

SMODS.Joker{
    key = 'heart',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    soul_pos = { x = 1, y = 0 },
    loc_txt ={
        name = '腐化之心<骷髅模式>',
        text = {
            '拥有至少{C:money}$#1#{}时',
            '若最终得到的筹码',
            '{C:red}未达到{}所需筹码',
            '不会死亡并失去{C:money}$#2#{}',
            '{C:inactive}(#3#)'
        }
    },
    atlas = 'heart',
    config = { extra = {price = 100, cost_lost = 100} },
    loc_vars = function(self, info_queue, card)
        local state
        if G.GAME.dollars >= card.ability.extra.price then
            state = '已激活'
        else
            state = '未激活'
        end
        return { vars = {card.ability.extra.price, card.ability.extra.cost_lost, state} }
    end,
    calculate = function(self, card, context)
        if context.end_of_round then
            if context.game_over and G.GAME.dollars >= card.ability.extra.price then
                G.E_MANAGER:add_event(Event({func = function()
                    ease_dollars(-card.ability.extra.cost_lost)
                    G.hand_text_area.blind_chips:juice_up()
                    G.hand_text_area.game_chips:juice_up()
                    play_sound('tarot1')
                return true end}))
                return {
                    message = localize('k_saved_ex'),
                    saved = true,
                    colour = G.C.RED
                }
            end
        end
    end
}
]]

----------------------------------------------
------------MOD CODE END----------------------