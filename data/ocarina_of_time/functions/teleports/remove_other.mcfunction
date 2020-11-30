#Items
execute if entity @e[type=armor_stand,tag=Ocarina] run function ocarina_of_time:items/ocarina/ocarina_3
execute as @e[type=item] store result score @s lifetime run data get entity @s Age
execute as @e[type=item,scores={lifetime=0..10}] unless entity @s[nbt={Item:{tag:{Item:1b}}}] unless entity @s[tag=NoPickup] unless entity @s[x=984.69,y=65.55,z=1914.125,distance=..0.3] unless entity @s[x=526,y=38,z=883,dx=0,dz=0] unless entity @s[x=-76.0,y=59.5,z=1331.0,dx=0,dz=0] unless entity @s[x=1701,y=64,z=965,dx=0,dz=0] unless entity @s[x=-82.0,y=59.5,z=1338.0,dx=0,dz=0] unless entity @s[x=-70.0,y=59.5,z=1338.5,dx=0,dz=0] run tag @s add Return
execute as @e[type=item] if entity @s[nbt={Item:{tag:{Item:1b}}}] run kill @s
execute if entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run function ocarina_of_time:items/lens_of_truth/off_2
execute if entity @a[nbt={Inventory:[{tag:{MirrorShield:1b,Damage:5}}]}] run function ocarina_of_time:items/mirror_shield/reset
execute if entity @a[nbt={Inventory:[{tag:{MirrorShield:1b,Damage:4}}]}] run function ocarina_of_time:items/mirror_shield/reset
clear @a minecraft:fishing_rod{FishingRod:1b}

#Scores
scoreboard objectives remove ShardAgony
scoreboard objectives setdisplay sidebar
scoreboard objectives remove GerudoThief
scoreboard players set @e[type=armor_stand,tag=ShootingGallery1] text 0
scoreboard players set @e[type=armor_stand,tag=ShootingGallery2] text 0
execute if block 1541 55 1916 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=MamamuYan2] text 3
execute if block 1541 55 1916 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=MutohWife] text 3
execute if block 1541 55 1916 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Guard28] text 3
scoreboard players set @e[type=zombie,tag=DekuScrubSeeds] text 0
scoreboard players set @e[type=area_effect_cloud,tag=TimeBlock] timer 1
scoreboard players set @e[type=area_effect_cloud,tag=TimeBlock] lifetime 1
scoreboard players set @e[type=armor_stand,tag=Fisherman1] text 1
scoreboard players reset @e[type=area_effect_cloud,tag=BeanSpot]
scoreboard players set @e[type=area_effect_cloud,tag=FakeSaria] timer 0
scoreboard players set @e[type=area_effect_cloud,tag=Guay] timer 0

#Tags
tag @a remove ShardAgonyStart
tag @a remove StopTime
tag @a remove Indoors
tag @a remove NoSun
tag @a remove NoGuay
tag @a remove NoTeleport
tag @a remove Miniboss
tag @a remove Reflect
tag @a remove ReflectIce
tag @a remove ReflectFire
tag @a remove TimerRoom1
tag @a remove TimerRoom2
tag @a remove TimerRoom3
tag @a remove StopParticles
tag @a remove WolfosGate
tag @a remove ResetPurplePoe
tag @a remove StingerRoom
tag @e[type=armor_stand,tag=Tentacle] remove Seen
tag @a remove ImpaCastleTeleport
tag @a remove MiniBoss
tag @a remove Boss
tag @a remove NoNightVision
tag @a remove Scared
tag @a remove Holding
tag @a remove LeeverAttack
tag @a remove SinkLure
tag @a remove StartFishing
tag @a remove QuitFishing
tag @a remove GreenNaviSpot
execute unless block 923 5 -637 minecraft:lever[powered=true] run tag @a remove NoNavi
tag @e[type=area_effect_cloud,tag=BeanSpot] remove Bean
tag @e[type=area_effect_cloud,tag=BeanSpot] remove Bean1
tag @e[type=area_effect_cloud,tag=BeanSpot] remove Bean2
tag @e[type=area_effect_cloud,tag=BeanSpot] remove Bean3
tag @a remove StartDive
tag @a remove Meteors
tag @a remove Escape1
tag @a remove Escape2
tag @a remove Escape3
tag @a remove Escape4
tag @a remove RightFireWall
tag @a remove LeftFireWall

#Effects
effect clear @a minecraft:slowness

#Entities
execute if entity @a[tag=KillAngryCucco] run kill @e[type=chicken,tag=Cucco]
tag @e[type=armor_stand,tag=GuruGuru] remove Faster
tp @e[type=armor_stand,tag=OwlStand9] 2027 159.2 1347
tp @e[type=armor_stand,tag=OwlStand10] 730.3 73 2761
execute if entity @a[tag=Owl6] unless entity @e[type=armor_stand,tag=OwlStand6] run summon minecraft:armor_stand 1486 73.5 2326 {Tags:["OwlStand6"],Rotation:[15f],ArmorItems:[{},{},{},{id:infested_stone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @a[tag=CarryRuto] run tp @e[type=armor_stand,tag=Ruto1] 1697 21.3 1300 120 ~
tp @e[type=villager,tag=ShootingGallery1] 877.2 59.7 1405.5
tp @e[type=armor_stand,tag=Impa] 843 75 410
execute as @e[type=armor_stand,tag=VillageTalon] at @s if block 1540 55 1916 minecraft:gold_block run tp @s ~ 55 ~
tp @e[type=villager,tag=ShootingGallery2] 1521.6 47.7 1952

#Blocks
fill 1567 43 1937 1567 43 1937 minecraft:air
fill 2143 32 1935 2143 32 1935 minecraft:redstone_block
clone 699 66 2774 696 66 2774 729 71 2761
clone 1320 66 2774 1317 66 2774 1350 71 2761
execute unless block 1483 67 2326 minecraft:gold_block run fill 1482 67 2326 1482 67 2326 minecraft:air
fill 1762 47 1292 1762 47 1292 minecraft:air
fill 1762 46 1273 1762 46 1273 minecraft:air
fill 1751 52 1273 1751 56 1315 minecraft:air replace minecraft:vine
fill 918 75 942 918 77 937 minecraft:iron_bars[north=true,south=true]
fill 491 30 1299 496 32 1301 minecraft:air replace minecraft:iron_bars
fill 1405 13 -663 1405 16 -659 minecraft:air replace minecraft:andesite
fill 2161 12 1895 2162 14 1897 minecraft:air
fill 2163 12 1898 2158 14 1901 minecraft:air
fill 2158 12 1897 2160 14 1896 minecraft:air
fill 409 9 1398 423 10 1392 minecraft:air replace minecraft:magenta_concrete_powder
clone 419 9 1404 423 10 1400 419 9 1392
execute unless block 1650 89 910 minecraft:gold_block run fill 1649 89 910 1649 89 910 minecraft:air
execute unless block 1591 88 925 minecraft:gold_block if block 1591 88 926 minecraft:gold_block run fill 1591 88 926 1591 88 926 minecraft:air
execute unless block 1750 75 958 minecraft:gold_block run fill 1751 75 958 1751 75 958 minecraft:air
fill 1752 61 1013 1752 61 1013 minecraft:air
execute unless block 1797 60 985 minecraft:gold_block run fill 1797 60 984 1797 60 984 minecraft:air
execute unless block 1706 55 964 minecraft:gold_block run fill 1706 55 965 1706 55 965 minecraft:air
execute unless block 1791 55 935 minecraft:gold_block run fill 1791 55 934 1791 55 934 minecraft:air
execute unless block 1775 54 915 minecraft:gold_block run fill 1774 54 915 1774 54 915 minecraft:air
execute unless block 1551 54 939 minecraft:gold_block run fill 1552 54 939 1552 54 939 minecraft:air
execute unless block 1702 17 1259 minecraft:gold_block run fill 1701 17 1259 1701 17 1259 minecraft:air
execute unless block 1683 44 1328 minecraft:gold_block run fill 1681 44 1325 1681 44 1331 minecraft:air
fill 1427 5 -665 1427 5 -665 minecraft:air
fill 1405 13 -663 1405 16 -659 minecraft:air replace minecraft:andesite
execute unless block 2166 9 1896 minecraft:gold_block run fill 2166 9 1898 2166 9 1898 minecraft:air
fill 904 24 -1207 904 24 -1207 minecraft:air
fill 904 27 -1203 904 27 -1201 minecraft:air
fill 904 24 -1205 904 24 -1205 minecraft:air
fill 905 28 -1212 891 33 -1198 minecraft:air replace minecraft:barrier
fill 3008 40 1958 3008 40 1958 minecraft:air
clone 3026 28 1955 3028 33 1957 3026 39 1955
fill 1064 52 3092 1064 52 3092 minecraft:air
fill 1054 63 3082 1073 67 3101 minecraft:air replace minecraft:pink_stained_glass
fill 1054 62 3082 1073 62 3101 minecraft:water replace minecraft:pink_stained_glass
execute unless block 1653 15 962 minecraft:gold_block run fill 1651 15 962 1652 15 962 minecraft:air
execute unless block 3077 39 1935 minecraft:gold_block run fill 3076 39 1935 3076 39 1935 minecraft:air
execute unless block 3001 102 1956 minecraft:gold_block run fill 3001 102 1957 3001 102 1957 minecraft:air
execute unless block 3064 34 1911 minecraft:gold_block run fill 3064 34 1912 3064 34 1912 minecraft:air
fill 1388 74 910 1388 71 920 minecraft:air
fill 1380 70 924 1380 70 924 minecraft:mossy_cobblestone
execute unless block -109 39 2003 minecraft:gold_block run fill -110 39 2003 -110 39 2003 minecraft:air
execute unless block -84 34 1985 minecraft:gold_block run fill -85 34 1985 -85 34 1985 minecraft:air
execute unless block -47 39 1970 minecraft:gold_block run fill -47 39 1969 -47 39 1969 minecraft:air
execute unless block -134 40 1937 minecraft:gold_block run fill -135 40 1937 -135 40 1937 minecraft:air
execute unless block 536 34 918 minecraft:gold_block run fill 536 34 917 536 34 917 minecraft:air
execute unless block 460 33 918 minecraft:gold_block run fill 460 33 919 460 33 919 minecraft:air
execute unless block 540 34 852 minecraft:gold_block run fill 540 34 851 540 34 851 minecraft:air
execute unless block 465 38 854 minecraft:gold_block run fill 464 38 854 464 38 854 minecraft:air
fill 1641 75 1954 1641 75 1954 minecraft:air
fill 1641 75 1953 1641 75 1953 minecraft:air
execute unless block -63 83 872 minecraft:gold_block run fill -64 83 872 -64 83 872 minecraft:air
execute unless block 11 114 917 minecraft:gold_block run fill 12 114 917 12 114 917 minecraft:air
execute unless block -65 114 917 minecraft:gold_block run fill -64 114 917 -64 114 917 minecraft:air
execute unless block 9 110 870 minecraft:gold_block run fill 10 110 870 10 110 870 minecraft:air
execute unless block -24 112 799 minecraft:gold_block run fill -25 112 799 -25 112 799 minecraft:air
execute unless block -25 117 763 minecraft:gold_block run fill -26 117 763 -27 117 763 minecraft:air
execute unless block 461 39 823 minecraft:gold_block run fill 460 39 823 460 39 823 minecraft:air
execute unless block 2050 22 2328 minecraft:gold_block run fill 2049 22 2328 2049 22 2328 minecraft:air
execute unless block 2026 30 2325 minecraft:gold_block run fill 2026 30 2324 2026 30 2324 minecraft:air
execute unless block 1500 35 1917 minecraft:gold_block run fill 1499 35 1917 1499 35 1917 minecraft:air
fill 697 67 2766 697 67 2766 minecraft:air
execute unless block -597 39 -728 minecraft:gold_block run fill -598 39 -728 -598 39 -728 minecraft:air
execute unless block 2254 37 1903 minecraft:stone_pressure_plate run fill 2269 34 1929 2269 34 1929 minecraft:air
execute unless block 2276 50 1941 minecraft:stone_pressure_plate run fill 2285 46 1945 2285 46 1945 minecraft:air
execute unless block -445 17 1973 minecraft:gold_block run fill -445 17 1972 -445 17 1972 minecraft:air
fill -420 15 1973 -420 15 1973 minecraft:air
execute unless block -535 17 1976 minecraft:gold_block run fill -535 17 1977 -535 17 1977 minecraft:air
fill -569 16 1974 -569 16 1974 minecraft:air
fill -516 27 2013 -516 27 2013 minecraft:air
execute unless block -461 27 2016 minecraft:gold_block run fill -461 27 2015 -461 27 2015 minecraft:air
fill 538 36 908 538 36 908 minecraft:air
fill 538 36 860 538 36 860 minecraft:air
execute unless block -500 36 1617 minecraft:gold_block run fill -500 36 1616 -500 36 1616 minecraft:air
execute unless block -489 48 1613 minecraft:gold_block run fill -488 48 1613 -488 48 1613 minecraft:air
execute unless block -497 55 1627 minecraft:gold_block run fill -497 55 1628 -497 55 1628 minecraft:air
fill -597 46 278 -597 46 278 minecraft:air

#Great Fairy Fires
fill 940 76 967 940 76 967 minecraft:polished_andesite
fill 954 76 967 954 76 967 minecraft:polished_andesite
fill 2035 131 1310 2035 131 1310 minecraft:polished_andesite
fill 2021 131 1310 2021 131 1310 minecraft:polished_andesite
fill 2716 46 2014 2716 46 2014 minecraft:polished_andesite
fill 2730 46 2014 2730 46 2014 minecraft:polished_andesite
fill 1458 58 1389 1458 58 1389 minecraft:polished_andesite
fill 1444 58 1389 1444 58 1389 minecraft:polished_andesite
fill 467 40 477 467 40 477 minecraft:polished_andesite
fill 453 40 477 453 40 477 minecraft:polished_andesite
fill 1456 43 481 1456 43 481 minecraft:polished_andesite
fill 1470 43 481 1470 43 481 minecraft:polished_andesite

#Boss Doors
execute if block 3037 45 1956 minecraft:gold_block run fill 3037 49 1956 3037 49 1956 minecraft:magenta_glazed_terracotta[facing=east]
execute if block 898 19 -1190 minecraft:gold_block run fill 898 23 -1190 898 23 -1190 minecraft:magenta_glazed_terracotta[facing=south]
execute unless block 898 19 -1190 minecraft:gold_block run fill 898 23 -1190 898 23 -1190 minecraft:magenta_glazed_terracotta[facing=north]
execute if block 3037 45 1956 minecraft:gold_block run fill 3037 49 1956 3037 49 1956 minecraft:magenta_glazed_terracotta[facing=east]

#Other
execute as @e[type=area_effect_cloud,tag=Songs] unless entity @s[scores={time=..15}] run stopsound @a record
execute as @e[type=armor_stand,tag=LitTorch] run data merge entity @s {Marker:0b}
execute as @e[type=armor_stand,tag=UnlitTorch] run data merge entity @s {Marker:0b}
data merge entity @e[type=horse,tag=Epona,limit=1] {Attributes:[{Name:"generic.movement_speed",Base:0.3f},{Base:.9,Name:"horse.jump_strength"}]}
execute as @e[type=armor_stand,tag=BowlingOwner] run function ocarina_of_time:moving_things/castle_town/minigames/reset_bowling
function ocarina_of_time:moving_things/zora_river/waterfall_2
clear @a minecraft:lever{display:{Name:"\"Small Key (Treasure Shop)\""}}
clear @a minecraft:carrot_on_a_stick{Compass:1b}
weather clear
stopsound @a hostile

#Ruto
tag @e[type=armor_stand,tag=Ruto1,tag=HoldRuto] add ThrowRuto
execute as @s[type=armor_stand,tag=Ruto1,tag=HoldRuto] run function ocarina_of_time:moving_things/jabu_jabu/reset_ruto

#Dampe Race
execute if entity @a[tag=DampeRace] as @e[type=armor_stand,tag=Dampe2] unless entity @s[tag=CloseDoor] unless entity @s[scores={timer=1418..}] unless entity @a[x=1615,y=75,z=1942,dx=0,dz=0] run tp @a 1657 48 1951
tag @a remove DampeRace
tag @e[type=armor_stand,tag=Dampe2] remove Start
scoreboard objectives remove click
tp @e[type=armor_stand,tag=Dampe2] 1658 39 1951.0
scoreboard players set @e[type=armor_stand,tag=Dampe2] lifetime 0
scoreboard players set @e[type=armor_stand,tag=Dampe2] GameTimer 0
scoreboard players set @e[type=armor_stand,tag=Dampe2] text 0
tag @e[type=armor_stand,tag=Dampe2] remove CloseDoor
tag @e[type=armor_stand,tag=Dampe2] remove FinalDoor
kill @e[type=silverfish]
scoreboard players set @e[type=armor_stand,tag=Dampe2] timer 0
fill 1728 37 1956 1728 39 1958 minecraft:polished_andesite
fill 1704 32 1994 1704 34 1996 minecraft:polished_andesite
fill 1652 41 2012 1652 43 2014 minecraft:polished_andesite

#Bean Spots
fill -549 65 -643 -600 73 -612 minecraft:air replace minecraft:acacia_leaves
fill -635 63 -645 -630 69 -612 minecraft:air replace minecraft:acacia_leaves
fill -583 75 -706 -581 80 -704 minecraft:air replace minecraft:acacia_leaves
fill 2010 93 1450 2035 121 1458 minecraft:air replace minecraft:acacia_leaves
fill 2664 37 1902 2713 57 1932 minecraft:air replace minecraft:acacia_leaves
fill 2664 37 1932 2713 59 1959 minecraft:air replace minecraft:acacia_leaves
fill 2680 52 1959 2713 59 1964 minecraft:air replace minecraft:acacia_leaves
fill 721 67 2687 830 69 2780 minecraft:air replace minecraft:acacia_leaves
fill 721 70 2687 830 72 2780 minecraft:air replace minecraft:acacia_leaves
fill 721 73 2687 830 75 2780 minecraft:air replace minecraft:acacia_leaves
fill 721 76 2687 830 78 2780 minecraft:air replace minecraft:acacia_leaves
fill 721 79 2687 830 79 2780 minecraft:air replace minecraft:acacia_leaves
fill 1342 67 2687 1451 69 2780 minecraft:air replace minecraft:acacia_leaves
fill 1342 70 2687 1451 72 2780 minecraft:air replace minecraft:acacia_leaves
fill 1342 73 2687 1451 75 2780 minecraft:air replace minecraft:acacia_leaves
fill 1342 76 2687 1451 78 2780 minecraft:air replace minecraft:acacia_leaves
fill 1342 79 2687 1451 79 2780 minecraft:air replace minecraft:acacia_leaves
fill 1506 69 2316 1584 82 2299 minecraft:air replace minecraft:acacia_leaves
fill 381 20 2040 364 45 1985 minecraft:air replace minecraft:acacia_leaves
fill 367 55 391 426 61 464 minecraft:air replace minecraft:acacia_leaves
fill 367 61 391 426 67 464 minecraft:air replace minecraft:acacia_leaves
fill 367 68 391 426 70 464 minecraft:air replace minecraft:acacia_leaves
fill 1612 75 1941 1614 80 1943 minecraft:air replace minecraft:acacia_leaves
fill 735 67 2691 735 67 2693 minecraft:acacia_leaves[persistent=true]
fill 736 67 2692 734 67 2692 minecraft:acacia_leaves[persistent=true]
fill 1357 67 2692 1355 67 2692 minecraft:acacia_leaves[persistent=true]
fill 1356 67 2691 1356 67 2693 minecraft:acacia_leaves[persistent=true]
fill 1534 74 2312 1534 74 2310 minecraft:acacia_leaves[persistent=true]
fill 1535 74 2311 1533 74 2311 minecraft:acacia_leaves[persistent=true]

#Wall of Donators
fill 890 5 -520 890 5 -520 minecraft:air
fill 890 5 -522 890 5 -522 minecraft:redstone_wire

#Secret
execute if entity @a[tag=FinalSecret] unless entity @a[nbt={Inventory:[{tag:{Legendary:1b}}]}] run give @a minecraft:firework_rocket{Legendary:1b} 1
