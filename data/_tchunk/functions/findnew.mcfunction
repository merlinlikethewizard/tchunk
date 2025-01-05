# Look for adjacent, unmarked turtles, and mark them
execute positioned ~1 ~ ~ if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:setturtle
execute positioned ~-1 ~ ~ if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:setturtle
execute positioned ~ ~1 ~ if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:setturtle
execute positioned ~ ~-1 ~ if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:setturtle
execute positioned ~ ~ ~1 if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:setturtle
execute positioned ~ ~ ~-1 if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:setturtle