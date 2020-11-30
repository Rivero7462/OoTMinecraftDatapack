clear @a minecraft:diamond_sword
scoreboard players reset @e[type=area_effect_cloud,tag=Progress] Xpos
scoreboard players reset @e[type=area_effect_cloud,tag=Progress] Ypos
scoreboard players reset @e[type=area_effect_cloud,tag=Progress] Zpos
kill @e[type=armor_stand,tag=FaroreWind]

#Other Items
execute store result score @e[type=area_effect_cloud,tag=Progress] BlueRupee2 run clear @a minecraft:tnt
execute store result score @e[type=area_effect_cloud,tag=Progress] RedRupee2 run clear @a minecraft:glass_bottle
execute unless block 993 5 1380 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{DinFire:1b}}]}] run fill 993 5 1380 993 5 1380 minecraft:gold_block
execute unless block 993 5 1381 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{FaroreWind:1b}}]}] run fill 993 5 1381 993 5 1381 minecraft:gold_block
execute unless block 993 5 1382 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{NayruLove:1b}}]}] run fill 993 5 1382 993 5 1382 minecraft:gold_block
execute unless block 993 5 1384 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{Bombchu:1b}}]}] run fill 993 5 1384 993 5 1384 minecraft:gold_block
execute unless block 993 5 1385 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{LensOfTruth1:1b}}]}] run fill 993 5 1385 993 5 1385 minecraft:gold_block
execute unless block 993 5 1385 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{LensOfTruth2:1b}}]}] run fill 993 5 1385 993 5 1385 minecraft:gold_block
execute unless block 993 5 1386 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{Omni:1b}}]}] run fill 993 5 1386 993 5 1386 minecraft:gold_block
execute unless block 993 5 1387 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{PegasusBoots:1b}}]}] run fill 993 5 1387 993 5 1387 minecraft:gold_block
execute unless block 991 5 1380 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{DekuNut:1b}}]}] run fill 991 5 1380 991 5 1380 minecraft:gold_block

#Rupees
execute store result score @e[type=area_effect_cloud,tag=Progress] GreenRupee run clear @a minecraft:lime_dye{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] BlueRupee run clear @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] RedRupee run clear @a minecraft:red_dye{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] PurpleRupee run clear @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] HugeRupee run clear @a minecraft:yellow_dye{display:{Name:"{\"text\":\"Huge Rupee\"}"},Item:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] OrangeRupee run clear @a minecraft:orange_dye{display:{Name:"{\"text\":\"Orange Rupee\"}"},Item:1b}

#Main
execute as @a run function ocarina_of_time:moving_things/adult_child/save_adult_info

clear @a shield{display:{Name:"\"Hylian Shield\""},Unbreakable:1b,Damage:2}
clear @a minecraft:carrot_on_a_stick{BottledFairy:1b}
clear @a minecraft:carrot_on_a_stick{BottledBug:1b}
clear @a minecraft:carrot_on_a_stick{BottledFish:1b}
clear @a minecraft:carrot_on_a_stick{BottledMilk:1b}
clear @a minecraft:carrot_on_a_stick{BottledHalfMilk:1b}
clear @a minecraft:carrot_on_a_stick{BottledPoe:1b}
clear @a minecraft:carrot_on_a_stick{BottledBigPoe:1b}
clear @a minecraft:carrot_on_a_stick{BlueFire:1b}
clear @a minecraft:carrot_on_a_stick{GreenPotion:1b}
clear @a minecraft:carrot_on_a_stick{RedPotion:1b}
clear @a minecraft:carrot_on_a_stick{BluePotion:1b}

execute as @a run function ocarina_of_time:moving_things/adult_child/save_child_info
execute as @a run function ocarina_of_time:moving_things/adult_child/apply_adult

execute as @a run function ocarina_of_time:moving_things/adult_child/clear_child_items
execute as @a run function ocarina_of_time:moving_things/adult_child/save_adult_info

give @a minecraft:diamond_sword{display:{Name:"\"Master Sword\""},HideFlags:63,Unbreakable:1,CanDestroy:["minecraft:grass","minecraft:oak_sign","minecraft:fern","minecraft:flower_pot"]}
tag @e[type=area_effect_cloud,tag=Progress] add MasterSword
tag @a add MasterSword
tag @a add InDeathTown
tag @a remove InCastleTown
tag @a add Adult
fill 995 5 1394 995 5 1394 minecraft:gold_block
