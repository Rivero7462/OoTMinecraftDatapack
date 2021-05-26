#Link's
execute if entity @s[x=-572,y=68,z=-603,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/link/inside
execute if entity @s[x=-572,y=51,z=-605,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/link/outside

#Know It All Brothers
execute if entity @s[x=-602,y=69,z=-611,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/know_it_all_brother/inside
execute if entity @s[x=-597,y=57,z=-611,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/know_it_all_brother/outside

#Mido
execute if entity @s[x=-590,y=65,z=-635,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/mido/inside
execute if entity @s[x=-590,y=55,z=-631,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/mido/outside

#Saria
execute if entity @s[x=-559,y=65,z=-614,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/saria/inside
execute if entity @s[x=-559,y=54,z=-617,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/saria/outside

#Twins
execute if entity @s[x=-548,y=65,z=-615,dx=1,dz=0] run function ocarina_of_time:teleports/kokiri_forest/twins/inside
execute if entity @s[x=-543,y=54,z=-618,dx=1,dz=0] run function ocarina_of_time:teleports/kokiri_forest/twins/outside

#Shop
execute if entity @s[x=-558,y=65,z=-636,dx=1,dz=0] run function ocarina_of_time:teleports/kokiri_forest/shop/inside
execute if entity @s[x=-558,y=53,z=-634,dx=1,dz=0] run function ocarina_of_time:teleports/kokiri_forest/shop/outside

#Hole
execute if entity @s[x=-592,y=69,z=-595,dx=0,dy=1,dz=1] unless entity @a[tag=Adult] run fill -592 70 -595 -592 70 -595 minecraft:birch_trapdoor
execute unless entity @s[x=-592,y=69,z=-595,dx=0,dz=1] run fill -592 70 -595 -592 70 -595 minecraft:air
execute if entity @s[x=-592,y=69,z=-590,dx=0,dy=1,dz=1] unless entity @a[tag=Adult] run fill -592 70 -589 -592 70 -589 minecraft:birch_trapdoor[facing=south]
execute unless entity @s[x=-592,y=69,z=-590,dx=0,dz=1] run fill -592 70 -589 -592 70 -589 minecraft:air

#Great Deku Tree*
execute if entity @s[x=-481,y=60,z=-645,dx=3,dz=6] run function ocarina_of_time:teleports/kokiri_forest/deku_tree/to
execute if entity @s[x=-568,y=67,z=-704,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/deku_tree/from
execute if entity @s[x=-562,y=67,z=-704,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/deku_tree/from_boss

#Forest Exit 1
execute if entity @s[x=-612,y=65,z=-627,dx=0,dz=2] run function ocarina_of_time:teleports/kokiri_forest/forest_exit_1/inside
execute if entity @s[x=-624,y=65,z=-628,dx=0,dy=1,dz=4] run function ocarina_of_time:teleports/kokiri_forest/forest_exit_1/outside

#Hyrule Field*
execute if entity @s[tag=SariaGoodBye,x=-639,y=65,z=-628,dx=0,dy=1,dz=4] run function ocarina_of_time:teleports/kokiri_forest/forest_exit_2/cutscene
execute if entity @s[x=-639,y=65,z=-628,dx=0,dy=1,dz=4] run function ocarina_of_time:teleports/kokiri_forest/forest_exit_2/to
execute if entity @s[x=-574,y=67,z=-704,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/forest_exit_2/from

#Lost Woods Entrance/Exit
execute if entity @s[x=-594,y=75,z=-655,dx=4,dz=1] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_enterance/inside
execute if entity @s[x=-594,y=75,z=-662,dx=4,dz=1] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_enterance/outside

#Lost Woods Wrong Path
execute if entity @s[x=-592,y=75,z=-673,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_enterance/outside
execute if entity @s[x=-576,y=75,z=-663,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_enterance/outside
execute if entity @s[x=-581,y=75,z=-684,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_enterance/outside
execute if entity @s[x=-559,y=75,z=-679,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_enterance/outside
execute if entity @s[x=-554,y=75,z=-700,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_enterance/outside
execute if entity @s[x=-554,y=75,z=-716,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_enterance/outside
execute if entity @s[x=-559,y=75,z=-721,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_enterance/outside
execute if entity @s[x=-575,y=75,z=-711,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_enterance/outside
execute if entity @s[x=-580,y=75,z=-716,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_enterance/outside

#Lost Woods Correct Paths
execute if entity @s[x=-587,y=75,z=-668,dx=0,dz=0] run tp @s -580 75 -668
execute if entity @s[x=-581,y=75,z=-668,dx=0,dz=0] run tp @s -588 75 -668

execute if entity @s[tag=!Adult,x=-597,y=75,z=-668,dx=0,dz=0] run tp @e[type=armor_stand,tag=SkullKid1] -618 78 -672
execute if entity @s[x=-597,y=75,z=-668,dx=0,dz=0] run tp @s -604 75 -668
execute if entity @s[x=-603,y=75,z=-668,dx=0,dz=0] run tp @s -596 75 -668

execute if entity @s[x=-620,y=75,z=-657,dx=0,dz=0] run tp @s -632 69 -646
execute if entity @s[x=-632,y=69,z=-647,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/forest_exit_2_lost_woods

execute if entity @s[x=-576,y=75,z=-673,dx=0,dz=0] run tp @s -576 75 -680
execute if entity @s[x=-576,y=75,z=-679,dx=0,dz=0] run tp @s -576 75 -672

execute if entity @s[x=-571,y=75,z=-684,dx=0,dz=0] run tp @s -563 75 -684
execute if entity @s[x=-564,y=75,z=-684,dx=0,dz=0] run tp @s -572 75 -684

execute if entity @s[x=-559,y=75,z=-689,dx=0,dz=0] run tp @s -559 75 -696
execute if entity @s[x=-559,y=75,z=-695,dx=0,dz=0] run tp @s -559 75 -688

execute if entity @s[x=-559,y=75,z=-705,dx=0,dz=0] run tp @s -559 75 -712
execute if entity @s[x=-559,y=75,z=-711,dx=0,dz=0] run tp @s -559 75 -704

execute if entity @s[x=-564,y=75,z=-716,dx=0,dz=0] run tp @s -571 75 -716
execute if entity @s[x=-570,y=75,z=-716,dx=0,dz=0] run tp @s -563 75 -716

#Lost Woods Extra Area
execute if entity @s[x=-564,y=75,z=-700,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_secret/inside
execute if entity @s[x=-570,y=75,z=-700,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/lost_woods_secret/outside

#Sacred Meadow
execute if entity @s[x=-575,y=75,z=-721,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/sacred_meadow/inside
execute if entity @s[x=-575,y=75,z=-732,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/sacred_meadow/outside

#Goron City*
execute if entity @s[x=-577,y=75,z=-690,dx=2,dz=0] run function ocarina_of_time:teleports/kokiri_forest/goron_city/to
execute if entity @s[x=-572,y=67,z=-704,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/goron_city/from

#Zora's River*
execute if entity @s[x=-543,y=68,z=-684,dx=1,dz=0] run function ocarina_of_time:teleports/kokiri_forest/zora_river/to
execute if entity @s[x=-566,y=67,z=-704,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/zora_river/from

#Fairy Fountain
execute if entity @s[x=-572,y=72,z=-768,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/fairy_fountain/inside
execute if entity @s[x=-562,y=58,z=-802,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/fairy_fountain/outside

#Forest Temple*
execute if entity @s[x=-573,y=88,z=-829,dx=2,dz=0] run function ocarina_of_time:teleports/kokiri_forest/forest_temple/to
execute if entity @s[x=-570,y=67,z=-704,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/forest_temple/from

#Sheikah Stone
execute if entity @s[x=-577,y=63,z=-610,dx=0,dy=1,dz=1] run fill -577 64 -610 -577 64 -610 minecraft:birch_trapdoor
execute unless entity @s[x=-577,y=63,z=-610,dx=0,dz=1] run fill -577 64 -610 -577 64 -610 minecraft:air

execute if entity @s[x=925,y=4,z=-633,dx=0,dy=1,dz=1] run fill 925 5 -633 925 5 -633 minecraft:birch_trapdoor
execute unless entity @s[x=925,y=4,z=-633,dx=0,dz=1] run fill 925 5 -633 925 5 -633 minecraft:air

#To
execute if entity @s[x=-578,y=63,z=-610,dx=0,dz=0] run fill 925 4 -632 925 4 -632 minecraft:air
execute if entity @s[x=-578,y=63,z=-610,dx=0,dz=0] run fill 921 4 -632 921 4 -632 minecraft:smooth_quartz
execute if entity @s[x=-578,y=63,z=-610,dx=0,dz=0] if block 975 6 -643 minecraft:red_concrete run scoreboard players set @e[type=armor_stand,tag=SecretGopher] text 3
execute if entity @s[x=-578,y=63,z=-610,dx=0,dz=0] run function ocarina_of_time:music/chamber_of_sages
execute if entity @s[x=-578,y=63,z=-610,dx=0,dz=0] run tp @s 925 4 -633 180 ~
#From
execute if entity @s[x=925,y=4,z=-632,dx=0,dz=0] run fill 925 4 -632 925 4 -632 minecraft:air
execute if entity @s[x=925,y=4,z=-632,dx=0,dz=0] run fill 921 4 -632 921 4 -632 minecraft:air
execute if entity @s[x=925,y=4,z=-632,dx=0,dz=0] run function ocarina_of_time:music/kokiri_forest
execute if entity @s[x=925,y=4,z=-632,dx=0,dz=0] run tp @s -577 63 -610 -90 ~

#Forest Stage
execute if entity @s[x=-592,y=71,z=-698,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/forest_stage/inside
execute if entity @s[x=-592,y=58,z=-697,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/forest_stage/outside

#Minuet of Forest
execute if entity @s[x=-564,y=67,z=-704,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/from_minuet

#Grotto 1
execute if entity @s[x=-595,y=72,z=-650,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/grotto_1/inside
execute if entity @s[x=-576,y=43,z=-643,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/grotto_1/outside

#Grotto 2
execute if entity @s[x=-573,y=72,z=-687,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/grotto_2/inside
execute if entity @s[x=-570,y=49,z=-674,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/grotto_2/outside

#Grotto 3
execute if entity @s[x=-578,y=72,z=-719,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/grotto_3/inside
execute if entity @s[x=-577,y=49,z=-697,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/grotto_3/outside

#Grotto 4
execute if entity @s[x=-575,y=72,z=-736,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/grotto_4/inside
execute if entity @s[x=-596,y=47,z=-715,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/grotto_4/outside

#Grotto 5
execute if entity @s[x=-566,y=80,z=-815,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/grotto_5/inside
execute if entity @s[x=-576,y=51,z=-795,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/grotto_5/outside

#Respawn
execute if entity @s[x=-568,y=70,z=-704,dx=0,dz=0] run function ocarina_of_time:teleports/kokiri_forest/respawn
