--- STEAMODDED HEADER
--- MOD_NAME: Tier4Sub
--- MOD_ID: Tier4Sub
--- MOD_AUTHOR: [sishui]
--- MOD_DESCRIPTION: 四级优惠券 
--- BADGE_COLOUR: 000000

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.VoucherV4()

    local Card_apply_to_run_ref = Card.apply_to_run
    function Card:apply_to_run(center)
        local center_table = {
            name = center and center.name or self and self.ability.name,
            extra = center and center.config.extra or self and self.ability.extra
        }
        if center_table.name == 'Overflowing four' then
            G.E_MANAGER:add_event(Event({func = function()
                change_shop_size(1)
                return true end }))
        end
        if center_table.name == 'Money four1' then
            G.E_MANAGER:add_event(Event({func = function()
                G.GAME.discount_percent = center_table.extra
                for k, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true end }))
        end
        if center_table.name == 'Reroll four' then
            G.E_MANAGER:add_event(Event({func = function()
                G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + self.ability.extra
                --G.GAME.current_round.free_rerolls = math.max(0, G.GAME.current_round.free_rerolls + self.ability.extra)
                return true end }))
        end
        if center_table.name == 'Glow in the four' then
            G.E_MANAGER:add_event(Event({func = function()
                G.GAME.edition_rate = center_table.extra
                return true end }))
        end
        if center_table.name == 'Happy Little four' then
            G.hand:change_size(1)
        end
        if center_table.name == 'Round of Applausefour' then
            G.GAME.round_resets.hands = G.GAME.round_resets.hands + center_table.extra
            ease_hands_played(center_table.extra)
        end
        if center_table.name == 'Down to four' then
            G.GAME.round_resets.discards = G.GAME.round_resets.discards + center_table.extra
            ease_discard(center_table.extra)
        end
        if center_table.name == 'Neutral four' then
            G.E_MANAGER:add_event(Event({func = function()
                if G.jokers then 
                    G.jokers.config.card_limit = G.jokers.config.card_limit + 1
                end
                return true end }))
        end
        if center_table.name == 'Money four2' then
            G.E_MANAGER:add_event(Event({func = function()
                G.GAME.interest_cap = center_table.extra
                return true end }))
        end

        if center_table.name == 'In the four...' then
            ease_ante(-center_table.extra)
            G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
            G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante-center_table.extra
            G.GAME.round_resets.hands = G.GAME.round_resets.hands - center_table.extra
            G.GAME.round_resets.discards = G.GAME.round_resets.discards - center_table.extra
            ease_hands_played(-center_table.extra)
            ease_discard(-center_table.extra)
            end

        Card_apply_to_run_ref(self, center)
    end
    




    local Tier4Sub = SMODS.findModByID("Tier4Sub")
    local T4Vouchers = SMODS.Sprite:new("Tier4Vouchers", Tier4Sub.path, "T4_Vouchers.png", 71, 95, "asset_atli")
    T4Vouchers:register()

--Vouchers--

    local overstock_four = SMODS.Voucher:new('Overflowing four', 'overstock_four', {}, { x = 0, y = 0 }, {
        name = '库存过剩最终版',
        text = { 
            '商店内',
            '卡牌槽位{C:attention}+1{}'
        },
    }, 10, true, true, true, {'v_overstock_three'}, 'Tier4Vouchers')

    local money_four1 = SMODS.Voucher:new('Money four1', 'money_four1', {extra = 90}, { x = 3, y = 0 }, {
        name = '白嫖价',
        text = { 
            '所有卡牌和卡牌包',
            '在店内均可享受{C:attention}90%{}折扣'
        },
    }, 10, true, true, true, {'v_money_mint'}, 'Tier4Vouchers')

    local reroll_four = SMODS.Voucher:new('Reroll four', 'reroll_four', {extra = 10}, { x = 0, y = 1 }, {
        name = '重掷最终版',
        text = { 
            '本回合中立刻获得',
            '{C:attention}10{}次免费重掷'
        },
    }, 10, true, true, true, {'v_reroll_addict'}, 'Tier4Vouchers')

    local glow_in_four = SMODS.Voucher:new('Glow in the four', 'glow_in_four', {extra = 8}, { x = 4, y = 0 }, {
        name = '全彩',
        text = { 
            "{C:dark_edition}闪箔卡{}、{C:dark_edition}镭射卡{}和",
            "{C:dark_edition}多彩卡{}",
            "出现频率{C:attention}X8{}"
        },
    }, 10, true, true, true, {'v_glow_in_dark'}, 'Tier4Vouchers')


    local happy_four = SMODS.Voucher:new('Happy Little four', 'happy_four', {extra = 6}, { x = 3, y = 1 }, {
        name = '宇宙画',
        text = { 
            "手牌上限{C:attention}+1{}",
        },
    }, 10, true, true, true, {'v_happy_accident'}, 'Tier4Vouchers')

    local applausefour = SMODS.Voucher:new('Round of Applausefour', 'applausefour', {extra = 1}, { x = 5, y = 0 }, {
        name = '四肢',
        text = { 
            "每回合",
            "出牌次数",
            "永久{C:blue}+1{}"
        },
    }, 10, true, true, true, {'v_applause'}, 'Tier4Vouchers')

    local down_to_four = SMODS.Voucher:new('Down to four', 'down_to_four', {extra = 1}, { x = 6, y = 0 }, {
        name = '十重奥术',
        text = { 
            "每回合",
            "弃牌次数",
            "永久{C:red}+1{}"
        },
    }, 10, true, true, true, {'v_down_to_zero'}, 'Tier4Vouchers')

    local in_the_four = SMODS.Voucher:new('In the four...', 'in_the_four', {extra = 1}, { x = 5, y = 1 }, {
        name = '万物归零',
        text = { 
            "底注{C:attention}-1{}",
            "每回合",
            "出牌次数{C:blue}-1{}",
            "弃牌次数{C:red}-1{}"
        },
    }, 10, true, true, true, {'v_in_the_beginning'}, 'Tier4Vouchers')
    
    local money_four2 = SMODS.Voucher:new('Money four2', 'money_four2', {extra = 400}, { x = 1, y = 1 }, {
        name = '基金密林',
        text = { 
            "每回合",
            "可获得利息的上限",
            "提高到{C:money}$80{}"
        },
    }, 10, true, true, true, {'v_money_forest'}, 'Tier4Vouchers')


    local neutral_four = SMODS.Voucher:new('Neutral four', 'neutral_four', {}, { x = 7, y = 0 }, {
        name = '超弦',
        text = { 
            "小丑牌槽位{C:dark_edition}+1{}"
        },
    }, 10, true, true, true, {'v_neutral_particle'}, 'Tier4Vouchers')

    overstock_four:register()
    money_four1:register()
    glow_in_four:register()
    reroll_four:register()
    applausefour:register()
    down_to_four:register()
    money_four2:register()
    neutral_four:register()
    in_the_four:register()
    happy_four:register()
end

----------------------------------------------
------------MOD CODE END----------------------