execute as @s at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Tags:["camtp"],NoGravity:1b}
execute as @s store result entity @e[type=armor_stand,limit=1,sort=nearest,tag=camtp] Pos[0] double 1 run scoreboard players get @s camx
execute as @s store result entity @e[type=armor_stand,limit=1,sort=nearest,tag=camtp] Pos[1] double 1 run scoreboard players get @s camy
execute as @s store result entity @e[type=armor_stand,limit=1,sort=nearest,tag=camtp] Pos[2] double 1 run scoreboard players get @s camz
execute as @s store result entity @e[type=armor_stand,limit=1,sort=nearest,tag=camtp] Rotation[0] double 1 run scoreboard players get @s camrotx
execute as @s store result entity @e[type=armor_stand,limit=1,sort=nearest,tag=camtp] Rotation[1] double 1 run scoreboard players get @s camroty
execute as @s run tp @s @e[type=armor_stand,tag=camtp,limit=1]
execute as @s at @s run tp @s ~0.5 ~ ~0.5
execute as @s run kill @e[type=armor_stand,limit=1,sort=nearest,tag=camtp]
execute as @s run gamemode survival
tag @s remove cam