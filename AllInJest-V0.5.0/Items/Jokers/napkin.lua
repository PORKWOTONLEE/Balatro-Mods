local napkin = {
    object_type = "Joker",
    order = 200,
    ignore = true,

    key = "napkin",
    config = {
      
    },
    rarity = 1,
    pos = { x = 14, y = 7},
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
return { name = {"Jokers"}, items = {napkin} }
