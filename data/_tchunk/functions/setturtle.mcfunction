# Set a new turtle marker to follow a turtle
say New turtle marked.

# Summon the area effect cloud with the custom name and assign it the new ID
summon area_effect_cloud ~ ~ ~ {CustomName:'"turtlemarker"',Duration:2147483647,Tags:["new_turtle"]}
execute as @e[type=area_effect_cloud,tag=new_turtle,limit=1] run scoreboard players operation @s turtlemarkerID = #global turtlemarkerID

# Increment the global ID counter
scoreboard players add #global turtlemarkerID 1

# Remove the temporary tag
tag @e[type=area_effect_cloud,tag=new_turtle] remove new_turtle

# Run the count function
function tchunk:count