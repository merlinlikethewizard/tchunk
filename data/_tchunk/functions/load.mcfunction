# Set up objectives
scoreboard objectives add tchunkmoved dummy
scoreboard objectives add tchunkplaced1 minecraft.used:computercraft.turtle_normal
scoreboard objectives add tchunkplaced2 minecraft.used:computercraft.turtle_advanced

# Prepare chunk loading
forceload remove all
execute at @e[name="turtlechunkmarker"] run forceload add ~ ~