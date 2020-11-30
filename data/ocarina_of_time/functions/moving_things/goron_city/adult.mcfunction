#Npc's
#1
execute unless block 2174 54 1825 minecraft:gold_block if block 2174 54 1827 minecraft:gold_block run tp @e[type=armor_stand,tag=Goron3] 2183 65.9 1849
execute unless block 2174 54 1825 minecraft:gold_block if block 2174 54 1827 minecraft:gold_block run tp @e[type=armor_stand,tag=Goron4] 2180 52.9 1832
execute unless block 2174 54 1825 minecraft:gold_block if block 2174 54 1827 minecraft:gold_block run tp @e[type=armor_stand,tag=Goron5] 2171 55.9 1850
execute unless block 2174 54 1825 minecraft:gold_block if block 2174 54 1827 minecraft:gold_block run tp @e[type=armor_stand,tag=Goron6] 2182 51.9 1820
execute unless block 2174 54 1825 minecraft:gold_block if block 2174 54 1827 minecraft:gold_block run tp @e[type=armor_stand,tag=Goron8] 2187 58.9 1838
execute unless block 2174 54 1825 minecraft:gold_block if block 2174 54 1827 minecraft:gold_block run tp @e[type=armor_stand,tag=Darunia] 2182.0 55.0625 1793
#2
execute as @e[type=armor_stand,tag=Goron3] unless entity @s[x=2183,y=73,z=1849,dx=0,dy=1,dz=0] if block 2174 54 1825 minecraft:gold_block run tp @s 2183 72.9 1849
execute as @e[type=armor_stand,tag=Goron4] unless entity @s[x=2180,y=71,z=1832,dx=0,dy=1,dz=0] if block 2174 54 1825 minecraft:gold_block run tp @s 2180 70.9 1832
execute as @e[type=armor_stand,tag=Goron5] unless entity @s[x=2171,y=61,z=1850,dx=0,dy=1,dz=0] if block 2174 54 1825 minecraft:gold_block run tp @s 2171 60.9 1850
execute as @e[type=armor_stand,tag=Goron6] unless entity @s[x=2182,y=57,z=1820,dx=0,dy=1,dz=0] if block 2174 54 1825 minecraft:gold_block run tp @s 2182 56.9 1820
execute as @e[type=armor_stand,tag=Goron8] unless entity @s[x=2187,y=63,z=1838,dx=0,dy=1,dz=0] if block 2174 54 1825 minecraft:gold_block run tp @s 2187 62.9 1838
execute as @e[type=armor_stand,tag=Darunia] unless entity @s[x=2182,y=56,z=1793,dx=0,dy=1,dz=0] if block 2174 54 1825 minecraft:gold_block run tp @s 2182.0 56 1793

#Spinning Thing
fill 2178 58 1830 2181 63 1827 minecraft:air

#Torches
execute as @e[type=armor_stand,tag=GoronTorch] at @s run tp @s ~ 54 ~
execute as @e[type=armor_stand,tag=GoronForestTorch] at @s run tp @s ~ 54 ~
fill 2180 58 1820 2180 59 1820 minecraft:air
fill 2185 58 1827 2185 59 1827 minecraft:air
fill 2180 58 1838 2180 59 1838 minecraft:air
fill 2176 58 1838 2176 59 1838 minecraft:air
fill 2186 64 1841 2186 65 1841 minecraft:air
fill 2189 64 1838 2189 65 1838 minecraft:air

#Rolling Goron
execute unless entity @e[type=area_effect_cloud,tag=AdultGoron1] run summon minecraft:area_effect_cloud 2167 67.9 1843 {Tags:["AdultGoron1","AdultGoron"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=AdultGoron2] run summon minecraft:area_effect_cloud 2166 67.9 1822 {Tags:["AdultGoron2","AdultGoron"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=AdultGoron3] run summon minecraft:area_effect_cloud 2172 67.9 1813 {Tags:["AdultGoron3","AdultGoron"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=AdultGoron4] run summon minecraft:area_effect_cloud 2182 67.9 1812 {Tags:["AdultGoron4","AdultGoron"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=AdultGoron5] run summon minecraft:area_effect_cloud 2192 67.9 1820 {Tags:["AdultGoron5","AdultGoron"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=AdultGoron6] run summon minecraft:area_effect_cloud 2191 67.9 1844 {Tags:["AdultGoron6","AdultGoron"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#Text
execute if block 2190 65 1819 minecraft:gold_block if block 2191 65 1819 minecraft:air run scoreboard players set @e[type=armor_stand,tag=Goron12] text 1
execute unless block 2174 54 1825 minecraft:gold_block if block 2191 65 1819 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Goron12] text 2
execute if block 2174 54 1825 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Goron12] text 3

#Doors
execute unless block 2190 65 1819 minecraft:gold_block run clone 2176 51 1820 2178 54 1820 2176 58 1819
execute unless block 2190 65 1819 minecraft:gold_block run clone 2175 51 1823 2175 53 1821 2173 58 1828
execute if block 2190 65 1819 minecraft:gold_block run fill 2176 58 1819 2178 61 1819 minecraft:air
execute if block 2190 65 1819 minecraft:gold_block run fill 2173 58 1828 2173 60 1830 minecraft:air

#Statue
execute unless block 2184 55 1790 minecraft:gold_block run clone 2181 54 1791 2182 57 1790 2181 60 1791
execute if block 2184 55 1790 minecraft:gold_block run clone 2178 54 1791 2179 57 1789 2181 60 1791

#Medigoron
data merge entity @e[type=villager,tag=Medigoronshop,limit=1] {Offers:{Recipes:[{buy:{id:lapis_lazuli,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:golden_sword,Count:1,tag:{display:{Name:"\"Giant's Knife\""},HideFlags:63,Damage:24,CanDestroy:["minecraft:grass","minecraft:oak_sign","minecraft:fern","minecraft:flower_pot"],Enchantments:[{id:sharpness,lvl:19}],GiantKnife:1b,MainHandItem:1b}},rewardExp:0b,maxUses:9999999}]}}
execute if entity @a[nbt={Inventory:[{tag:{GiantKnife:1b}}]}] run scoreboard players set @e[type=armor_stand,tag=Medigoron] text 3
execute if entity @a[nbt={Inventory:[{tag:{BrokenKnife:1b}}]}] run scoreboard players set @e[type=armor_stand,tag=Medigoron] text 4
