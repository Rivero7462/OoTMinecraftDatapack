#Zelda Escape Paths
#1
execute as @e[type=armor_stand,tag=EscapeZelda] at @s if entity @s[tag=Escape] run function ocarina_of_time:moving_things/ganon_castle_escape/zelda/loop

#Timer
execute if entity @a[tag=TimerRoom1] run scoreboard objectives setdisplay sidebar MiniGameTime
execute if entity @a[tag=TimerRoom1] run tag @a add HideDisplayScore
execute if entity @a[tag=TimerRoom1,scores={MiniGameTime=0}] run scoreboard players set @a MiniGameTime 3000
execute if entity @a[tag=TimerRoom1,scores={MiniGameTime=2..3000}] run scoreboard players remove @a MiniGameTime 1
execute if entity @a[tag=TimerRoom1,scores={MiniGameTime=1}] run function ocarina_of_time:moving_things/ganon_castle_escape/falls/timer

#Fall Area
#1
execute at @a if entity @a[tag=Escape1,y=154,dy=1] run function ocarina_of_time:moving_things/ganon_castle_escape/falls/fall_1
execute if entity @a[tag=Escape1,x=-665,y=164,z=857,dx=30,dy=1,dz=59] run function ocarina_of_time:moving_things/ganon_castle_escape/falls/fall_1
#2
execute at @a if entity @a[tag=Escape2,y=148,dy=1] run function ocarina_of_time:moving_things/ganon_castle_escape/falls/fall_2
#3
execute at @a if entity @a[tag=Escape3,y=138,dy=1] run function ocarina_of_time:moving_things/ganon_castle_escape/falls/fall_3
#4
execute at @a if entity @a[tag=Escape4,y=127,dy=1] run function ocarina_of_time:moving_things/ganon_castle_escape/falls/fall_4

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/ganon_castle_escape/pots

#Fire Rocks
execute at @a if block ~.33 ~ ~ minecraft:netherrack run effect give @a minecraft:wither 2 0 true
execute at @a if block ~-.33 ~ ~ minecraft:netherrack run effect give @a minecraft:wither 2 0 true
execute at @a if block ~ ~ ~.33 minecraft:netherrack run effect give @a minecraft:wither 2 0 true
execute at @a if block ~ ~ ~-.33 minecraft:netherrack run effect give @a minecraft:wither 2 0 true

#Meteors
execute if entity @a[tag=Meteors] as @e[type=area_effect_cloud,tag=Meteor] at @a run function ocarina_of_time:moving_things/ganon_castle_escape/meteors
execute if entity @a[tag=Meteors] as @e[type=wither_skull,tag=Meteor] run scoreboard players add @s timer 1
execute if entity @a[tag=Meteors] as @e[type=wither_skull,tag=Meteor,scores={timer=50..}] run kill @s

#Enemies
function ocarina_of_time:moving_things/ganon_castle_escape/enemies
