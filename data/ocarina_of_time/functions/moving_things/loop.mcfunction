#Intro
execute if entity @a[tag=Intro] run function ocarina_of_time:moving_things/beginning/loop

#Settings
execute if entity @a[tag=CheckItems] run function ocarina_of_time:moving_things/return_items/loop

#Loot Tables
scoreboard players add @e[type=area_effect_cloud,tag=LootTable] timer 1
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=101..}] run scoreboard players set @s timer 0

#Timed Races
execute if entity @a[tag=TimedRace] run function ocarina_of_time:moving_things/timed_races/loop

#Adult
execute if entity @a[tag=Adult] run function ocarina_of_time:moving_people/adult_child/remove_items

#Kokiri Forest
execute if entity @a[tag=InKokiriForest] run function ocarina_of_time:moving_things/kokiri_forest/loop

#Deku Tree
execute if entity @a[tag=InDekuTree] run function ocarina_of_time:moving_things/deku_tree/vines
execute if entity @a[tag=InDekuTree] run function ocarina_of_time:moving_things/deku_tree/loop

#Hyrule Field
execute if entity @a[tag=InHyruleField] run function ocarina_of_time:moving_things/hyrule_field/loop

#Castle Town
execute if entity @a[tag=InCastleTown] run function ocarina_of_time:moving_things/castle_town/loop
execute if entity @a[tag=InCastleTown] run function ocarina_of_time:moving_things/castle_town/moving_people/loop

#Castle Field
execute if entity @a[tag=InCastleField] run function ocarina_of_time:moving_things/castle_field/loop

#Hyrule Castle
execute if entity @a[tag=InHyruleCastle] run function ocarina_of_time:moving_things/hyrule_castle/loop

#Kakariko Village
execute if entity @a[tag=InKakarikoVillage] run function ocarina_of_time:moving_things/kakariko_village/loop

#Death Mountain
execute if entity @a[tag=InDeathMountain] run function ocarina_of_time:moving_things/death_mountain/loop

#Goron City
execute as @a at @s if entity @s[tag=InGoronCity] run function ocarina_of_time:moving_things/goron_city/loop

#Dodongo's Cavern
execute if entity @a[tag=InDodongoCavern] run function ocarina_of_time:moving_things/dodongo_cavern/loop

#Death Mountain Crater
execute if entity @a[tag=InDeathCrater] run function ocarina_of_time:moving_things/death_mountain_crater/loop

#Lon Lon Ranch
execute if entity @a[tag=InLonLonRanch] run function ocarina_of_time:moving_things/lon_lon_ranch/loop

#Zora's River
execute if entity @a[tag=InZoraRiver] run function ocarina_of_time:moving_things/zora_river/loop

#Zora's Domain
execute if entity @a[tag=InZoraDomain] run function ocarina_of_time:moving_things/zora_domain/loop

#Zora's Fountain
execute if entity @a[tag=InZoraFountain] run function ocarina_of_time:moving_things/zora_fountain/loop

#Jabu Jabu
execute if entity @a[tag=InJabuJabu] run function ocarina_of_time:moving_things/jabu_jabu/loop

#Lake Hylia Child
execute if entity @a[tag=InLakeChild] run function ocarina_of_time:moving_things/lake_hylia_child/loop

#Lake Hylia Adult
execute if entity @a[tag=InLakeAdult] run function ocarina_of_time:moving_things/lake_hylia_adult/loop

#Destroyed Castle Town
execute if entity @a[tag=InDeathTown] run function ocarina_of_time:moving_things/destroyed_castle_town/loop

#Forest Temple
execute if entity @a[tag=InForestTemple] run function ocarina_of_time:moving_things/forest_temple/loop

#Fire Temple
execute if entity @a[tag=InFireTemple] run function ocarina_of_time:moving_things/fire_temple/loop

#Ice Cavern
execute if entity @a[tag=InIceCavern] run function ocarina_of_time:moving_things/ice_cavern/loop

#Water Temple
execute if entity @a[tag=InWaterTemple] run function ocarina_of_time:moving_things/water_temple/loop

#Fishing Pond
execute if entity @a[tag=InFishingPond] run function ocarina_of_time:moving_things/fishing_pond/loop

#Gerudo Valley
execute if entity @a[tag=InGerudoValley] run function ocarina_of_time:moving_things/gerudo_valley/loop

#Gerudo Fortress
execute if entity @a[tag=InGerudoFortress] run function ocarina_of_time:moving_things/gerudo_fortress/loop

#Ganon's Castle Field
execute if entity @a[tag=InGanonField] run function ocarina_of_time:moving_things/ganon_castle_field/loop

#Well
execute if entity @a[tag=InWell] run function ocarina_of_time:moving_things/well/loop

#Shadow Temple
execute if entity @a[tag=InShadowTemple] run function ocarina_of_time:moving_things/shadow_temple/loop

#Gerudo Training Ground
execute if entity @a[tag=InTrainingGround] run function ocarina_of_time:moving_things/training_ground/loop

#Haunted Wasteland
execute if entity @a[tag=InHauntedWasteland] run function ocarina_of_time:moving_things/haunted_wasteland/loop

#Desert Colossus
execute if entity @a[tag=InDesertColossus] run function ocarina_of_time:moving_things/desert_colossus/loop

#Spirit Temple
execute if entity @a[tag=InSpiritTemple] run function ocarina_of_time:moving_things/spirit_temple/loop

#Underground Ganon's Castle
execute if entity @a[tag=InUndergroundGanonCastle] run function ocarina_of_time:moving_things/ganon_castle_underground/loop

#Ganon Tower
execute if entity @a[tag=InGanonTower] run function ocarina_of_time:moving_things/ganon_tower/loop

#Escape Ganon's Castle
execute if entity @a[tag=EscapeGanonCastle] run function ocarina_of_time:moving_things/ganon_castle_escape/loop

#Final Platform
execute if entity @a[tag=InFinalPlatform] run function ocarina_of_time:moving_things/final_platform/loop

#Thank you
execute if entity @a[tag=InThankYou] run function ocarina_of_time:moving_things/thank_you/loop
