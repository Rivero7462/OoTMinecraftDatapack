#Enemies
function ocarina_of_time:moving_things/ice_cavern/enemies/loop

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/ice_cavern/pots

#Silver Rupees
#1
execute if block 2047 27 2305 minecraft:air if entity @e[type=armor_stand,tag=IceBladeTrap] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee=0}] run fill 2058 30 2288 2057 32 2287 minecraft:air replace minecraft:ice
execute if block 2047 27 2305 minecraft:air if entity @e[type=armor_stand,tag=IceBladeTrap] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee=0}] run fill 2047 27 2305 2047 27 2305 minecraft:gold_block
#2
execute if block 2035 27 2293 minecraft:air if entity @e[type=armor_stand,tag=IceBladeTrap] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee2=0}] run fill 2021 28 2300 2019 31 2300 minecraft:air replace minecraft:ice
execute if block 2035 27 2293 minecraft:air if entity @e[type=armor_stand,tag=IceBladeTrap] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee2=0}] run fill 2035 27 2293 2035 27 2293 minecraft:gold_block

#Red Ice
execute unless block 2046 26 2297 minecraft:red_stained_glass run fill 2046 26 2298 2046 28 2296 minecraft:air
execute unless block 2062 26 2299 minecraft:red_stained_glass run fill 2062 26 2298 2062 28 2300 minecraft:air
execute unless block 2018 32 2317 minecraft:red_stained_glass run fill 2016 32 2316 2020 34 2319 minecraft:air replace minecraft:red_stained_glass

#Navi Help
execute unless block 2059 27 2242 minecraft:gold_block if entity @a[x=2059,y=30,z=2242,dx=3,dz=3] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"This ","color":"aqua"},{"text":"blue fire","color":"white"},{"text":"... It doesn't seem natural. Maybe you can use it for something. But how could you carry it?","color":"aqua"}]
execute unless block 2059 27 2242 minecraft:gold_block if entity @a[x=2059,y=30,z=2242,dx=3,dz=3] run fill 2059 27 2242 2059 27 2242 minecraft:gold_block

#Blue Fire
#1
particle minecraft:soul_fire_flame 2061.0 30.5 2244.0 .2 .4 .2 0 1
execute if entity @a[x=2059,y=30,z=2242,dx=3,dz=3] if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Blue Fire\"}"},Unbreakable:1b,Damage:18,HideFlags:63,BlueFire:1b}
execute if entity @a[x=2059,y=30,z=2242,dx=3,dz=3] if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run clear @a minecraft:glass_bottle 1
#2
particle minecraft:soul_fire_flame 2086.0 26.5 2311.0 .2 .4 .2 0 1
execute if entity @a[x=2084,y=26,z=2309,dx=2,dz=3] if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Blue Fire\"}"},Unbreakable:1b,Damage:18,HideFlags:63,BlueFire:1b}
execute if entity @a[x=2084,y=26,z=2309,dx=2,dz=3] if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run clear @a minecraft:glass_bottle 1
#3
particle minecraft:soul_fire_flame 2009.0 29.5 2290.0 .2 .4 .2 0 1
execute if entity @a[x=2008,y=29,z=2288,dx=2,dz=3] if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Blue Fire\"}"},Unbreakable:1b,Damage:18,HideFlags:63,BlueFire:1b}
execute if entity @a[x=2008,y=29,z=2288,dx=2,dz=3] if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run clear @a minecraft:glass_bottle 1

#Compass
execute if data block 2078 25 2318 {Items:[]} run fill 2078 26 2322 2078 26 2322 minecraft:gold_block

#Pits
execute at @a if entity @a[y=18,dy=0] if block ~ ~-1 ~ minecraft:black_wool run tp @a 2054 46 2299

#Time blocks
execute if entity @a[x=2011,y=27,z=2287,dx=5,dy=1,dz=5] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 2014 31 2289 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=2011,y=27,z=2287,dx=5,dy=1,dz=5] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=2011,y=27,z=2287,dx=5,dy=1,dz=5] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] timer 1

#Big Fairies
execute positioned 2050 26 2331 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 2050 26 2331 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 2050 26 2331 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 2050 26 2331 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon

#Kill Green Navi
execute if entity @a[tag=GreenNaviSpot] positioned 2050 26 2331 unless entity @a[distance=..5] unless entity @a[x=2011,y=27,z=2287,dx=5,dy=1,dz=5] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] positioned 2050 26 2331 unless entity @a[distance=..5] unless entity @a[x=2011,y=27,z=2287,dx=5,dy=1,dz=5] run tag @a remove GreenNaviSpot

#Ice Block
execute as @a at @s if entity @s[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/ice_cavern/ice_block/loop
execute as @e[type=armor_stand,tag=IceBlock] at @s run function ocarina_of_time:moving_things/ice_cavern/ice_block/ice_block
execute unless block 2028 26 2284 minecraft:light_blue_concrete if entity @a[x=2039,y=27,z=2280,dx=0,dz=2] run fill 2033 26 2299 2011 26 2274 minecraft:air replace minecraft:light_blue_concrete
execute unless block 2028 26 2284 minecraft:light_blue_concrete if entity @a[x=2039,y=27,z=2280,dx=0,dz=2] run fill 2026 26 2282 2028 26 2284 minecraft:light_blue_concrete
execute unless block 2028 26 2284 minecraft:light_blue_concrete if entity @a[x=2039,y=27,z=2280,dx=0,dz=2] run kill @e[tag=IceBlock]

#Cutscene
execute unless block 2026 30 2327 minecraft:gold_block if entity @a[x=2023,y=33,z=2324,dx=15,dz=15] if entity @a[nbt={Inventory:[{id:"minecraft:iron_boots"}]}] run tag @a add LearnSerenade
execute unless block 2026 30 2327 minecraft:gold_block if entity @a[x=2023,y=33,z=2324,dx=15,dz=15] if entity @a[nbt={Inventory:[{id:"minecraft:iron_boots"}]}] run fill 2026 30 2327 2026 30 2327 minecraft:gold_block
