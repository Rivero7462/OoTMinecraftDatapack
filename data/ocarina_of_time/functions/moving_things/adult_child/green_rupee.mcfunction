execute if score @s GreenRupee <= const GreenRupee run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
execute if score @s GreenRupee <= const GreenRupee at @a store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=area_effect_cloud,tag=Progress,limit=1] GreenRupee
execute if score @s GreenRupee > const GreenRupee run summon minecraft:item ^ ^ ^ {Item:{Count:64b,id:"minecraft:lime_dye",tag:{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}}}
scoreboard players remove @s GreenRupee 64
execute if score @s GreenRupee > 0 GreenRupee run function ocarina_of_time:moving_things/adult_child/green_rupee
