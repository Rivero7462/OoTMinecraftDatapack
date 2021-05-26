fill 433 66 2719 433 66 2719 minecraft:air
scoreboard players set @e[type=armor_stand,tag=Fisherman1] text 1
data merge entity @e[type=villager,tag=FishingShop,limit=1] {Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:fishing_rod,Count:1,tag:{FishingRod:1b,HideFlags:63,Unbreakable:1,Enchantments:[{id:lure,lvl:3}]},rewardExp:0b}}]}}
kill @e[type=item,nbt={Item:{tag:{FishingRod:1b}}}]
clear @a minecraft:fishing_rod{FishingRod:1b}
tag @a remove SinkLure
tag @a remove StartFishing
tag @a remove QuitFishing
