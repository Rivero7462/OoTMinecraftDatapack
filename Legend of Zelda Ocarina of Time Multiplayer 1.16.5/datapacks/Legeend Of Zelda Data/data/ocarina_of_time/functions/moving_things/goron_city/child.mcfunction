#Npc's
execute as @e[type=armor_stand,tag=Goron3] unless entity @s[x=2183,y=74,z=1849,dx=0,dz=0] if block 2174 54 1827 minecraft:gold_block run tp @s 2183 72.9 1849
execute as @e[type=armor_stand,tag=Goron4] unless entity @s[x=2180,y=72,z=1832,dx=0,dz=0] if block 2174 54 1827 minecraft:gold_block run tp @s 2180 70.9 1832
execute as @e[type=armor_stand,tag=Goron5] unless entity @s[x=2171,y=62,z=1850,dx=0,dz=0] if block 2174 54 1827 minecraft:gold_block run tp @s 2171 60.9 1850
execute as @e[type=armor_stand,tag=Goron6] unless entity @s[x=2182,y=58,z=1820,dx=0,dz=0] if block 2174 54 1827 minecraft:gold_block run tp @s 2182 56.9 1820
execute as @e[type=armor_stand,tag=Goron8] unless entity @s[x=2187,y=64,z=1838,dx=0,dz=0] if block 2174 54 1827 minecraft:gold_block run tp @s 2187 62.9 1838
execute as @e[type=armor_stand,tag=Darunia] unless entity @s[x=2182,y=62,z=1793,dx=0,dz=0] if block 2174 54 1827 minecraft:gold_block run tp @s 2182.0 60.0625 1793

#Spinning Thing
execute unless block 2179 62 1830 minecraft:terracotta run clone 2176 45 1835 2179 50 1832 2178 58 1827

#Torches
execute as @e[type=armor_stand,tag=GoronTorch] at @s run tp @s ~ 58 ~
execute as @e[type=armor_stand,tag=GoronForestTorch] at @s run tp @s ~ 64 ~
fill 2180 58 1820 2180 58 1820 minecraft:jungle_fence
execute as @e[type=armor_stand,tag=GoronTorch1,tag=LitTorch] run fill 2180 59 1820 2180 59 1820 minecraft:torch
fill 2185 58 1827 2185 58 1827 minecraft:jungle_fence
execute as @e[type=armor_stand,tag=GoronTorch2,tag=LitTorch] run fill 2185 59 1827 2185 59 1827 minecraft:torch
fill 2180 58 1838 2180 58 1838 minecraft:jungle_fence
execute as @e[type=armor_stand,tag=GoronTorch3,tag=LitTorch] run fill 2180 59 1838 2180 59 1838 minecraft:torch
fill 2176 58 1838 2176 58 1838 minecraft:jungle_fence
execute as @e[type=armor_stand,tag=GoronTorch4,tag=LitTorch] run fill 2176 59 1838 2176 59 1838 minecraft:torch
fill 2186 64 1841 2186 64 1841 minecraft:jungle_fence
execute as @e[type=armor_stand,tag=GoronTorch5,tag=LitTorch] run fill 2186 65 1841 2186 65 1841 minecraft:torch
fill 2189 64 1838 2189 64 1838 minecraft:jungle_fence
execute as @e[type=armor_stand,tag=GoronTorch6,tag=LitTorch] run fill 2189 65 1838 2189 65 1838 minecraft:torch

#Rolling Goron
kill @e[type=area_effect_cloud,tag=AdultGoron]

#Statue
clone 2181 54 1791 2182 57 1790 2181 60 1791

#Medigoron
data merge entity @e[type=villager,tag=Medigoronshop,limit=1] {Offers:{Recipes:[{buy:{id:lapis_lazuli,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:golden_sword,Count:1,tag:{display:{Name:"\"Giant's Knife\""},HideFlags:63,Damage:24,CanDestroy:["minecraft:grass","minecraft:oak_sign","minecraft:fern","minecraft:flower_pot"],Enchantments:[{id:sharpness,lvl:19}],GiantKnife:1b,MainHandItem:1b}},rewardExp:0b,maxUses:0}]}}

#Shop
execute if block 2173 59 1829 minecraft:air run fill 2173 56 1829 2173 56 1829 minecraft:gold_block
execute unless block 2173 56 1829 minecraft:gold_block run fill 2173 58 1830 2173 60 1828 minecraft:mossy_cobblestone
execute if block 2173 56 1829 minecraft:gold_block run fill 2173 58 1830 2173 60 1828 minecraft:air
