scoreboard players set @a[nbt=!{Inventory:[{id:"minecraft:player_head"}]}] itemselector 1
execute as @a[scores={itemselector=1}] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",Count:1b}}]
item replace entity @a[scores={itemselector=1}] inventory.0 with minecraft:player_head{SkullOwner:TCT2020TCT}
execute as @a[scores={itemselector=1}] at @s in minecraft:the_nether run tp @s ~ ~ ~
execute as @a[scores={itemselector=1}] at @s in minecraft:overworld run tp @s ~ ~ ~
tp @a[scores={itemselector=1}] 0 0 0
scoreboard players reset @a[scores={itemselector=1}] itemselector