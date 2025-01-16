tag @s add freecam.return

# create an armor stand and move it to the spectators current position & dimension
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1, NoGravity:1, NoAI:1, Marker:1, Tags:["freecam.marker"]}
execute at @a[tag=freecam.return] run tp @e[tag=freecam.marker] @s

execute as @e[tag=freecam.marker] run function freecam:actually_leave_freecam

# dump position data from storage and return to survival
data remove storage freecam:storage players[-1].cam
gamemode survival @s 
tag @s remove freecam.return
tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_aqua"},{"text":" has left freecam","color":"dark_aqua"}]