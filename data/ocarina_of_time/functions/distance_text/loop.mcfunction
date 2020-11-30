execute unless entity @a[distance=..3] run tag @s remove stoptext
#Goron Specific
execute if entity @s[tag=Goron] at @s if entity @s[tag=Stop] unless entity @a[distance=..3] run tag @s remove Stop

#Kokiri Forest
execute if entity @a[tag=InKokiriForest,distance=..3] run function ocarina_of_time:distance_text/kokiri_forest/forest_text

#Castle Town
execute if entity @a[tag=InCastleTown,distance=..3] run function ocarina_of_time:distance_text/castle_town/castle_town_text

#Castle Field
execute if entity @a[tag=InCastleField,distance=..3] run function ocarina_of_time:distance_text/castle_field/castle_field_text

#Castle
execute if entity @a[tag=InHyruleCastle,distance=..3] run function ocarina_of_time:distance_text/castle/castle_text

#Kakairko Village
execute if entity @a[tag=InKakarikoVillage,distance=..3] run function ocarina_of_time:distance_text/kakariko_village/village_text

#Death Mountain
execute if entity @a[tag=InDeathMountain,distance=..3] run function ocarina_of_time:distance_text/death_mountain/death_mountain_text

#Death Mountain Crater
execute if entity @a[tag=InDeathCrater,distance=..3] run function ocarina_of_time:distance_text/death_mountain/crater

#Goron City
execute if entity @a[tag=InGoronCity,distance=..3] run function ocarina_of_time:distance_text/death_mountain/goron_city_text

#Dodongo's Cavern
execute if entity @a[tag=InDodongoCavern,distance=..3] run function ocarina_of_time:distance_text/death_mountain/dodongo_cavern

#Lon Lon Ranch
execute if entity @a[tag=InLonLonRanch,distance=..3] run function ocarina_of_time:distance_text/lon_lon_ranch/ranch_text

#Zora's River
execute if entity @a[tag=InZoraRiver,distance=..3] run function ocarina_of_time:distance_text/zora_river/river_text

#Zora's Domain
execute if entity @a[tag=InZoraDomain,distance=..3] run function ocarina_of_time:distance_text/zora_domain/domain_text

#Zora's Fountain
execute if entity @a[tag=InZoraFountain,distance=..3] run function ocarina_of_time:distance_text/zora_domain/fountain

#Jabu Jabu
execute if entity @a[tag=InJabuJabu,distance=..3] run function ocarina_of_time:distance_text/jabu_jabu/text

#Lake Hylia Child
execute if entity @a[tag=InLakeChild,distance=..3] run function ocarina_of_time:distance_text/lake_hylia_child/hylia_text

#Lake Hylia Adult
execute if entity @a[tag=InLakeAdult,distance=..3] run function ocarina_of_time:distance_text/lake_hylia_adult/hylia_text

#Fishing Pond
execute if entity @a[tag=InFishingPond,distance=..3] run function ocarina_of_time:distance_text/fishing_pond/fisherman

#Hyrule Field
execute if entity @a[tag=InHyruleField,distance=..3] run function ocarina_of_time:distance_text/hyrule_field/field_text

#Death Town
execute if entity @a[tag=InDeathTown,distance=..3] run function ocarina_of_time:distance_text/death_town/death_town

#Fire Temple
execute if entity @a[tag=InFireTemple,distance=..3] run function ocarina_of_time:distance_text/fire_temple/fire_temple_text

#Well
execute if entity @a[tag=InWell,distance=..3] run function ocarina_of_time:distance_text/well/well_text

#Shadow Temple
execute if entity @a[tag=InShadowTemple,distance=..3] run function ocarina_of_time:distance_text/shadow_temple/wall_text

#Gerudo Valley
execute if entity @a[tag=InGerudoValley,distance=..3] run function ocarina_of_time:distance_text/gerudo_valley/valley_text

#Gerudo Fortress
execute if entity @a[tag=InGerudoFortress,distance=..3] run function ocarina_of_time:distance_text/gerudo_valley/fortress_text

#Desert Colossus
execute if entity @a[tag=InDesertColossus,distance=..3] run function ocarina_of_time:distance_text/gerudo_valley/colossus

#Carpet Master
execute if entity @a[tag=InHauntedWasteland,distance=..3] run function ocarina_of_time:distance_text/gerudo_valley/wasteland

#Spirit Temple
execute if entity @a[tag=InSpiritTemple,distance=..3] run function ocarina_of_time:distance_text/spirit_temple/text

#Ganon's Castle Underground
execute if entity @a[tag=InUndergroundGanonCastle,distance=..3] run function ocarina_of_time:distance_text/ganon_castle/castle_text

#Final Platform
execute if entity @a[tag=InFinalPlatform,distance=..3] run function ocarina_of_time:distance_text/final_platform/text
