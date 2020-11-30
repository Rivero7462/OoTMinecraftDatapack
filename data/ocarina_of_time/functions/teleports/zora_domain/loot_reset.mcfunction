#Pots
fill 1775 30 2347 1775 30 2347 minecraft:flower_pot
fill 1773 30 2347 1773 30 2347 minecraft:flower_pot
fill 1765 33 2341 1765 33 2341 minecraft:flower_pot
fill 1765 33 2340 1765 33 2340 minecraft:flower_pot
fill 1769 33 2338 1769 33 2338 minecraft:flower_pot

data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Rocks
scoreboard players set @a HoldingRock 1
fill 1773 28 2320 1773 28 2320 minecraft:granite_slab
fill 1771 28 2319 1771 28 2319 minecraft:granite_slab
fill 1770 28 2317 1770 28 2317 minecraft:granite_slab
fill 1771 28 2315 1771 28 2315 minecraft:granite_slab
fill 1773 28 2314 1773 28 2314 minecraft:granite_slab
fill 1775 28 2315 1775 28 2315 minecraft:granite_slab
fill 1776 28 2317 1776 28 2317 minecraft:granite_slab
fill 1775 28 2319 1775 28 2319 minecraft:granite_slab

#Signs
execute unless block 1739 36 2324 minecraft:oak_sign run clone 1738 33 2324 1738 33 2324 1739 36 2324
execute unless block 1739 36 2324 minecraft:oak_sign run clone 1773 28 2342 1773 28 2342 1773 30 2342
execute unless block 1739 36 2324 minecraft:oak_sign run clone 1776 50 2297 1776 50 2297 1776 55 2297

#Cod
execute unless entity @e[type=cod,tag=DomainCod1] run summon minecraft:cod 1783 28 2322 {Tags:["DomainCod1","DomainCod"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.3f}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
execute unless entity @e[type=cod,tag=DomainCod2] run summon minecraft:cod 1784 28 2322 {Tags:["DomainCod2","DomainCod"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.3f}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
execute unless entity @e[type=cod,tag=DomainCod3] run summon minecraft:cod 1782 28 2322 {Tags:["DomainCod3","DomainCod"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.3f}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
execute unless entity @e[type=cod,tag=DomainCod4] run summon minecraft:cod 1783 28 2321 {Tags:["DomainCod4","DomainCod"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.3f}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
execute unless entity @e[type=cod,tag=DomainCod5] run summon minecraft:cod 1783 28 2323 {Tags:["DomainCod5","DomainCod"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.3f}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing"}

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone21] run summon minecraft:armor_stand 1774 54 2291 {Tags:["GossipStone21","GossipStone","Npc"],Rotation:[180f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}

#Grotto
fill 1746 28 2320 1746 28 2320 minecraft:stone
