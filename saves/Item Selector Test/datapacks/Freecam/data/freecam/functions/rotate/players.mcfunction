# Store the length of the players array 
execute store result score #remaining freecam.dummy run data get storage freecam:storage players

# Store the UUID of the player who ran the command
data modify storage freecam:storage temp set from entity @s UUID

# If the UUID of the last player in the array IS NOT the same as the player that ran the command, goto player.mcfunction
# If the UUID of the last player in the array IS the same as the player that ran the command, stop recursing and use players[-1] to refer to @s data in the storage
# If we reach the end, and the player is not registered, register them in the array with add_player, and use players[-1] to refer to @s data in the storage
execute store success score #success freecam.dummy run data modify storage freecam:storage temp set from storage freecam:storage players[-1].uuid
execute unless score #remaining freecam.dummy matches 0 if score #success freecam.dummy matches 1 run function freecam:rotate/player
execute if score #remaining freecam.dummy matches 0 run function freecam:rotate/add_player