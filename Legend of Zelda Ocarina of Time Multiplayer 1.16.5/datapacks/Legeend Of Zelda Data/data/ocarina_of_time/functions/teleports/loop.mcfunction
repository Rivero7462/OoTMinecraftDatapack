#Day Cycle
execute as @a at @s store result score @s time run time query daytime
execute as @a at @s unless entity @s[tag=StopTime] run function ocarina_of_time:teleports/day_cycle/start

#Death Child
execute as @a[x=-560,y=67,z=-704,dx=0,dz=0] run function ocarina_of_time:teleports/child
#Death Adult
execute as @a[x=933,y=31,z=1394,dx=0,dz=0] run function ocarina_of_time:teleports/adult

#Kokiri Forest
execute as @a[tag=InKokiriForest] at @s run function ocarina_of_time:teleports/kokiri_forest/loop

#Deku Tree
execute as @a[tag=InDekuTree] at @s run function ocarina_of_time:teleports/deku_tree/loop

#Hyrule Field
execute as @a[tag=InHyruleField] at @s run function ocarina_of_time:teleports/hyrule_field/loop
execute as @a[tag=EnterRanch] at @s run function ocarina_of_time:teleports/hyrule_field/lon_lon_ranch

#Zora's River
execute as @a[tag=InZoraRiver] at @s run function ocarina_of_time:teleports/zora_river/loop

#Zora's Domain
execute as @a[tag=InZoraDomain] at @s run function ocarina_of_time:teleports/zora_domain/loop

#Zora's Fountain
execute as @a[tag=InZoraFountain] at @s run function ocarina_of_time:teleports/zora_fountain/loop

#Jabu Jabu
execute as @a[tag=InJabuJabu] at @s run function ocarina_of_time:teleports/jabu_jabu/loop

#Ice Cavern
execute as @a[tag=InIceCavern] at @s run function ocarina_of_time:teleports/ice_cavern/loop

#Kakariko Village
execute as @a[tag=InKakarikoVillage] at @s run function ocarina_of_time:teleports/kakariko_village/loop

#Death Mountain
execute as @a[tag=InDeathMountain] at @s run function ocarina_of_time:teleports/death_mountain/loop

#Dodongo's Cavern
execute as @a[tag=InDodongoCavern] at @s run function ocarina_of_time:teleports/dodongo_cavern/loop

#Goron City
execute as @a[tag=InGoronCity] at @s run function ocarina_of_time:teleports/goron_city/loop

#Death Mountain Crater
execute as @a[tag=InDeathCrater] at @s run function ocarina_of_time:teleports/death_mountain_crater/loop

#Fire Temple
execute as @a[tag=InFireTemple] at @s run function ocarina_of_time:teleports/fire_temple/loop

#Castle Town
execute as @a[tag=InCastleTown] at @s run function ocarina_of_time:teleports/castle_town/loop

#Castle Field
execute as @a[tag=InCastleField] at @s run function ocarina_of_time:teleports/castle_field/loop

#Hyrule Castle
execute as @a[tag=InHyruleCastle] at @s run function ocarina_of_time:teleports/hyrule_castle/loop

#Lon Lon Ranch
execute as @a[tag=InLonLonRanch] at @s run function ocarina_of_time:teleports/lon_lon_ranch/loop

#Lake Hylia Child
execute as @a[tag=InLakeChild] at @s run function ocarina_of_time:teleports/lake_hylia_child/loop

#Lake Hylia Adult
execute as @a[tag=InLakeAdult] at @s run function ocarina_of_time:teleports/lake_hylia_adult/loop

#Fishing Pond
execute as @a[tag=InFishingPond] at @s run function ocarina_of_time:teleports/fishing_pond/loop

#Destroyed Castle
execute as @a[tag=InDeathTown] at @s run function ocarina_of_time:teleports/death_town/loop

#Ganon's Castle Field
execute as @a[tag=InGanonField] at @s run function ocarina_of_time:teleports/ganon_castle_field/loop

#Forest Temple
execute as @a[tag=InForestTemple] at @s run function ocarina_of_time:teleports/forest_temple/loop

#Gerudo Valley
execute as @a[tag=InGerudoValley] at @s run function ocarina_of_time:teleports/gerudo_valley/loop

#Gerudo Fortress
execute as @a[tag=InGerudoFortress] at @s run function ocarina_of_time:teleports/gerudo_fortress/loop

#Water Temple
execute as @a[tag=InWaterTemple] at @s run function ocarina_of_time:teleports/water_temple/loop

#Well
execute as @a[tag=InWell] at @s run function ocarina_of_time:teleports/well/loop

#Shadow Temple
execute as @a[tag=InShadowTemple] at @s run function ocarina_of_time:teleports/shadow_temple/loop

#Training Ground
execute as @a[tag=InTrainingGround] at @s run function ocarina_of_time:teleports/training_ground/loop

#Haunted Wasteland
execute as @a[tag=InHauntedWasteland] at @s run function ocarina_of_time:teleports/haunted_wasteland/loop

#Desert Colossus
execute as @a[tag=InDesertColossus] at @s run function ocarina_of_time:teleports/desert_colossus/loop

#Spirit Temple
execute as @a[tag=InSpiritTemple] at @s run function ocarina_of_time:teleports/spirit_temple/loop

#Underground Ganon's Castle
execute as @a[tag=InUndergroundGanonCastle] at @s run function ocarina_of_time:teleports/ganon_castle_underground/loop

#Ganon's Tower
execute as @a[tag=InGanonTower] at @s run function ocarina_of_time:teleports/ganon_tower/loop

#Ganon's Tower
execute as @a[tag=EscapeGanonCastle] at @s run function ocarina_of_time:teleports/ganon_castle_escape/loop

#Final Platform
execute as @a[tag=InFinalPlatform] at @s run function ocarina_of_time:teleports/final_platform/loop

#Thank You
execute as @a[tag=InThankYou] at @s run function ocarina_of_time:teleports/thank_you/loop
