local animatronic = {
    object_type = "Joker",
    order = 198,
    ignore = true,

    key = "animatronic",
    config = {
      
    },
    rarity = 1,
    pos = { x = 12, y = 7},
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
return { name = {"Jokers"}, items = {animatronic} }
