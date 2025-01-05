# Remove any existing target tags
tag @e[tag=target_turtle] remove target_turtle

# Increment the player's current turtle counter
scoreboard players add @s currentTurtle 1

# If the player's counter exceeds or equals the global ID, reset to 0
execute if score @s currentTurtle >= #global turtlemarkerID run scoreboard players set @s currentTurtle 1

# Display the ID being tried
tellraw @s ["",{"text":"Trying turtle with ID: "},{"score":{"name":"@s","objective":"currentTurtle"}}]

# Tag the turtle with the correct ID
execute as @e[type=area_effect_cloud,name="turtlemarker"] if score @s turtlemarkerID = @p currentTurtle run tag @s add target_turtle

# Check if a turtle with the tag exists, if not, recursively call this function
execute unless entity @e[type=area_effect_cloud,name="turtlemarker",tag=target_turtle] run function _tchunk:targetturtle
