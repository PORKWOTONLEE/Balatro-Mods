local magic_mirror = {
    object_type = "Joker",
    order = 202,
    ignore = true,

    key = "magic_mirror",
    config = {
      
    },
    rarity = 1,
    pos = { x = 15, y = 7},
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
return { name = {"Jokers"}, items = {magic_mirror} }
