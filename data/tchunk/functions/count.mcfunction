# counts the number of marked turtles and announces it
execute store result storage minecraft:turtlecount Count int 1 if entity @e[type=area_effect_cloud,name="turtlemarker"]
tellraw @a [{"text":"Turtle count: ","color":"green"},{"nbt":"Count","storage":"minecraft:turtlecount","color":"green"}]