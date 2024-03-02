# Set a new turtle marker to follow a turtle
execute align xyz unless entity @e[name="turtlechunkmarker",distance=..0.5] run say New turtle marked.
execute align xyz unless entity @e[name="turtlechunkmarker",distance=..0.5] run summon area_effect_cloud ~ ~ ~ {CustomName:'"turtlechunkmarker"',Duration:2147483647}