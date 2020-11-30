#Cutscene
scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1..60}] run tp @a 1768 59 901 -135 0
execute if entity @s[scores={lifetime=10}] run fill 1773 60 896 1773 60 896 minecraft:redstone_block
execute if entity @s[scores={lifetime=10}] run fill 1773 60 896 1773 60 896 minecraft:air
execute if entity @s[scores={lifetime=10}] run fill 1773 60 892 1773 60 892 minecraft:redstone_block
execute if entity @s[scores={lifetime=10}] run fill 1773 60 892 1773 60 892 minecraft:air
execute if entity @s[scores={lifetime=50}] run fill 1773 60 896 1773 60 896 minecraft:redstone_block
execute if entity @s[scores={lifetime=50}] run fill 1773 60 896 1773 60 896 minecraft:air
execute if entity @s[scores={lifetime=50}] run fill 1773 60 892 1773 60 892 minecraft:redstone_block
execute if entity @s[scores={lifetime=50}] run fill 1773 60 892 1773 60 892 minecraft:air
execute if entity @s[scores={lifetime=61}] run function ocarina_of_time:moving_things/shadow_temple/boat_ride/summon
execute if entity @s[scores={lifetime=61..300}] run tp @a 1766 70 895 90 50
execute if entity @s[scores={lifetime=301}] run gamemode adventure @a
execute if entity @s[scores={lifetime=301}] run tp @a 1747 64 895 90 0

#Bell Noises
execute if entity @s[scores={lifetime=90}] at @a run playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=130}] at @a run playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=170}] at @a run playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=210}] at @a run playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=250}] at @a run playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=290}] at @a run playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=330}] at @a run playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=370..}] run scoreboard players set @s lifetime 329

#Stalfos
execute if entity @s[scores={timer=250}] run function ocarina_of_time:moving_things/shadow_temple/enemies/stalfos/stalfos_2

execute if entity @s[scores={timer=600}] run function ocarina_of_time:moving_things/shadow_temple/enemies/stalfos/stalfos_3
execute as @e[type=zombie,tag=Stalfos] at @s run tp @s ~-.15 ~ ~

#Boat Start
execute if entity @s[scores={lifetime=61..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..}] if block ~-4 ~ ~ minecraft:air run tp @s ~-.15 ~ ~
execute if entity @s[scores={lifetime=301..}] unless entity @s[scores={timer=1400..}] if entity @s[scores={timer=1..}] if block ~-4 ~ ~ minecraft:air at @a if block ~-1 ~ ~ minecraft:air run tp @a ~-.15 ~ ~
execute at @a if block ~ ~ ~ minecraft:barrier run tp @a ~ ~1 ~

#Add
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~ ~1 ~-1 ~ ~1 ~1 minecraft:barrier
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~1 ~1 ~-2 ~1 ~1 ~2 minecraft:barrier
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~2 ~1 ~-3 ~3 ~1 ~3 minecraft:barrier
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~4 ~1 ~-4 ~5 ~1 ~4 minecraft:barrier
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~6 ~1 ~-5 ~14 ~1 ~5 minecraft:barrier

execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~15 ~2 ~-5 ~15 ~2 ~5 minecraft:barrier
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~16 ~3 ~-4 ~16 ~3 ~4 minecraft:barrier
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~17 ~4 ~-3 ~17 ~4 ~3 minecraft:barrier
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~18 ~5 ~-2 ~18 ~5 ~2 minecraft:barrier

#Remove
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~16 ~1 ~-5 ~16 ~1 ~5 minecraft:air
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~17 ~2 ~-5 ~17 ~2 ~5 minecraft:air
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~18 ~3 ~-4 ~18 ~3 ~4 minecraft:air
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~19 ~4 ~-3 ~19 ~4 ~3 minecraft:air replace minecraft:barrier
execute unless entity @s[tag=Fall] if block ~-1 ~ ~ minecraft:air if entity @s[scores={timer=1..}] run fill ~19 ~5 ~-2 ~19 ~5 ~2 minecraft:air replace minecraft:barrier

#Stop
execute if entity @s[scores={timer=1350}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"selector":"@p","color":"aqua"},{"text":"! This ship is sinking! Abandon ship! Get onto a safe platform!","color":"aqua"}]

execute if entity @s[scores={timer=1400}] run tag @s add Fall
execute if entity @s[scores={timer=1400..1440}] run tp @s ~ ~-1 ~

execute if entity @s[scores={timer=1400..}] run fill 1571 63 901 1698 67 890 minecraft:air
execute if entity @s[scores={timer=1400..}] run fill 1698 63 901 1793 67 890 minecraft:air
execute if entity @s[scores={timer=1440..}] run kill @e[type=armor_stand,tag=Boat]

#Jump off
execute if entity @a[x=1571,y=59,z=902,dx=41,dy=11,dz=0] run tag @s add Fall
execute if entity @s[tag=Fall] unless entity @s[scores={timer=1400..}] run scoreboard players set @s timer 1400
