function freecam:rotate/players

# if in free cam
execute if data storage freecam:storage players[-1].cam run function freecam:leave_freecam

# if not in free cam, check the conditions the player is in
execute unless data storage freecam:storage players[-1].cam unless entity @e[tag=freecam.marker] run function freecam:conditions
kill @e[tag=freecam.marker]

scoreboard players set @s freecam 0