# Function: index

# Increment the global turtlemarkerID for the next turtlemarker
scoreboard players set #global turtlemarkerID 0

# Loop through each turtlemarker and assign an ID based on the global turtlemarkerID
execute as @e[type=area_effect_cloud,name="turtlemarker"] run function _tchunk:indexme