scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=1}] run gamemode spectator @a
execute if entity @s[scores={ArrowCount=1}] run tag @a add NoOcarina
execute if entity @s[scores={ArrowCount=1}] run tag @a add NoHookshot
execute if entity @s[scores={ArrowCount=1..290}] run tp @p @s
execute if entity @s[scores={ArrowCount=1..30}] run tp @s 1055 57 3095 -100 0
execute if entity @s[scores={ArrowCount=31..60}] run tp @s ~.033 ~ ~-.065 ~-1.5 0
execute if entity @s[scores={ArrowCount=61}] run tp @s 1056 57 3093 ~ 0

execute if entity @s[scores={ArrowCount=62..90}] run tp @s ~.07 ~.02 ~-.02 ~1.1 ~.01
execute if entity @s[scores={ArrowCount=91..120}] run tp @s ~.07 ~.01 ~-.02 ~.7 ~.01

execute if entity @s[scores={ArrowCount=121..150}] run tp @s ~ ~ ~ ~-.6 ~-.8
execute if entity @s[scores={ArrowCount=161..190}] run tp @s ~.07 ~ ~ ~.6 ~.8
execute if entity @s[scores={ArrowCount=191..220}] run tp @s ~.09 ~ ~ ~ ~
execute if entity @s[scores={ArrowCount=191..230}] run tp @s ~.1 ~ ~ ~ ~
execute if entity @s[scores={ArrowCount=231..260}] run tp @s ~.1 ~ ~-.01 ~-1 ~-1
execute if entity @s[scores={ArrowCount=261..290}] run tp @s ~.07 ~.05 ~-.08 ~-2 ~-.5

execute if entity @s[scores={ArrowCount=291}] run gamemode adventure @a
execute if entity @s[scores={ArrowCount=291}] run tp @a 1067 64 3088 -90 0

#Title
execute if entity @s[scores={ArrowCount=300}] run title @a times 5 50 5
execute if entity @s[scores={ArrowCount=300}] run title @a subtitle "Giant Aquatic Amoeba"
execute if entity @s[scores={ArrowCount=300}] run title @a title "Morpha"

execute if entity @s[scores={ArrowCount=291}] run tp @e[type=zombie,tag=MorphaEye] 1072 62 3088
execute if entity @s[scores={ArrowCount=291}] run fill 1072 62 3088 1072 62 3088 minecraft:pink_stained_glass
execute if entity @s[scores={ArrowCount=300}] run fill 1072 63 3088 1072 63 3088 minecraft:pink_stained_glass
execute if entity @s[scores={ArrowCount=305}] run fill 1072 64 3088 1072 64 3088 minecraft:pink_stained_glass
execute if entity @s[scores={ArrowCount=310}] run fill 1072 65 3088 1072 65 3088 minecraft:pink_stained_glass
execute if entity @s[scores={ArrowCount=315}] run fill 1072 66 3088 1072 66 3088 minecraft:pink_stained_glass
execute if entity @s[scores={ArrowCount=320}] run fill 1072 67 3088 1072 67 3088 minecraft:pink_stained_glass
execute if entity @s[scores={ArrowCount=295..330}] as @e[type=zombie,tag=MorphaEye] at @s run tp @s ~ ~.1 ~
execute if entity @s[scores={ArrowCount=331..345}] as @e[type=zombie,tag=MorphaEye] at @s run tp @s ~ ~-.1 ~
execute if entity @s[scores={ArrowCount=346..360}] as @e[type=zombie,tag=MorphaEye] at @s run tp @s ~ ~.1 ~
execute if entity @s[scores={ArrowCount=361..400}] as @e[type=zombie,tag=MorphaEye] at @s run tp @s ~ ~-.1 ~
execute if entity @s[scores={ArrowCount=401..420}] as @e[type=zombie,tag=MorphaEye] at @s run tp @s ^ ^ ^.3 ~20 ~
execute if entity @s[scores={ArrowCount=421}] run tag @e[type=zombie,tag=MorphaEye] add Attack
execute if entity @s[scores={ArrowCount=421}] run tag @e[type=zombie,tag=MorphaEye] add Bounce
execute if entity @s[scores={ArrowCount=400}] run fill 1072 67 3088 1072 67 3088 minecraft:air
execute if entity @s[scores={ArrowCount=405}] run fill 1072 66 3088 1072 66 3088 minecraft:air
execute if entity @s[scores={ArrowCount=410}] run fill 1072 65 3088 1072 65 3088 minecraft:air
execute if entity @s[scores={ArrowCount=415}] run fill 1072 64 3088 1072 64 3088 minecraft:air
execute if entity @s[scores={ArrowCount=420}] run fill 1072 63 3088 1072 63 3088 minecraft:air
execute if entity @s[scores={ArrowCount=420}] run summon minecraft:dolphin 1064 62 3091 {Tags:["Morpha","RandomMorpha","Invisible"],PersistenceRequired:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1}
execute if entity @s[scores={ArrowCount=425}] run fill 1072 62 3088 1072 62 3088 minecraft:water

execute if entity @s[scores={ArrowCount=426..}] run tag @a remove NoHookshot
execute if entity @s[scores={ArrowCount=426..}] run tag @a remove NoOcarina
execute if entity @s[scores={ArrowCount=426..}] run fill 1066 65 3089 1068 65 3087 minecraft:air
execute if entity @s[scores={ArrowCount=426..}] run kill @s

execute if entity @s[scores={ArrowCount=320}] run function ocarina_of_time:music/boss
