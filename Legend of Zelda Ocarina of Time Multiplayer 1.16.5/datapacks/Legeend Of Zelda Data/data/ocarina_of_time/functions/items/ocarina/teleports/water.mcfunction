execute unless entity @a[tag=NoTeleport] if entity @s[tag=TimedRace] unless entity @s[tag=TimedRace4] run scoreboard players set @s RaceTime 25
execute unless entity @a[tag=NoTeleport] if entity @s[tag=TimedRace4] run scoreboard players set @s RaceTime 3975
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_entities
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_other
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_teleports
execute unless entity @a[tag=NoTeleport] unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute unless entity @a[tag=NoTeleport] if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
execute unless entity @a[tag=NoTeleport] if entity @s[tag=!Adult] run tag @s add InLakeChild
execute unless entity @a[tag=NoTeleport] if entity @s[tag=!Adult] run tp @s 775 64 2673
execute unless entity @a[tag=NoTeleport] if entity @s[tag=Adult,tag=FinishLake] run tag @s add InLakeChild
execute unless entity @a[tag=NoTeleport] if entity @s[tag=Adult,tag=FinishLake] run tp @s 775 64 2673
execute unless entity @a[tag=NoTeleport] if entity @s[tag=Adult,tag=!FinishLake] run tag @s add InLakeAdult
execute unless entity @a[tag=NoTeleport] if entity @s[tag=Adult,tag=!FinishLake] run tp @s 1398 64 2673
playsound minecraft:music_disc.mellohi record @s ~ ~ ~ 1 1 1
