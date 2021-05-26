scoreboard players add @s Shock 1
execute unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

execute at @a if entity @s[scores={Shock=1}] run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 1 2
execute at @a if entity @s[scores={Shock=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Frozen"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={Shock=1..30}] run effect give @a minecraft:levitation 1 255 true
execute if entity @s[scores={Shock=1..30}] run effect give @a minecraft:slowness 1 1 true
execute at @e[type=area_effect_cloud,tag=Frozen] if entity @s[scores={Shock=1..50}] unless entity @a[scores={ResetHealth=1..}] run tp @a ~ ~ ~
execute at @a if entity @s[scores={Shock=1..30}] run particle minecraft:end_rod ~ ~1 ~ .3 .5 .3 .01 1 normal

execute if entity @a[scores={ResetHealth=1..}] run scoreboard players set @s Shock 50
execute if entity @s[scores={Shock=50..}] run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 1 .7
execute if entity @s[scores={Shock=50..}] run kill @e[type=area_effect_cloud,tag=Frozen]
execute if entity @s[scores={Shock=50..}] run tag @s remove Freeze
execute if entity @s[scores={Shock=50..}] run scoreboard players reset @s Shock
