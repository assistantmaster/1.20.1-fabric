execute as @a[gamemode=!creative,gamemode=!spectator,scores={doublejump=1}] at @s if block ~ ~-0.1 ~ air run tp ~ ~1.2 ~
scoreboard players set @a[scores={doublejump=1..}] doublejump -1
scoreboard players remove @a[scores={doublejump=..-1}] doublejump 1
scoreboard players set @a[scores={doublejump=-10}] doublejump 0