-- more in recipe.lua

AddRecipeFilter({
     name = "FILTER_NAME",
     atlas = "images/crafting_filters/filter.xml",
     image = "filter.tex",
})

AddRecipe2("item", 
     {Ingredient("material", num, "atlas.xml", nil, "imageoverride.tex")},
     TECH.SCIENCE_TWO,
     {atlas = "images/inventoryimages/item.xml", image = "item.tex"},
     {"MODS"}
)

AddRecipe2("structure",
     {Ingredient("material", num, "atlas.xml", nil, "imageoverride.tex")},
     TECH.LOST,
     {
          atlas = "images/inventoryimages/item.xml", image = "item.tex",
          numtogive = 1, builder_tag = "character_tag", build_mode = BUILDMODE.LAND,
          placer = "structure_placer", testfn = function() return true end,
          -- more in recipe.lua
     },
     {"MODS"}
)

AddIngredientValues()  -- cookable food