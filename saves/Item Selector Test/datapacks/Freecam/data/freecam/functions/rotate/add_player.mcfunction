# the data we should initalize a new player with
data modify storage freecam:storage players append value {}
data modify storage freecam:storage players[-1].uuid set from entity @s UUID