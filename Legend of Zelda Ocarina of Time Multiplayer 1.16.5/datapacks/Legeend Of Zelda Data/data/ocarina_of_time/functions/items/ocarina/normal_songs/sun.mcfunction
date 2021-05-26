execute if entity @s[scores={time=13001..23000}] unless entity @a[tag=NoSun] unless entity @a[tag=NoTeleport] run time set 23600
execute if entity @s[scores={time=23001..24000}] unless entity @a[tag=NoSun] unless entity @a[tag=NoTeleport] run time set 13200
execute if entity @s[scores={time=0..13000}] unless entity @a[tag=NoSun] unless entity @a[tag=NoTeleport] run time set 13200
playsound minecraft:music_disc.13 record @s ~ ~ ~ 1 1 1
