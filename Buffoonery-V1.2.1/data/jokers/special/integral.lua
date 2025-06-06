SMODS.Joker {
    key = "integral",
    name = "Integral",
    atlas = 'buf_special',
    pos = {
        x = 7,
        y = 0,
    },
    rarity = 'buf_spc',
    cost = 7,
    unlocked = false,
    discovered = false,
    eternal_compat = true,
    perishable_compat = true,
    blueprint_compat = true,
    config = {
        extra = { check = true, mult_amount = 1 },
    },
    loc_txt = {set = 'Joker', key = 'j_buf_integral'},
    calculate = function(self, card, context)  -- BEWARE: JANKY ASS CODE BELOW
		local function moddedCalcIndiv(effect, scored_card, key, amount, from_edition)  -- Hooked this func to get the amount of mult provided by the scoring joker
			origCalcIndiv(effect, scored_card, key, amount, from_edition)
			if (key == 'x_mult' or key == 'xmult' or key == 'Xmult' or key == 'x_mult_mod' or key == 'Xmult_mod') and amount ~= 1 then
				card.ability.extra.mult_amount = card.ability.extra.mult_amount + amount * (0.02)
			end
		end
	
        if context.before and not card.getting_sliced then  -- switch to modified scoring func before scoring
			for i = 1, #G.jokers.cards do
				if G.jokers.cards[i] == card then card.ability.extra.mult_joker = G.jokers.cards[i-1] end
			end
			if not context.blueprint then
				SMODS.calculate_individual_effect = moddedCalcIndiv
			end
		end
		
		if context.joker_main and not card.getting_sliced then
			if buf.compat.talisman then
				card.ability.extra.mult_amount = to_number(card.ability.extra.mult_amount)
			end
			return {
				echips = card.ability.extra.mult_amount
			}
        end
		
		if context.after and not context.blueprint then  -- go back to original func at EoR
			SMODS.calculate_individual_effect = origCalcIndiv
			card.ability.extra.check = true
			card.ability.extra.mult_amount = 1
			card.ability.extra.mult_joker = nil
		end
    end,
	remove_from_deck = function(self,card,context)
		SMODS.calculate_individual_effect = origCalcIndiv -- Revert to original behavior if the card is removed
	end,
	
	-- HIDE JOKER IN COLLECTION (THANKS, EREMEL) --
	inject = function(self)
		if not Buffoonery.config.show_spc then
			SMODS.Joker.super.inject(self)
			G.P_CENTER_POOLS.Joker[#G.P_CENTER_POOLS.Joker] = nil
		else
			SMODS.Joker.super.inject(self)
		end
	end
}