#Get Score
execute store result score @s timer run data get entity @p Pos[0] 1000
execute store result score @s GameTimer run data get entity @p Pos[2] 1000

#Face
execute facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0

#Fire
execute if entity @s[nbt={HurtTime:10s}] run tag @s add Attack
execute if entity @s[tag=Attack] run scoreboard players add @s text 1
execute if entity @s[scores={text=1}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 1.5
execute if entity @s[scores={text=5}] run summon minecraft:area_effect_cloud ~ ~1.8 ~ {Tags:["AnubisFire"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={text=25..}] run tag @s remove Attack
execute if entity @s[scores={text=25..}] run scoreboard players set @s text 0

#Type
execute if entity @s[tag=Anubis1] run function ocarina_of_time:enemies/anubis/version_1
execute if entity @s[tag=Anubis2] run function ocarina_of_time:enemies/anubis/version_2
execute if entity @s[tag=Anubis3] run function ocarina_of_time:enemies/anubis/version_3
execute if entity @s[tag=Anubis4] run function ocarina_of_time:enemies/anubis/version_4

#Burn
execute if entity @s[nbt={Fire:100s}] run kill @s
execute if block ~ ~ ~ minecraft:fire run kill @s
execute if block ~ ~-1 ~ minecraft:fire run kill @s
