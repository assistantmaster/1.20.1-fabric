execute as @a run scoreboard players add @s varotime 1
execute as @a if score @s varotime matches 24000.. run kick @s "Deine Zeit ist für heute aufgebraucht."
scoreboard players set TCT2020TCT varotime 0
spawnpoint @a 0 0 0
execute positioned 0 0 0 as @a[distance=..1.5] run gamemode spectator
execute positioned 0 0 0 as @a[distance=..1.5] run tp 0 100 0