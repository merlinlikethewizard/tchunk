# Unload all chunks
forceload remove all

# If turtle is no longer on given block, look for it
execute as @e[name="turtlemarker"] at @s unless block ~ ~ ~ #computercraft:turtle run function _tchunk:findturtle

# Look for adjacent, unmarked turtles, and mark them
execute as @e[name="turtlemarker"] at @s if block ~ ~ ~ #computercraft:turtle run function _tchunk:findnew

# Make a particle indicator
# execute as @e[name="turtlemarker"] at @s positioned ~0.5 ~1.2 ~0.5 run particle composter ~ ~ ~ 0 0 0 0 1

# Set new turtle maker if turtle placed by player
execute as @a[scores={tchunkplaced1=1..}] at @s run function tchunk:set
execute as @a[scores={tchunkplaced2=1..}] at @s run function tchunk:set
scoreboard players set @a tchunkplaced1 0
scoreboard players set @a tchunkplaced2 0

# Load all turtle chunks
execute as @e[name="turtlemarker"] at @s run forceload add ~ ~