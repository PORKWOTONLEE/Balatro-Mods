local infinite_jest = {
    object_type = "Joker",
    order = 14,
    ignore = true,

    key = "infinite_jest",
    config = {
      
    },
    rarity = 1,
    pos = { x = 13, y = 0 },
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
return { name = {"Jokers"}, items = {infinite_jest} }
