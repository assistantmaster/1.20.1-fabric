schedule function freecam:tick 1t

scoreboard players enable @a freecam
execute as @a[scores={freecam=1..}] run function freecam:trigger_freecam
