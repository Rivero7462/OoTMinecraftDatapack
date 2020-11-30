execute as @s[tag=Middle] at @s run tp @s ~ ~ ~ ~4 ~

execute as @s[tag=Blade1] at @e[type=armor_stand,tag=Middle] run tp @s ^ ^ ^3.8 ~ ~

execute as @s[tag=Blade2] at @e[type=armor_stand,tag=Middle] run tp @s ^ ^ ^-3.8 ~180 ~

execute as @s[tag=Blade] at @s positioned ^ ^.5 ^2 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute as @s[tag=Blade] at @s positioned ^ ^.5 ^1 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute as @s[tag=Blade] at @s positioned ^ ^.5 ^ if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute as @s[tag=Blade] at @s positioned ^ ^.5 ^-1 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute as @s[tag=Blade] at @s positioned ^ ^.5 ^-2.3 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
