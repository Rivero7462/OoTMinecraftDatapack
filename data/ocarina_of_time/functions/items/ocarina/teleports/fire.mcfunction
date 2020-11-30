execute unless entity @a[tag=NoTeleport] if entity @s[tag=TimedRace] unless entity @s[tag=TimedRace4] run scoreboard players set @s RaceTime 25
execute unless entity @a[tag=NoTeleport] if entity @s[tag=TimedRace4] run scoreboard players set @s RaceTime 3975
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_entities
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_other
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_teleports
execute unless entity @a[tag=NoTeleport] unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute unless entity @a[tag=NoTeleport] if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
execute unless entity @a[tag=NoTeleport] run tag @s add HotArea
execute unless entity @a[tag=NoTeleport] run tag @s add InDeathCrater
execute unless entity @a[tag=NoTeleport] run tag @s add CraterSpawn4
execute unless entity @a[tag=NoTeleport] run tp @s 2685 26 1940
playsound minecraft:music_disc.chirp record @s ~ ~ ~ 1 1 1
