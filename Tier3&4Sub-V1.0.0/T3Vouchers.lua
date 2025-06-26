--- STEAMODDED HEADER
--- MOD_NAME: Tier3Sub
--- MOD_ID: Tier3Sub
--- MOD_AUTHOR: [Crimson Heart]
--- MOD_DESCRIPTION: Custom Tier 3 
--- BADGE_COLOUR: 990000

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.VoucherV3()

    local Card_apply_to_run_ref = Card.apply_to_run
    function Card:apply_to_run(center)
        local center_table = {
            name = center and center.name or self and self.ability.name,
            extra = center and center.config.extra or self and self.ability.extra
        }
        if center_table.name == 'Overflowing Stock' then
            G.E_MANAGER:add_event(Event({func = function()
                change_shop_size(1)
                return true end }))
        end
        if center_table.name == 'Money Minting' then
            G.E_MANAGER:add_event(Event({func = function()
                G.GAME.discount_percent = center_table.extra
                for k, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true end }))
        end
        if center_table.name == 'Reroll Addiction' then
            G.E_MANAGER:add_event(Event({func = function()
                G.GAME.round_resets.reroll_cost = G.GAME.round_resets.reroll_cost - self.ability.extra
                G.GAME.current_round.reroll_cost = math.max(0, G.GAME.current_round.reroll_cost - self.ability.extra)
                return true end }))
        end
        if center_table.name == 'Glow in the Dark' then
            G.E_MANAGER:add_event(Event({func = function()
                G.GAME.edition_rate = center_table.extra
                return true end }))
        end
        if center_table.name == 'Happy Little Accident' then
            G.hand:change_size(1)
        end
        if center_table.name == 'Round of Applause' then
            G.GAME.round_resets.hands = G.GAME.round_resets.hands + center_table.extra
            ease_hands_played(center_table.extra)
        end
        if center_table.name == 'Down to Zero' then
            G.GAME.round_resets.discards = G.GAME.round_resets.discards + center_table.extra
            ease_discard(center_table.extra)
        end
        if center_table.name == 'Neutral Particle' then
            G.E_MANAGER:add_event(Event({func = function()
                if G.jokers then 
                    G.jokers.config.card_limit = G.jokers.config.card_limit + 1
                end
                return true end }))
        end
        if center_table.name == 'Money Forest' then
            G.E_MANAGER:add_event(Event({func = function()
                G.GAME.interest_cap = center_table.extra
                return true end }))
        end

        if center_table.name == 'In the Beginning...' then
            ease_ante(-center_table.extra)
            G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
            G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante-center_table.extra
            G.GAME.round_resets.hands = G.GAME.round_resets.hands - center_table.extra
            G.GAME.round_resets.discards = G.GAME.round_resets.discards - center_table.extra
            ease_hands_played(-center_table.extra)
            ease_discard(-center_table.extra)
            end

            if center_table.name == 'Tarot Factory' then
                G.E_MANAGER:add_event(Event({func = function()
                    G.GAME.tarot_rate = 4*center_table.extra
                    return true end }))
            end
            if center_table.name == 'Planet Factory' then
                G.E_MANAGER:add_event(Event({func = function()
                    G.GAME.planet_rate = 4*center_table.extra
                    return true end }))
            end

        Card_apply_to_run_ref(self, center)
    end
    




    local Tier3Sub = SMODS.findModByID("Tier3Sub")
    local T3Vouchers = SMODS.Sprite:new("Tier3Vouchers", Tier3Sub.path, "T3_Vouchers.png", 71, 95, "asset_atli")
    T3Vouchers:register()

--Vouchers--

    local overstock_three = SMODS.Voucher:new('Overflowing Stock', 'overstock_three', {}, { x = 0, y = 0 }, {
        name = '库存过剩究极版',
        text = { 
            '商店内',
            '卡牌槽位{C:attention}+1{}'
        },
    }, 10, true, true, true, {'v_overstock_plus'}, 'Tier3Vouchers')

    local money_mint = SMODS.Voucher:new('Money Minting', 'money_mint', {extra = 75}, { x = 3, y = 0 }, {
        name = '骨折价',
        text = { 
            '所有卡牌和卡牌包',
            '在店内均可享受{C:attention}75%{}折扣'
        },
    }, 10, true, true, true, {'v_liquidation'}, 'Tier3Vouchers')

    local reroll_addict = SMODS.Voucher:new('Reroll Addiction', 'reroll_addict', {extra = 1}, { x = 0, y = 1 }, {
        name = '重掷究极版',
        text = { 
            '重掷费用',
            '减少{C:money}$1{}'
        },
    }, 10, true, true, true, {'v_reroll_glut'}, 'Tier3Vouchers')

    local glow_in_dark = SMODS.Voucher:new('Glow in the Dark', 'glow_in_dark', {extra = 6}, { x = 4, y = 0 }, {
        name = '夺目',
        text = { 
            "{C:dark_edition}闪箔卡{}、{C:dark_edition}镭射卡{}和",
            "{C:dark_edition}多彩卡{}",
            "出现频率{C:attention}X6{}"
        },
    }, 10, true, true, true, {'v_glow_up'}, 'Tier3Vouchers')


    local happy_accident = SMODS.Voucher:new('Happy Little Accident', 'happy_accident', {extra = 6}, { x = 3, y = 1 }, {
        name = '星河画',
        text = { 
            "手牌上限{C:attention}+1{}",
        },
    }, 10, true, true, true, {'v_palette'}, 'Tier3Vouchers')

    local applause = SMODS.Voucher:new('Round of Applause', 'applause', {extra = 1}, { x = 5, y = 0 }, {
        name = '双手',
        text = { 
            "每回合",
            "出牌次数",
            "永久{C:blue}+1{}"
        },
    }, 10, true, true, true, {'v_nacho_tong'}, 'Tier3Vouchers')

    local down_to_zero = SMODS.Voucher:new('Down to Zero', 'down_to_zero', {extra = 1}, { x = 6, y = 0 }, {
        name = '多重奥术',
        text = { 
            "每回合",
            "弃牌次数",
            "永久{C:red}+1{}"
        },
    }, 10, true, true, true, {'v_recyclomancy'}, 'Tier3Vouchers')

    local in_the_beginning = SMODS.Voucher:new('In the Beginning...', 'in_the_beginning', {extra = 1}, { x = 5, y = 1 }, {
        name = '万法源头',
        text = { 
            "底注{C:attention}-1{}",
            "每回合",
            "出牌次数{C:blue}-1{}",
            "弃牌次数{C:red}-1{}"
        },
    }, 10, true, true, true, {'v_petroglyph'}, 'Tier3Vouchers')
    
    local money_forest = SMODS.Voucher:new('Money Forest', 'money_forest', {extra = 200}, { x = 1, y = 1 }, {
        name = '基金森林',
        text = { 
            "每回合",
            "可获得利息的上限",
            "提高到{C:money}$40{}"
        },
    }, 10, true, true, true, {'v_money_tree'}, 'Tier3Vouchers')

    local tarot_factory = SMODS.Voucher:new('Tarot Factory', 'tarot_factory', {extra = 64/4, extra_disp = 8}, { x = 1, y = 0 }, {
        name = '塔罗工厂',
        text = { 
            "商店内",
            "{C:tarot}塔罗牌{}",
            "出现频率{C:attention}X8{}"
        },
    }, 10, true, true, true, {'v_tarot_tycoon'}, 'Tier3Vouchers')

    local planet_factory = SMODS.Voucher:new('Planet Factory', 'planet_factory', {extra = 64/4, extra_disp = 8}, { x = 2, y = 0 }, {
        name = '星球工厂',
        text = { 
            "商店内",
            "{C:planet}星球牌{}",
            "出现频率{C:attention}X8{}"
        },
    }, 10, true, true, true, {'v_planet_tycoon'}, 'Tier3Vouchers')

    local neutral_particle = SMODS.Voucher:new('Neutral Particle', 'neutral_particle', {}, { x = 7, y = 0 }, {
        name = '暗物质',
        text = { 
            "小丑牌槽位{C:dark_edition}+1{}"
        },
    }, 10, true, true, true, {'v_antimatter'}, 'Tier3Vouchers')

    overstock_three:register()
    money_mint:register()
    glow_in_dark:register()
    reroll_addict:register()
    applause:register()
    down_to_zero:register()
    tarot_factory:register()
    planet_factory:register()
    money_forest:register()
    neutral_particle:register()
    in_the_beginning:register()
    happy_accident:register()
end

----------------------------------------------
------------MOD CODE END----------------------