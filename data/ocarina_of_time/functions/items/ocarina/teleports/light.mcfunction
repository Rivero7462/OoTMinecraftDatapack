execute unless entity @a[tag=NoTeleport] if entity @s[tag=TimedRace] unless entity @s[tag=TimedRace4] run scoreboard players set @s RaceTime 25
execute unless entity @a[tag=NoTeleport] if entity @s[tag=TimedRace4] run scoreboard players set @s RaceTime 3975
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_entities
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_other
execute unless entity @a[tag=NoTeleport] run function ocarina_of_time:teleports/remove_teleports
execute unless entity @a[tag=NoTeleport] unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute unless entity @a[tag=NoTeleport] if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
execute unless entity @a[tag=NoTeleport] unless entity @s[tag=Adult] run tag @s add InCastleTown
execute unless entity @a[tag=NoTeleport] unless entity @s[tag=Adult] run tp @s 886 60 1426
execute unless entity @a[tag=NoTeleport] if entity @s[tag=Adult] run tag @s add InDeathTown
execute unless entity @a[tag=NoTeleport] if entity @s[tag=Adult] run tp @s 1404 61 919
playsound minecraft:music_disc.strad record @s ~ ~ ~ 1 1 1
