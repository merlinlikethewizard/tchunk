# Set up objectives
scoreboard objectives add tchunkmoved dummy
scoreboard objectives add turtlecount dummy
scoreboard objectives add currentTurtle dummy
scoreboard objectives add turtlemarkerID dummy
scoreboard objectives add tchunkplaced1 minecraft.used:computercraft.turtle_normal
scoreboard objectives add tchunkplaced2 minecraft.used:computercraft.turtle_advanced

function _tchunk:index

# Prepare chunk loading
forceload remove all
execute at @e[name="turtlemarker"] run forceload add ~ ~
