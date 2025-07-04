--- STEAMODDED HEADER
--- MOD_NAME: Gold's Cards
--- MOD_ID: gold
--- MOD_AUTHOR: [Me]
--- MOD_DESCRIPTION: i try
--- BADGE_COLOUR: ff8800
--- PREFIX: gold

----------------------------------------------
------------MOD CODE -------------------------


SMODS.Atlas({
    key = "consumables",
    path = "Sprite.png",
    px = 71,
    py = 95,
})
SMODS.Atlas({
    key = "enhancements",
    path = "SpriteCards.png",
    px = 71,
    py = 95,
})

SMODS.Enhancement {
	key = 'rainbow',
	loc_txt = {
		name = "彩虹牌",
		text = {
			'{X:mult,C:white,s:1.1}X3{} 倍率',
		}
	},
	config = {Xmult = 3},
	pos = { x = 1, y = 0 },
	unlocked = true,
	discovered = true,
	atlas = 'enhancements',
    loc_vars = function(self, info_queue, center)
        return {vars = {}}
    end
}

SMODS.Consumable {
    key = 'spectrum',
    loc_txt = {
        name = '光谱',
        text = {
            '将 {C:attention}2{}张牌变为',
            '{C:red,E:1,s:2}彩{}{C:attention,E:1,s:2}虹{}{E:1,s:2}牌{} '}
    },
    set = ('Spectral'),
    atlas = "consumables",
    config = { max_highlighted = 2,  extra = { mod_conv = "m_gold_rainbow" }},
    pos = { x = 3, y = 6 },
    cost = 4,
    unlocked = true,
    discovered = true,
    can_use = function(self, card)
        if G.hand and (#G.hand.highlighted <= self.config.max_highlighted) and G.hand.highlighted[1] then
            -- local condition = true
            -- for i = 1, #G.hand.highlighted do
            --     if G.hand.highlighted[i].ability.effect ~= "Base" then
            --         condition = false
            --     end
            -- end
            -- if condition then return true end
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('tarot1')
            return true
        end }))
        for i=1, #G.hand.highlighted do
            local percent = 1.15 - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.highlighted[i]:flip();play_sound('card1', percent);G.hand.highlighted[i]:juice_up(0.3, 0.3);
                return true
            end }))
        end
        delay(0.2)
        for i=1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function() G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_gold_rainbow);
                return true
            end }))
        end
        for i=1, #G.hand.highlighted do
            local percent = 0.85 + (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.highlighted[i]:flip();play_sound('tarot2', percent, 0.6);G.hand.highlighted[i]:juice_up(0.3, 0.3);
                return true
            end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() G.hand:unhighlight_all();
            return true
        end }))
        delay(0.5)
    end
}

SMODS.Consumable {
    key = 'heart',
    loc_txt = {
        name = '红桃',
        text = {
            '失去 {C:gold}$5' ,
            '将 {C:attention}所有{} 手牌',
            '变为{C:blue} 红桃',
        }
    },
    set = ('Tarot'),
    atlas = "consumables",
    config = { max_highlighted = 10, suit = 'Heart'},
    pos = { x = 0, y = 6 },
    cost = 3,
    unlocked = true,
    discovered = true,
    can_use = function(self, card)
		return #((G.hand or {}).cards or {}) > 0
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('tarot1')
            return true
        end }))
        for i=1, #G.hand.cards do
            local percent = 1.15 - (i-0.999)/(#G.hand.cards-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.cards[i]:flip();play_sound('card1', percent);G.hand.cards[i]:juice_up(0.3, 0.3);
                return true
            end }))
        end
        delay(0.2)
        local _suit = 'H'
        for i=1, #G.hand.cards do
            G.E_MANAGER:add_event(Event({func = function()
                local hand_card = G.hand.cards[i]
                local suit_prefix = _suit..'_'
                local rank_suffix = hand_card.base.id < 10 and tostring(hand_card.base.id) or
                    hand_card.base.id == 10 and 'T' or hand_card.base.id == 11 and 'J' or
                    hand_card.base.id == 12 and 'Q' or hand_card.base.id == 13 and 'K' or
                    hand_card.base.id == 14 and 'A'
                hand_card:set_base(G.P_CARDS[suit_prefix..rank_suffix])
            return true end }))
        end

        for i=1, #G.hand.cards do
            local percent = 0.85 + (i-0.999)/(#G.hand.cards-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.cards[i]:flip();play_sound('tarot2', percent, 0.6);G.hand.cards[i]:juice_up(0.3, 0.3);
                return true
            end }))
        end
        delay(0.5)
        ease_dollars(-5)
        delay(0.5)
    end
}
SMODS.Consumable {
    key = 'club',
    loc_txt = {
        name = '梅花',
        text = {
            '失去 {C:gold}$5' ,
            '将 {C:attention}所有{} 手牌',
            '变为{C:blue} 梅花',
        }
    },
    set = ('Tarot'),
    atlas = "consumables",
    config = { max_highlighted = 10, suit = 'Club'},
    pos = { x = 1, y = 6 },
    cost = 3,
    unlocked = true,
    discovered = true,
    can_use = function(self, card)
		return #((G.hand or {}).cards or {}) > 0
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('tarot1')
            return true
        end }))
        for i=1, #G.hand.cards do
            local percent = 1.15 - (i-0.999)/(#G.hand.cards-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.cards[i]:flip();play_sound('card1', percent);G.hand.cards[i]:juice_up(0.3, 0.3);
                return true
            end }))
        end
        delay(0.2)
        local _suit = 'C'
        for i=1, #G.hand.cards do
            G.E_MANAGER:add_event(Event({func = function()
                local hand_card = G.hand.cards[i]
                local suit_prefix = _suit..'_'
                local rank_suffix = hand_card.base.id < 10 and tostring(hand_card.base.id) or
                    hand_card.base.id == 10 and 'T' or hand_card.base.id == 11 and 'J' or
                    hand_card.base.id == 12 and 'Q' or hand_card.base.id == 13 and 'K' or
                    hand_card.base.id == 14 and 'A'
                hand_card:set_base(G.P_CARDS[suit_prefix..rank_suffix])
            return true end }))
        end

        for i=1, #G.hand.cards do
            local percent = 0.85 + (i-0.999)/(#G.hand.cards-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.cards[i]:flip();play_sound('tarot2', percent, 0.6);G.hand.cards[i]:juice_up(0.3, 0.3);
                return true
            end }))
        end
        delay(0.5)
        ease_dollars(-5)
        delay(0.5)
    end
}
SMODS.Consumable {
    key = 'diamond',
    loc_txt = {
        name = '方块',
        text = {
            '失去 {C:gold}$5' ,
            '将 {C:attention}所有{} 手牌',
            '变为{C:blue} 方块',
        }
    },
    set = ('Tarot'),
    atlas = "consumables",
    config = { max_highlighted = 10, suit = 'Diamond'},
    pos = { x = 2, y = 6 },
    cost = 3,
    unlocked = true,
    discovered = true,
    can_use = function(self, card)
		return #((G.hand or {}).cards or {}) > 0
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('tarot1')
            return true
        end }))
        for i=1, #G.hand.cards do
            local percent = 1.15 - (i-0.999)/(#G.hand.cards-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.cards[i]:flip();play_sound('card1', percent);G.hand.cards[i]:juice_up(0.3, 0.3);
                return true
            end }))
        end
        delay(0.2)
        local _suit = 'D'
        for i=1, #G.hand.cards do
            G.E_MANAGER:add_event(Event({func = function()
                local hand_card = G.hand.cards[i]
                local suit_prefix = _suit..'_'
                local rank_suffix = hand_card.base.id < 10 and tostring(hand_card.base.id) or
                    hand_card.base.id == 10 and 'T' or hand_card.base.id == 11 and 'J' or
                    hand_card.base.id == 12 and 'Q' or hand_card.base.id == 13 and 'K' or
                    hand_card.base.id == 14 and 'A'
                hand_card:set_base(G.P_CARDS[suit_prefix..rank_suffix])
            return true end }))
        end

        for i=1, #G.hand.cards do
            local percent = 0.85 + (i-0.999)/(#G.hand.cards-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.cards[i]:flip();play_sound('tarot2', percent, 0.6);G.hand.cards[i]:juice_up(0.3, 0.3);
                return true
            end }))
        end
        delay(0.5)
        ease_dollars(-5)
        delay(0.5)
    end
}
SMODS.Consumable {
    key = 'spade',
    loc_txt = {
        name = '黑桃',
        text = {
            '失去 {C:gold}$5' ,
            '将 {C:attention}所有{} 手牌',
            '变为{C:blue} 黑桃',
        }
    },
    set = ('Tarot'),
    atlas = "consumables",
    config = { max_highlighted = 10, suit = 'Spade'},
    pos = { x = 8, y = 5 },
    cost = 3,
    unlocked = true,
    discovered = true,
    can_use = function(self, card)
		return #((G.hand or {}).cards or {}) > 0
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('tarot1')
            return true
        end }))
        for i=1, #G.hand.cards do
            local percent = 1.15 - (i-0.999)/(#G.hand.cards-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.cards[i]:flip();play_sound('card1', percent);G.hand.cards[i]:juice_up(0.3, 0.3);
                return true
            end }))
        end
        delay(0.2)
        local _suit = 'S'
        for i=1, #G.hand.cards do
            G.E_MANAGER:add_event(Event({func = function()
                local hand_card = G.hand.cards[i]
                local suit_prefix = _suit..'_'
                local rank_suffix = hand_card.base.id < 10 and tostring(hand_card.base.id) or
                    hand_card.base.id == 10 and 'T' or hand_card.base.id == 11 and 'J' or
                    hand_card.base.id == 12 and 'Q' or hand_card.base.id == 13 and 'K' or
                    hand_card.base.id == 14 and 'A'
                hand_card:set_base(G.P_CARDS[suit_prefix..rank_suffix])
            return true end }))
        end

        for i=1, #G.hand.cards do
            local percent = 0.85 + (i-0.999)/(#G.hand.cards-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.cards[i]:flip();play_sound('tarot2', percent, 0.6);G.hand.cards[i]:juice_up(0.3, 0.3);
                return true
            end }))
        end
        delay(0.5)
        ease_dollars(-5)
        delay(0.5)
    end
}