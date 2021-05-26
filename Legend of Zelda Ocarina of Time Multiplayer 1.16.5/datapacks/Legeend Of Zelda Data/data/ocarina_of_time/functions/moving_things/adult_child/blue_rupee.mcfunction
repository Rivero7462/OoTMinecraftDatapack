execute if score @s BlueRupee <= const BlueRupee run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:lapis_lazuli",tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}}
execute if score @s BlueRupee <= const BlueRupee at @a store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:lapis_lazuli",tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=area_effect_cloud,tag=Progress,limit=1] BlueRupee
execute if score @s BlueRupee > const BlueRupee run summon minecraft:item ^ ^ ^ {Item:{Count:64b,id:"minecraft:lapis_lazuli",tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}}
scoreboard players remove @s BlueRupee 64
execute if score @s BlueRupee > 0 BlueRupee run function ocarina_of_time:moving_things/adult_child/blue_rupee
