# move the last player to the start of the players array in storage
data modify storage freecam:storage players prepend from storage freecam:storage players[-1]
data remove storage freecam:storage players[-1]

# decrement our total freecamming player counter
scoreboard players remove #remaining freecam.dummy 1

# store a temp UUID of the player that ran the command
data modify storage freecam:storage temp set from entity @s UUID

# If the UUID of the last player in the array IS NOT the same as the player that ran the command, recurse and restart
# If the UUID of the last player in the array IS the same as the player that ran the command, stop recursing and use players[-1] to refer to @s data in the storage
execute store success score #success freecam.dummy run data modify storage freecam:storage temp set from storage freecam:storage players[-1].uuid
execute unless score #remaining freecam.dummy matches 0 if score #success freecam.dummy matches 1 run function freecam:rotate/player