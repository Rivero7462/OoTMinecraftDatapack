scoreboard players reset @e[type=area_effect_cloud,tag=Progress] Xpos
scoreboard players reset @e[type=area_effect_cloud,tag=Progress] Ypos
scoreboard players reset @e[type=area_effect_cloud,tag=Progress] Zpos
kill @e[type=armor_stand,tag=FaroreWind]
execute if entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run function ocarina_of_time:items/lens_of_truth/off_2

#Other Items
execute store result score @e[type=area_effect_cloud,tag=Progress] BlueRupee2 run clear @a minecraft:tnt
execute store result score @e[type=area_effect_cloud,tag=Progress] RedRupee2 run clear @a minecraft:glass_bottle
execute if entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Hylian Shield\""},Unbreakable:1b,Damage:2}}]}] run tag @e[type=area_effect_cloud,tag=Progress] add ReturnHylianShield
execute if entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Hylian Shield\""},Unbreakable:1b,Damage:2}}]}] run clear @a shield{display:{Name:"\"Hylian Shield\""},Unbreakable:1b,Damage:2}

#Bottled Items
execute store result score @e[type=area_effect_cloud,tag=Progress] PurpleRupee2 run clear @a minecraft:carrot_on_a_stick{BottledFairy:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] OrangeRupee2 run clear @a minecraft:carrot_on_a_stick{BottledBug:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] HugeRupee2 run clear @a minecraft:carrot_on_a_stick{BottledFish:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] ArrowCount run clear @a minecraft:carrot_on_a_stick{BottledMilk:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] PushBlock run clear @a minecraft:carrot_on_a_stick{BottledHalfMilk:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] nearbyBomb run clear @a minecraft:carrot_on_a_stick{BottledPoe:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] CuccoCount run clear @a minecraft:carrot_on_a_stick{BottledBigPoe:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] BombCount run clear @a minecraft:carrot_on_a_stick{BlueFire:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] Shock run clear @a minecraft:carrot_on_a_stick{GreenPotion:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] Slime run clear @a minecraft:carrot_on_a_stick{RedPotion:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] DekuStickTimer run clear @a minecraft:carrot_on_a_stick{BluePotion:1b}

#Rupees
execute store result score @e[type=area_effect_cloud,tag=Progress] GreenRupee run clear @a minecraft:lime_dye{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] BlueRupee run clear @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] RedRupee run clear @a minecraft:red_dye{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] PurpleRupee run clear @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] HugeRupee run clear @a minecraft:yellow_dye{display:{Name:"{\"text\":\"Huge Rupee\"}"},Item:1b}
execute store result score @e[type=area_effect_cloud,tag=Progress] OrangeRupee run clear @a minecraft:orange_dye{display:{Name:"{\"text\":\"Orange Rupee\"}"},Item:1b}

execute as @a run function ocarina_of_time:moving_things/adult_child/save_adult_info
execute as @a run function ocarina_of_time:moving_things/adult_child/child_check/check_items
execute as @a run function ocarina_of_time:moving_things/adult_child/apply_child
function ocarina_of_time:moving_things/adult_child/child_check/found_items

clear @a minecraft:diamond_sword
time set day

tag @a remove InDeathTown
tag @a add InCastleTown
tag @a remove Adult
