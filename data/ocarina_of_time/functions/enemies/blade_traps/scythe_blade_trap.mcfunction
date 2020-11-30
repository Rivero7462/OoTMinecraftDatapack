execute as @s[tag=Middle] at @s run tp @s ~ ~ ~ ~-4 ~

execute as @s[tag=Blade1] at @s at @e[type=armor_stand,tag=Middle,limit=1,sort=nearest] run tp @s ^-.4 ^ ^4.5 ~ ~

execute as @s[tag=Blade2] at @s at @e[type=armor_stand,tag=Middle,limit=1,sort=nearest] run tp @s ^-.4 ^ ^-4.5 ~180 ~

execute as @s[tag=Blade] at @s positioned ^ ^.5 ^2 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute as @s[tag=Blade] at @s positioned ^ ^.5 ^1 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute as @s[tag=Blade] at @s positioned ^ ^.5 ^ if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute as @s[tag=Blade] at @s positioned ^ ^.5 ^-1 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute as @s[tag=Blade] at @s positioned ^ ^.5 ^-2.3 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
