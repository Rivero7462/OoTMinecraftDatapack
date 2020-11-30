execute unless entity @a[scores={click=0..}] run fill 922 88 880 922 88 880 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 922 88 878 922 88 878 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 921 88 879 921 88 879 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 923 88 879 923 88 879 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 921 87 879 923 87 875 minecraft:air
execute unless entity @a[scores={click=0..}] run fill 920 87 879 920 90 878 minecraft:air
execute unless entity @a[scores={click=0..}] run fill 922 87 876 922 87 876 minecraft:magenta_concrete_powder
execute unless entity @a[scores={click=0..}] run tag @a add LonLonRanchChanges1
execute unless entity @a[scores={click=0..}] run tp @a 922 88 879
execute unless entity @a[scores={click=0..}] run execute as @e[type=armor_stand,tag=TalonSleep1] at @s run tp @s ~ ~-2 ~
execute unless entity @a[scores={click=0..}] run execute as @e[type=armor_stand,tag=TalonSleep2] at @s run tp @s ~ ~-2 ~
execute unless entity @a[scores={click=0..}] run execute as @e[type=armor_stand,tag=TalonSleep3] at @s run tp @s ~ ~-2 ~
execute unless entity @a[scores={click=0..}] run tp @s 920 87 879
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"What in tarnation?"}]
execute if entity @a[scores={click=1}] at @a run playsound minecraft:entity.chicken.hurt ambient @a ~ ~ ~ 1 1
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"Can't a person get a little shut-eye around here?"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"Hello, and who might you be?"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"Yep, I'm "},{"text":"Talon","color":"red"},{"text":", the owner of Lon Lon Ranch."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"I went to the castle to deliver some milk, but I sat down here to rest, and I guess I fell asleep..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"What?! Malon was looking for me? I'm gonna catch it from her now!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"I messed up bad, leaving Malon behind to wait for me!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"She's really gonna let me have it!"}]
execute if entity @a[scores={click=15}] run data merge entity @s {Rotation:[0f]}
execute if entity @a[scores={click=15}] run tp @s 920 87 879.8
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=16..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..55}] run data merge entity @s {Motion:[0.0,0.0,0.4]}
execute if entity @s[scores={timer=56..90}] run data merge entity @s {Rotation:[90f]}
execute if entity @s[scores={timer=56..90}] run data merge entity @s {Motion:[-0.4,0.0,0.0]}
execute if entity @s[scores={timer=91..}] run tp @s 930 82 871
execute if entity @s[scores={timer=91..}] run tp @e[type=armor_stand,tag=Malon2] 901 71 945
execute if entity @s[scores={timer=91..}] run data merge entity @s {Rotation:[-90f]}

execute if entity @s[scores={timer=91..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=91..}] run fill 921 88 878 923 88 880 minecraft:air replace minecraft:barrier
execute if entity @s[scores={timer=91..}] run tag @a add MeetZelda
execute if entity @s[scores={timer=91..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=91..}] run clear @a minecraft:shears{display:{Name:"{\"text\":\"Cucco\"}"},Unbreakable:1b,Damage:1,HideFlags:63,PocketCucco:1b}
execute if entity @s[scores={timer=91..}] run tag @a remove PocketCucco
execute if entity @s[scores={timer=91..}] run scoreboard players set @s timer 0
