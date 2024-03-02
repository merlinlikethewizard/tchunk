# Do a raycast to find a turtle
execute unless block ~ ~ ~ #computercraft:turtle positioned ^ ^ ^0.2 run function _tchunk:cast
execute if block ~ ~ ~ #computercraft:turtle run function _tchunk:setturtle