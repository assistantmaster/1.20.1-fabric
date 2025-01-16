# save position and location in storage
data modify storage freecam:storage players[-1].cam.pos set from entity @s Pos
data modify storage freecam:storage players[-1].cam.rot set from entity @s Rotation

# set to spectator
gamemode spectator @s
tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_green"},{"text":" has entered freecam","color":"dark_green"}]