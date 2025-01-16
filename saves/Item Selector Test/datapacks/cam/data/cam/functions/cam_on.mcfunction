execute as @s at @s store result score @s camx run data get entity @s Pos[0]
execute as @s at @s store result score @s camy run data get entity @s Pos[1]
execute as @s at @s store result score @s camz run data get entity @s Pos[2]
execute as @s at @s store result score @s camrotx run data get entity @s Rotation[0]
execute as @s at @s store result score @s camroty run data get entity @s Rotation[1]
execute as @s run gamemode spectator @s
execute as @s run tag @s add cam