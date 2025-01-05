# Index all turtles
function _tchunk:index

# Find and tag the target turtle
execute unless score #global turtlemarkerID matches 0 run function _tchunk:targetturtle

# Teleport to the tagged turtle if it exists
execute positioned as @e[type=area_effect_cloud,name="turtlemarker",tag=target_turtle,limit=1] positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

# Teleport back a bit
execute at @s run tp ^ ^ ^-2

# Display message about the teleportation
tellraw @s [{"text":"Teleported to turtle marker with ID: ","color":"green"},{"score":{"name":"@s","objective":"currentTurtle"},"color":"gold"}]

# Remove the tag
tag @e[type=area_effect_cloud,name="turtlemarker",tag=target_turtle] remove target_turtle