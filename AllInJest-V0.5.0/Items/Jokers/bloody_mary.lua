local bloody_mary = {
    object_type = "Joker",
    order = 15,
    ignore = true,

    key = "bloody_mary",
    config = {
      
    },
    rarity = 1,
    pos = { x = 14, y = 0 },
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
return { name = {"Jokers"}, items = {bloody_mary} }
