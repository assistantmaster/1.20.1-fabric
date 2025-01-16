scoreboard players enable @a cam_on
scoreboard players enable @a cam_off
execute as @a[scores={cam_off=1},tag=cam] run function cam:cam_off
execute as @a[scores={cam_on=1},tag=!cam] run function cam:cam_on
execute as @a[scores={cam_on=1}] run scoreboard players reset @s cam_on
execute as @a[scores={cam_off=1}] run scoreboard players reset @s cam_off