#Signs
#Child
execute unless entity @a[tag=Adult] run clone 423 61 2720 423 61 2720 423 65 2719
#Adult
execute if entity @a[tag=Adult] run clone 423 61 2719 423 61 2719 423 65 2719

#Cap
execute if entity @a[tag=Adult] unless block 433 63 2722 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=Fisherman1,limit=1] {ArmorItems:[{},{},{id:leather_chestplate,Count:1b,tag:{display:{color:493036}}},{id:player_head,Count:1b,tag:{SkullOwner:{Id:[I;-307533085,1359626889,-1640353966,689722561],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzY5OTAyOWVlY2ZiYWE2ZjUwMmJkNWFiZjQ3NjFjOWQzMmE5MTk0M2U0NjA2ZjI2NDVmMWQwYjE2NjQ1MzZmZSJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] if block 433 63 2722 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=Fisherman1,limit=1] {ArmorItems:[{},{},{id:leather_chestplate,Count:1b,tag:{display:{color:493036}}},{id:player_head,Count:1b,tag:{SkullOwner:{Id:[I;-90955986,-219788438,-2006239003,-792279934],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTc3YWM4YTZjMzgxNWJkYjU4MGE1Y2E2ODliODMyNzg1NTYwZGEwOGQwMGU3MmE2NjU1ZjE4NDBjNGViZmZlMSJ9fX0="}]}}}}]}
execute unless entity @a[tag=Adult] run data merge entity @e[type=armor_stand,tag=Fisherman1,limit=1] {ArmorItems:[{},{},{id:leather_chestplate,Count:1b,tag:{display:{color:493036}}},{id:player_head,Count:1b,tag:{SkullOwner:{Id:[I;1968250747,873679941,-1873839302,273597716],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTk5MWY2NzM1NmIxNmE3ZGY3OTk5NWJkMjQ5OWY3ZDRkNmJiNTk2NGRjMGRiNGFmODE5ODczNDA1OTk4NzU4NyJ9fX0="}]}}}}]}

#Villager
data merge entity @e[type=villager,tag=FishingShop,limit=1] {Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:fishing_rod,Count:1,tag:{FishingRod:1b,HideFlags:63,Unbreakable:1,Enchantments:[{id:lure,lvl:3}]},rewardExp:0b}}]}}

#Adult Return
execute if block 411 57 2721 minecraft:gold_block unless block 411 57 2720 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Fisherman1] text 2

#Sinking Lure
execute as @e[type=area_effect_cloud,tag=SinkLure] run data merge entity @s {Tags:["SinkLure"]}
tag @e[type=area_effect_cloud,tag=SinkLure,limit=1,sort=random] add SinkSpot
