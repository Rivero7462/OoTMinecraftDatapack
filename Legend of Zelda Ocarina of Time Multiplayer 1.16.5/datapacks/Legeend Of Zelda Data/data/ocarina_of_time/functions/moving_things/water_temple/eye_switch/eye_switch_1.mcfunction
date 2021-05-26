scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run fill 1063 46 3018 1063 46 3018 minecraft:orange_shulker_box
execute if entity @s[scores={timer=1}] run fill 1104 46 3087 1104 46 3087 minecraft:orange_shulker_box
execute if entity @s[scores={timer=1}] run fill 1064 50 3014 1062 48 3014 minecraft:air
execute if entity @s[scores={timer=1}] run fill 1100 47 3092 1100 44 3095 minecraft:air
execute if entity @s[scores={timer=1}] run kill @e[type=arrow,x=1063,y=46,z=3019,dx=0,dz=0]
execute if entity @s[scores={timer=1}] run kill @e[type=arrow,x=1104,y=46,z=3087,dx=0,dz=0.5]
execute if entity @s[scores={timer=45..}] run fill 1064 50 3014 1062 48 3014 minecraft:iron_bars[east=true,west=true]
execute if entity @s[scores={timer=45..}] run fill 1100 47 3092 1100 44 3095 minecraft:iron_bars[north=true,south=true]
execute if entity @s[scores={timer=45..}] run fill 1063 46 3018 1063 46 3018 minecraft:yellow_shulker_box
execute if entity @s[scores={timer=45..}] run fill 1104 46 3087 1104 46 3087 minecraft:yellow_shulker_box
execute if entity @s[scores={timer=45..}] run tag @s remove Open
execute if entity @s[scores={timer=45..}] run scoreboard players set @s timer 0

execute if entity @a[x=1062,y=48,z=3015,dx=2,dy=1,dz=4] run effect give @a minecraft:slowness 1 10 true
