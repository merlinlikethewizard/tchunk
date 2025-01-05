# Set up objectives
scoreboard objectives add tchunkmoved dummy
scoreboard objectives add turtlecount dummy
scoreboard objectives add currentTurtle dummy
scoreboard objectives add turtlemarkerID dummy
scoreboard objectives add tchunkplaced1 minecraft.used:computercraft.turtle_normal
scoreboard objectives add tchunkplaced2 minecraft.used:computercraft.turtle_advanced

# Initialize #global turtlemarkerID if it doesn't exist
scoreboard players set #global turtlemarkerID 0

# Update #global turtlemarkerID to the maximum existing ID
execute as @e[type=area_effect_cloud,name="turtlemarker"] run scoreboard players operation #global turtlemarkerID > @s turtlemarkerID

# Increase #global turtlemarkerID by 1 for the next turtle
scoreboard players add #global turtlemarkerID 1

# Prepare chunk loading
forceload remove all
execute at @e[name="turtlemarker"] run forceload add ~ ~
