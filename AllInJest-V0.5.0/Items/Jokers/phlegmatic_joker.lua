local phlegmatic_joker = {
    object_type = "Joker",
    order = 350,
    ignore = true,
    key = "phlegmatic_joker",
    config = {
    },
    rarity = 1,
    pos = { x = 21, y = 13},
    atlas = 'joker_atlas',
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
  
    loc_vars = function(self, info_queue, card)

    end,
  
    calculate = function(self, card, context)
        
    end
  
}
return { name = {"Jokers"}, items = {phlegmatic_joker} }
