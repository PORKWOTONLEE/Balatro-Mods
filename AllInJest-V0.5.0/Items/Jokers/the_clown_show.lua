local the_clown_show = {
    object_type = "Joker",
    order = 9,
    ignore = true,

    key = "the_clown_show",
    config = {
      
    },
    rarity = 1,
    pos = { x = 8, y = 0 },
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
return { name = {"Jokers"}, items = {the_clown_show} }
