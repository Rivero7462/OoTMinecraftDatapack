execute positioned ^ ^1 ^-1 if entity @a[distance=..1] run tag @s add Fall

execute if entity @s[tag=Fall] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run playsound minecraft:block.slime_block.step hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=5}] run playsound minecraft:block.slime_block.step hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=13}] run playsound minecraft:block.anvil.break hostile @a ~ ~ ~ 1 1

execute if entity @s[scores={timer=10}] rotated ~ 0 run tp @s ^ ^ ^-.8
execute positioned ^ ^1 ^-1 if entity @s[scores={timer=11..14}] if entity @a[distance=..1] run effect give @a minecraft:wither 1 1 true
execute if entity @s[scores={timer=11..14}] run tp @s ~ ~ ~ ~ ~-40

execute if entity @s[scores={timer=30}] rotated ~ 0 run tp @s ^ ^ ^.8
execute if entity @s[scores={timer=31..37}] run tp @s ~ ~ ~ ~ ~11

execute if entity @s[scores={timer=38}] run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=58..}] run tag @s remove Fall
execute if entity @s[scores={timer=58..}] run scoreboard players set @s timer 0
