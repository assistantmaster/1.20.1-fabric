# move the armor stand in space to our old location
data modify entity @s Pos set from storage freecam:storage players[-1].cam.pos
data modify entity @s Rotation set from storage freecam:storage players[-1].cam.rot

# return to survival and teleport the player
gamemode survival @a[tag=freecam.return,limit=1]
tp @a[tag=freecam.return,limit=1] @s
