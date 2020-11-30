#Songs
execute if entity @a[scores={UseItem=1..}] at @a unless block ~ ~ ~ minecraft:water if entity @a[nbt={SelectedItem:{tag:{OcarinaSaria:1b}}}] unless entity @a[tag=NoOcarina] run function ocarina_of_time:items/ocarina/ocarina_1
execute if entity @a[scores={UseItem=1..}] at @a unless block ~ ~ ~ minecraft:water if entity @a[nbt={SelectedItem:{tag:{OcarinaZelda:1b}}}] unless entity @a[tag=NoOcarina] run function ocarina_of_time:items/ocarina/ocarina_1
execute if entity @s[tag=Songs,tag=Rain] run function ocarina_of_time:items/ocarina/rain

#Play Teleport Songs
execute if entity @s[tag=Songs,tag=TeleportSongTimer] run stopsound @a music
execute if entity @s[tag=Songs,tag=TeleportSongTimer] run scoreboard players set @e[type=area_effect_cloud,tag=Songs] time 0
execute if entity @s[tag=Songs,tag=TeleportSongTimer] run tag @s add TeleportSongTimer2
execute if entity @s[tag=Songs,tag=TeleportSongTimer2] run tag @s remove TeleportSongTimer
execute if entity @s[tag=Songs,tag=TeleportSongTimer2] run scoreboard players add @s time 1
#Forest
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InKokiriForest] run function ocarina_of_time:music/lost_woods
#Fire
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InDeathCrater] run function ocarina_of_time:music/dodongo_cavern
#Water
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InLakeChild] unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InLakeChild] unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InLakeChild] if entity @s[scores={time=13001..23000}] run stopsound @s music
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InLakeAdult] unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InLakeAdult] unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InLakeAdult] if entity @s[scores={time=13001..23000}] run stopsound @s music
#Shadow
#Spirit
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InDesertColossus] unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=0..13000}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InDesertColossus] unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=23001..24000}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InDesertColossus] if entity @s[scores={time=13001..23000}] run stopsound @s music
#Prelude
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InDeathTown] run function ocarina_of_time:music/temple_of_time
execute if entity @s[tag=Songs,scores={time=300..}] if entity @a[tag=InCastleTown] run function ocarina_of_time:music/temple_of_time

execute if entity @s[tag=Songs,scores={time=355..}] run tag @s remove TeleportSongTimer2
execute if entity @s[tag=Songs,scores={time=355..}] run scoreboard players set @s time 0
