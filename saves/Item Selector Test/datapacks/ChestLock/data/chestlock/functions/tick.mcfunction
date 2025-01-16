scoreboard players enable @a chestlock
execute as @a[scores={chestlock=1..}] at @s if entity @e[type=item,distance=..5] as @e[type=item,limit=1,sort=nearest] at @s if block ~ ~ ~ chest run data modify block ~ ~ ~ Lock set from entity @s Item.id
execute as @a[scores={chestlock=1..}] at @s run tellraw @s {"text":"Du hast die Kiste gelockt! Jetzt musst du ein Item nur noch in die Item-ID des Items, womit du die Kiste gelockt hast, umbenennen. Die Item-ID kannst du dir im Inventar anzeigen lassen, wenn du vorher F3+H gedrückt hast.","hoverEvent":{"action":"show_text","contents":["In deinem Fall: ",{"nbt":"Item.id","entity":"@e[type=item,distance=..5,limit=1,sort=nearest]"}]}}
scoreboard players reset @a[scores={chestlock=1..}] chestlock
scoreboard players enable @a chestunlock
execute as @a[scores={chestunlock=1..}] at @s run data modify block ~ ~ ~ Lock set value ""
execute as @a[scores={chestunlock=1..}] at @s run tellraw @s "Du hast die Kiste unlockt!"
scoreboard players reset @a[scores={chestunlock=1..}] chestunlock