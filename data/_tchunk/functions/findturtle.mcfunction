# See where turtle went and follow
execute positioned ~1 ~ ~ if score @s tchunkmoved matches 0 if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:tp
execute positioned ~-1 ~ ~ if score @s tchunkmoved matches 0 if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:tp
execute positioned ~ ~1 ~ if score @s tchunkmoved matches 0 if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:tp
execute positioned ~ ~-1 ~ if score @s tchunkmoved matches 0 if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:tp
execute positioned ~ ~ ~1 if score @s tchunkmoved matches 0 if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:tp
execute positioned ~ ~ ~-1 if score @s tchunkmoved matches 0 if block ~ ~ ~ #computercraft:turtle unless entity @e[name="turtlemarker",distance=..0.5] run function _tchunk:tp

# If turtle couldn't be found, kill marker
execute if score @s tchunkmoved matches 0 run function _tchunk:remove
scoreboard players set @s tchunkmoved 0