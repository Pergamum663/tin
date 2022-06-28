local util = require("data-util");

local ore = "tin-ore"
local ore_icon = "__bztin__/graphics/icons/tin-ore.png"

if mods["StrangeMatter"] then
data:extend({
  {
    type = "recipe",
    name = ore.."-synthesis",
    icons = {
      { icon = ore_icon, icon_size = 64 },
      { icon = "__StrangeMatter__/graphics/icons/fluid/matter.png", icon_size = 32,  scale=0.5, shift= {-8, -8}},
    },
    enabled = false,
    energy_required = 1,
    ingredients = {{type="fluid", name="strange-matter", amount = 2}},
    result = ore,
    category = "crafting-with-fluid",
    subgroup = "synthesis",
  },
  {
    type = "technology",
    name = ore.."-synthesis",
    icons = {
      { icon = "__StrangeMatter__/graphics/icons/fluid/matter.png", icon_size = 32, shift= {-6, 0}},
      { icon = ore_icon, icon_size = 64, scale=0.25, shift={8, 8}},
    },
    prerequisites = {"stone-synthesis"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = ore.."-synthesis",
      },
    },
    unit = {
      count = 800,
      time = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      }
    }
  }
})
end
