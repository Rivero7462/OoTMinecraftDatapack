execute if entity @s[scores={timer=1}] run fill 1105 30 3074 1105 32 3076 minecraft:water


execute if entity @s[scores={timer=120}] run fill 1105 30 3074 1105 32 3076 minecraft:iron_bars[waterlogged=true,north=true,south=true]
execute if entity @s[scores={timer=120}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.7
execute if entity @s[scores={timer=130..}] run tag @s add Off
