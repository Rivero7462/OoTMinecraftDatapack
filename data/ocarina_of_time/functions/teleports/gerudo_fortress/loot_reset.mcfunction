#Pots
fill -144 42 1973 -144 42 1973 minecraft:flower_pot
fill -145 42 1974 -145 42 1974 minecraft:flower_pot
fill -73 44 1935 -73 44 1935 minecraft:flower_pot
fill -74 44 1934 -74 44 1934 minecraft:flower_pot
fill -53 42 1958 -53 42 1958 minecraft:flower_pot
fill -53 42 1957 -53 42 1957 minecraft:flower_pot
fill -52 42 1957 -52 42 1957 minecraft:flower_pot
fill -105 41 1987 -105 41 1987 minecraft:flower_pot
fill -106 41 1986 -106 41 1986 minecraft:flower_pot
fill -118 42 2007 -118 42 2007 minecraft:flower_pot
fill -119 42 2006 -119 42 2006 minecraft:flower_pot
fill -119 42 2007 -119 42 2007 minecraft:flower_pot

data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Signs
clone -119 56 2047 -119 56 2047 -119 60 2047
clone -56 67 1998 -56 67 1998 -56 70 1998
clone -30 101 1890 -30 101 1890 -30 98 1890

#Gate
fill -54 70 1996 -52 72 1996 minecraft:iron_bars[west=true,east=true]

#Training Ground Reset
data merge entity @e[type=villager,tag=TrainingGroundShop,limit=1] {Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Open Gate\""},OpenTrainingGround:1b}},rewardExp:0b,maxUses:1}]}}
scoreboard players set @e[type=armor_stand,tag=PermanentGerudo1] text 1

#Grotto
fill -68 69 1987 -68 69 1987 minecraft:smooth_sandstone
