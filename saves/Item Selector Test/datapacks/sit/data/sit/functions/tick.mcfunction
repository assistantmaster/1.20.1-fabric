scoreboard players enable @a sit
execute as @a[score={sit=1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["sit"]}
execute as @a[score={sit=1}] at @s run ride @s mount @e[type=armor_stand,distance=..1,limit=1,sort=nearest]
execute as @a[score={sit=1}] run scoreboard players reset @s sit
kill @e[type=armor_stand,nbt=!{Passengers:[{id:"minecraft:player"}]},nbt={Tags:["sit"]}]]