execute unless entity @a[tag=NoTeleport] if entity @s[tag=TimedRace] unless entity @s[tag=TimedRace4] run scoreboard players set @s RaceTime 25
execute unless entity @a[tag=NoTeleport] if entity @s[tag=TimedRace4] run scoreboard players set @s RaceTime 3975
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_entities
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_other
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_teleports
execute unless entity @a[tag=NoTeleport] unless entity @s[tag=Adult] run scoreboard players set @e[type=area_effect_cloud,tag=FakeSaria] timer 1
execute unless entity @a[tag=NoTeleport] unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute unless entity @a[tag=NoTeleport] if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
execute unless entity @a[tag=NoTeleport] run tag @s add InKokiriForest
execute unless entity @a[tag=NoTeleport] run tp @s -564 67 -704
playsound minecraft:music_disc.ward record @s ~ ~ ~ 1 1 1
