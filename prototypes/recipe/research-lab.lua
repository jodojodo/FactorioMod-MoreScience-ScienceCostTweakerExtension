
--------------------------------------------------------------------------------
----- Burner lab                                                           -----
--------------------------------------------------------------------------------
-- remove subgroup
data.raw["recipe"]["lab-burner"].subgroup = nil
data.raw["recipe"]["lab-burner"].order = nil



--------------------------------------------------------------------------------
----- Lab MK1                                                              -----
--------------------------------------------------------------------------------
-- remove subgroup
data.raw["recipe"]["lab"].subgroup = nil
data.raw["recipe"]["lab"].order = nil

if settings.startup["sct-tier1-lab"].value == "lab" then
  -- edit ingredients
  MoreScience.lib.recipe.removeIngredient("lab", "transport-belt")
  MoreScience.lib.recipe.addIngredient("lab", "sct-lab1-construction", 1, "item")
  MoreScience.lib.recipe.addIngredient("lab", "sct-lab1-mechanization", 1, "item")
else
  -- add previous lab as ingredient
  MoreScience.lib.recipe.addIngredient("lab", "lab-burner", 1, "item")
end



--------------------------------------------------------------------------------
----- Lab MK2                                                              -----
--------------------------------------------------------------------------------
-- remove subgroup
data.raw["recipe"]["sct-lab-t2"].subgroup = nil
data.raw["recipe"]["sct-lab-t2"].order = nil



--------------------------------------------------------------------------------
----- Lab MK3                                                              -----
--------------------------------------------------------------------------------
-- remove subgroup
data.raw["recipe"]["sct-lab-t3"].subgroup = nil
data.raw["recipe"]["sct-lab-t3"].order = nil



--------------------------------------------------------------------------------
----- Lab MK4                                                              -----
--------------------------------------------------------------------------------
-- remove subgroup
data.raw["recipe"]["sct-lab-t4"].subgroup = nil
data.raw["recipe"]["sct-lab-t4"].order = nil



--------------------------------------------------------------------------------
----- Infused lab                                                          -----
--------------------------------------------------------------------------------
-- remove subgroup
data.raw["recipe"]["lab-mk2"].subgroup = nil
data.raw["recipe"]["lab-mk2"].order = nil
-- add previous lab as ingredient
MoreScience.lib.recipe.editIngredient("lab-mk2", "lab", "sct-lab-t4", 1)



--------------------------------------------------------------------------------
----- module lab                                                          -----
--------------------------------------------------------------------------------
if data.raw["recipe"]["lab-module"] then
  -- remove subgroup
  data.raw["recipe"]["lab-module"].subgroup = nil
  data.raw["recipe"]["lab-module"].order = nil
end


--------------------------------------------------------------------------------
----- alien lab                                                          -----
--------------------------------------------------------------------------------
if data.raw["recipe"]["lab-alien"] then
  -- remove subgroup
  data.raw["recipe"]["lab-alien"].subgroup = nil
  data.raw["recipe"]["lab-alien"].order = nil
end
