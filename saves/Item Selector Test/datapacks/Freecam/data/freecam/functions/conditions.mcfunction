#	checks if there is a mob from set hostile mob list nearby
execute as @a[scores={freecam=1..},gamemode=!creative] at @s if entity @e[type=#freecam:hostile,distance=..10] run tellraw @s ["",{"text":"Failed:","bold":true,"color":"red"},{"text":"\u0020There are monsters nearby.","color":"red"}]
execute as @a[scores={freecam=1..},gamemode=!creative] at @s if entity @e[type=#freecam:hostile,distance=..10] run trigger freecam set 0

#	checks if player is not on the ground
execute as @a[scores={freecam=1..},gamemode=!creative,nbt={OnGround:0b}] run tellraw @s ["",{"text":"Failed:","bold":true,"color":"red"},{"text":"\u0020You are falling/flying.","color":"red"}]
execute as @a[scores={freecam=1..},gamemode=!creative,nbt={OnGround:0b}] run trigger freecam set 0

#	checks if players head is inside an intangible block
execute as @a[scores={freecam=1..},gamemode=!creative] at @s anchored eyes unless block ^ ^ ^ #freecam:intangible run tellraw @s ["",{"text":"Failed:","bold":true,"color":"red"},{"text":"\u0020You are inside a block.","color":"red"}]
execute as @a[scores={freecam=1..},gamemode=!creative] at @s anchored eyes unless block ^ ^ ^ #freecam:intangible run trigger freecam set 0

#	checks if players feet are inside an intangible block
execute as @a[scores={freecam=1..},gamemode=!creative] at @s anchored feet unless block ~ ~0.5 ~ #freecam:intangible run tellraw @s ["",{"text":"Failed:","bold":true,"color":"red"},{"text":"\u0020You are inside a block.","color":"red"}]
execute as @a[scores={freecam=1..},gamemode=!creative] at @s anchored feet unless block ~ ~0.5 ~ #freecam:intangible run trigger freecam set 0

#	checks if players is able to breathe
execute as @a[scores={freecam=1..},gamemode=!creative,nbt=!{Air:300s},nbt=!{ActiveEffects:[{Id:13}]},nbt=!{ActiveEffects:[{Id:29}]}] run tellraw @s  ["",{"text":"Failed:","bold":true,"color":"red"},{"text":"\u0020You are unable to breathe.","color":"red"}]
execute as @a[scores={freecam=1..},gamemode=!creative,nbt=!{Air:300s},nbt=!{ActiveEffects:[{Id:13}]},nbt=!{ActiveEffects:[{Id:29}]}] run trigger freecam set 0

#	checks if players eyes are inside lava and does not have fire resistance effect
execute as @a[scores={freecam=1..},gamemode=!creative,nbt=!{ActiveEffects:[{Id:12}]}] anchored eyes if block ^ ^ ^ minecraft:lava run tellraw @s ["",{"text":"Failed:","bold":true,"color":"red"},{"text":"\u0020You are in lava.","color":"red"}]
execute as @a[scores={freecam=1..},gamemode=!creative,nbt=!{ActiveEffects:[{Id:12}]}] anchored eyes if block ^ ^ ^ minecraft:lava run trigger freecam set 0
#	checks if players feet are inside lava and does not have fire resistance effect
execute as @a[scores={freecam=1..},gamemode=!creative,nbt=!{ActiveEffects:[{Id:12}]}] anchored feet if block ^ ^ ^ minecraft:lava run tellraw @s ["",{"text":"Failed:","bold":true,"color":"red"},{"text":"\u0020You are in lava.","color":"red"}]
execute as @a[scores={freecam=1..},gamemode=!creative,nbt=!{ActiveEffects:[{Id:12}]}] anchored feet if block ^ ^ ^ minecraft:lava run trigger freecam set 0

#	checks if player is on fire and feet are not in lava
execute as @a[scores={freecam=1..},gamemode=!creative,nbt=!{Fire:-20s}] unless block ~ ~ ~ minecraft:lava run tellraw @s ["",{"text":"Failed:","bold":true,"color":"red"},{"text":"\u0020You are on fire.","color":"red"}]
execute as @a[scores={freecam=1..},gamemode=!creative,nbt=!{Fire:-20s}] unless block ~ ~ ~ minecraft:lava as @s run trigger freecam set 0

#	checks if player is poisoned
execute as @a[scores={freecam=1..},gamemode=!creative,nbt={ActiveEffects:[{Id:19}]}] run tellraw @s ["",{"text":"Failed:","bold":true,"color":"red"},{"text":"\u0020You are poisoned.","color":"red"}]
execute as @a[scores={freecam=1..},gamemode=!creative,nbt={ActiveEffects:[{Id:19}]}] run trigger freecam set 0

#	checks if player is withering away
execute as @a[scores={freecam=1..},gamemode=!creative,nbt={ActiveEffects:[{Id:20}]}] run tellraw @s ["",{"text":"Failed:","bold":true,"color":"red"},{"text":"\u0020You are withering away.","color":"red"}]
execute as @a[scores={freecam=1..},gamemode=!creative,nbt={ActiveEffects:[{Id:20}]}] run trigger freecam set 0

#	checks if player is starving
execute as @a[scores={freecam=1..},gamemode=!creative,nbt={foodLevel:0}] run tellraw @s ["",{"text":"Failed:","bold":true,"color":"red"},{"text":"\u0020You are starving.","color":"red"}]
execute as @a[scores={freecam=1..},gamemode=!creative,nbt={foodLevel:0}] run trigger freecam set 0


#	checks if player has met above crieria (or is in creative) and is not in freecam
execute if entity @a[scores={freecam=1..}] run function freecam:enter_freecam