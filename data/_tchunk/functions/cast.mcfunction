# Do a raycast to find a turtle
execute unless block ~ ~ ~ #computercraft:turtle positioned ^ ^ ^0.2 run function _tchunk:cast
execute if block ~ ~ ~ #computercraft:turtle align xyz unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:setturtle