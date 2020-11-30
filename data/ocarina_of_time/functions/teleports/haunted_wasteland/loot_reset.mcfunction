#Pots
fill 2009 31 239 2009 31 239 minecraft:flower_pot
fill 2010 31 239 2010 31 239 minecraft:flower_pot
fill 2009 31 249 2009 31 249 minecraft:flower_pot
fill 2010 31 249 2010 31 249 minecraft:flower_pot
data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Phantom Guide
execute unless entity @e[type=armor_stand,tag=PhantomGuide] run summon minecraft:armor_stand 2006 59 244 {Tags:["PhantomGuide"],Marker:1b,Invisible:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing"}

#Leever
scoreboard players set @e[type=area_effect_cloud,tag=LeeverSpawn] timer 0
