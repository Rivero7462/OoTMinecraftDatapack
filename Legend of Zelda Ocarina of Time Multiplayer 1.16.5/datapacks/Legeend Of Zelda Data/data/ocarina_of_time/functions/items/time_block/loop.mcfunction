#Kakariko Village
execute if entity @a[tag=InKakarikoVillage] run function ocarina_of_time:items/time_block/kakariko_village
#Goron City
execute if entity @a[tag=InGoronCity] run function ocarina_of_time:items/time_block/goron_city

#Forest Temple
execute if entity @a[tag=InForestTemple] run function ocarina_of_time:items/time_block/forest_temple
#Fire Temple
execute if entity @a[tag=InFireTemple] run function ocarina_of_time:items/time_block/fire_temple
#Water Temple
execute if entity @a[tag=InIceCavern] run function ocarina_of_time:items/time_block/ice_cavern
#Water Temple
execute if entity @a[tag=InWaterTemple] run function ocarina_of_time:items/time_block/water_temple
#Shadow Temple
execute if entity @a[tag=InShadowTemple] run function ocarina_of_time:items/time_block/shadow_temple
#Training Ground
execute if entity @a[tag=InTrainingGround] run function ocarina_of_time:items/time_block/training_ground
#Spirit Temple
execute if entity @a[tag=InSpiritTemple] run function ocarina_of_time:items/time_block/spirit_temple
#Spirit Temple
execute if entity @a[tag=InUndergroundGanonCastle] run function ocarina_of_time:items/time_block/ganon_castle

execute if entity @s[scores={timer=3..}] run scoreboard players set @s timer 1
execute if entity @s[scores={lifetime=3..}] run scoreboard players set @s lifetime 1
