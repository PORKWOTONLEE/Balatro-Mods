--- STEAMODDED HEADER
--- MOD_NAME: Bmportable_misprint
--- MOD_ID: Bmportable_misprint
--- MOD_AUTHOR: [BaiMao snowylight]
--- MOD_DESCRIPTION: More convenient to view misprinted information
--- BADGE_COLOUR: D9D919
--- VERSION: 1.1.2
----------------------------------------------
------------MOD CODE -------------------------

local Game_update_ref = Game.update
function Game:update(dt)
    Game_update_ref(self, dt)
    G.GAME.misprint_rank = G.deck and G.deck.cards[1] and G.deck.cards[#G.deck.cards].base.value or nil
    G.GAME.misprint_suit = G.deck and G.deck.cards[1] and G.deck.cards[#G.deck.cards].base.suit or nil
    G.GAME.misprint_edition = G.deck and G.deck.cards[1] and G.deck.cards[#G.deck.cards].edition and G.deck.cards[#G.deck.cards].edition.key or nil
    G.GAME.misprint_seal = G.deck and G.deck.cards[1] and G.deck.cards[#G.deck.cards].seal or nil
    --paperback
    if (SMODS.Mods["paperback"] or {}).can_load then
    G.GAME.misprint_clip = G.deck and G.deck.cards[1] and G.deck.cards[#G.deck.cards].ability and 
    PB_UTIL.has_paperclip(G.deck.cards[#G.deck.cards]) or nil
    else
    G.GAME.misprint_clip = nil
    end

    G.GAME.misprint_enhancement = G.deck and G.deck.cards[1] and next(SMODS.get_enhancements(G.deck.cards[#G.deck.cards])) and G.deck.cards[#G.deck.cards].config and G.deck.cards[#G.deck.cards].config.center and G.deck.cards[#G.deck.cards].config.center.key or nil
end

local Bmportableloc = init_localization
function init_localization()
    Bmportableloc()
    G.localization.misc.misprint = {}
    for k, v in pairs(G.localization.descriptions.Enhanced) do
        G.localization.misc.misprint[k] = v.name
    end
    for k, v in pairs(G.localization.descriptions.Edition) do
        G.localization.misc.misprint[k] = v.name
    end
    G.localization.misc.misprint.c_base = ""
end

Bmportable_misprint = SMODS.current_mod
SMODS.current_mod.config_tab = function()
	return {n = G.UIT.ROOT, config = { align = "cm", padding = 0.05, colour = G.C.CLEAR }, nodes = {
		-- work your UI wizardry here, see 'Building a UI' page
        create_toggle({ label = localize('enable_misprint'), ref_table = Bmportable_misprint.config, ref_value = 'enable_misprint'}),
        create_toggle({ label = localize('misprintsuit'), ref_table = Bmportable_misprint.config, ref_value = 'misprintsuit'}),
        create_toggle({ label = localize('misprintrank'), ref_table = Bmportable_misprint.config, ref_value = 'misprintrank'}),
        create_toggle({ label = localize('misprintedition'), ref_table = Bmportable_misprint.config, ref_value = 'misprintedition'}),
        create_toggle({ label = localize('misprintseal'), ref_table = Bmportable_misprint.config, ref_value = 'misprintseal'}),
        create_toggle({ label = localize('misprintenhancement'), ref_table = Bmportable_misprint.config, ref_value = 'misprintenhancement'}),
        create_toggle({ label = localize('misprintclip'), ref_table = Bmportable_misprint.config, ref_value = 'misprintclip'}),
        }
	}
end

local G_UIDEF_deck_preview_ref = G.UIDEF.deck_preview
function G.UIDEF.deck_preview(args)
    local _minh, _minw = 0.35, 0.5
    local _colour = ((G.GAME.misprint_suit == 'Spades' or G.GAME.misprint_suit == 'Clubs') and G.C.WHITE or G.C.RED)
    local t = G_UIDEF_deck_preview_ref(args)
    local suit_labels = t.nodes[1].nodes[1].nodes[1].nodes
    local tt = {n=G.UIT.R, config={align = "cm", r = 0.1, padding = 0.04, minw = _minw, minh = 2*_minh+0.25}, nodes={
        Bmportable_misprint.config.enable_misprint and {n=G.UIT.T, config={text = localize('misprintnext'), colour = G.C.WHITE, scale = 0.25, shadow = true}} or nil,
        Bmportable_misprint.config.enable_misprint and Bmportable_misprint.config.misprintedition and G.GAME.misprint_edition and {n=G.UIT.T, config={text = localize((G.GAME.misprint_edition), 'misprint'), colour = G.C.DARK_EDITION, scale = 0.25, shadow = true}} or nil,
        Bmportable_misprint.config.enable_misprint and Bmportable_misprint.config.misprintseal and G.GAME.misprint_seal and {n=G.UIT.T, config={text = localize((string.lower(G.GAME.misprint_seal).."_seal"), 'labels'), colour = G.C.MULT, scale = 0.25, shadow = true}} or nil,
        Bmportable_misprint.config.enable_misprint and Bmportable_misprint.config.misprintclip and G.GAME.misprint_clip and {n=G.UIT.T, config={text = localize(G.GAME.misprint_clip, 'labels'), colour = G.C.CHIPS, scale = 0.25, shadow = true}} or nil,
        Bmportable_misprint.config.enable_misprint and Bmportable_misprint.config.misprintenhancement and G.GAME.misprint_enhancement and {n=G.UIT.T, config={text = localize((G.GAME.misprint_enhancement), 'misprint'), colour = G.C.MONEY, scale = 0.25, shadow = true}} or nil,
        Bmportable_misprint.config.enable_misprint and Bmportable_misprint.config.misprintsuit and G.GAME.misprint_suit and {n=G.UIT.T, config={text = localize(G.GAME.misprint_suit, 'suits_singular'), colour = _colour, scale = 0.25, shadow = true}} or nil,
        Bmportable_misprint.config.enable_misprint and Bmportable_misprint.config.misprintrank and G.GAME.misprint_rank and {n=G.UIT.T, config={text = localize(G.GAME.misprint_rank, 'ranks'), colour = _colour, scale = 0.25, shadow = true}} or nil,
    }}
    suit_labels[1] = tt
    return t
end

----------------------------------------------
------------MOD CODE END----------------------