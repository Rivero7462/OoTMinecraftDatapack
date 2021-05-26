execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 988 11 1393 988 11 1393 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 988 13 1393 988 13 1393 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 987 11 1394 987 11 1394 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 987 13 1394 987 13 1394 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 988 11 1395 988 11 1395 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 988 13 1395 988 13 1395 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 989 11 1394 989 11 1394 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 989 13 1394 989 13 1394 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tp @a 988 11 1394
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run stopsound @a music
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tp @s 994 12 1396 108 ~
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute unless entity @s[tag=Part2] if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"You destroyed the wicked creatures that haunted the temple and awakened the Sage..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"But there are still other Sages who need your help."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"In order to awaken all the other Sages, you must become even more powerful."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"You must travel over mountains..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"under water..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"and even through time..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"If you want to return to your original time, return the Master Sword to the "},{"text":"Pedestal of Time","color":"red"},{"text":"."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute unless entity @s[tag=Part2] if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"By doing this, you will travel back in time seven years..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=15}] run scoreboard players set @a click 20
#execute unless entity @s[tag=Part2] if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"If you want to challenge the mighty foes you've defeated again, make for the bed in your childhood home."}]
#execute unless entity @s[tag=Part2] if entity @a[scores={click=17}] run scoreboard players set @a click 18
#execute unless entity @s[tag=Part2] if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"In the realm of dreams, you should be able to face them anew."}]
#execute unless entity @s[tag=Part2] if entity @a[scores={click=17}] run scoreboard players set @a click 20
execute unless entity @s[tag=Part2] if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"The time will come when you will have to return here quickly... I will teach this to you for when that time comes..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute unless entity @s[tag=Part2] if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"The song to return you to the Temple of Time... "},{"text":"The Prelude of Light","color":"aqua"},{"text":"..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute unless entity @s[tag=Part2] if entity @a[scores={click=24}] run tag @s add PlaySong
execute unless entity @s[tag=Part2] if entity @a[scores={click=24}] run tag @s add Part2

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"As long as you hold the "},{"text":"Ocarina of Time","color":"aqua"},{"text":" and the "},{"text":"Master Sword","color":"aqua"},{"text":","}]
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"you hold time itself in your hands..."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"selector":"@p","color":"white"},{"text":", we shall meet again!","color":"white"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6

execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] run scoreboard players add @s timer 1
execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] if entity @s[scores={timer=1..15}] run tp @s ~.15 ~ ~
execute if entity @s[tag=Part2] if entity @s[scores={timer=30}] at @a run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[tag=Part2] if entity @s[scores={timer=30}] at @s run particle minecraft:crit ~ ~ ~ .4 .7 .4 0 200 force
execute if entity @s[tag=Part2] if entity @s[scores={timer=30}] at @a run playsound minecraft:block.anvil.land ambient @a ~ ~ ~ 1 2
execute if entity @s[tag=Part2] if entity @s[scores={timer=31}] run tp @s 1002 4 1392

execute if entity @s[tag=Part2] if entity @s[scores={timer=40}] run function ocarina_of_time:music/temple_of_time
execute if entity @s[tag=Part2] if entity @s[scores={timer=40}] run fill 987 13 1393 989 11 1395 minecraft:air
execute if entity @s[tag=Part2] if entity @s[scores={timer=40}] run fill 987 13 1393 989 11 1395 minecraft:air
execute if entity @s[tag=Part2] if entity @s[scores={timer=40}] run fill 994 12 1394 994 13 1394 minecraft:air

execute if entity @s[tag=Part2] if entity @s[scores={timer=40}] run tag @a remove NoTeleport
execute if entity @s[tag=Part2] if entity @s[scores={timer=40}] run tag @a remove LightSong
execute if entity @s[tag=Part2] if entity @s[scores={timer=40}] run tag @a remove LightSong1
execute if entity @s[tag=Part2] if entity @s[scores={timer=40}] run scoreboard objectives remove click
execute if entity @s[tag=Part2] if entity @s[scores={timer=40}] run scoreboard players set @s timer 0

execute if entity @s[tag=PlaySong] run scoreboard players add @s lifetime 1

execute unless entity @s[tag=Part2] if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @s[scores={lifetime=45..}] run tag @e[type=area_effect_cloud,tag=Songs] add Light
execute if entity @s[scores={lifetime=45..}] run advancement grant @a only minecraft:_ocarina/light
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_strad",Count:1b}]}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_strad",Count:1b}]}] run scoreboard players set @a click 0
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_strad",Count:1b}]}] run tag @s remove PlaySong
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_strad",Count:1b}]}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_strad",Count:1b}]}] run stopsound @a
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_strad",Count:1b}]}] run tellraw @a ["",{"text":"You have learned the ","color":"white"},{"text":"Prelude of Light","color":"aqua"},{"text":"!"}]
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_strad",Count:1b}]}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_strad",Count:1b}]}] run scoreboard players set @s lifetime 0

execute if entity @s[scores={lifetime=1}] run scoreboard objectives remove click
execute if entity @s[scores={lifetime=10}] run tag @a add NoTeleport
execute if entity @s[scores={lifetime=10}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=10}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=15}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=30}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=35}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=40}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=45}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=70}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=75}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=90}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=95}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=100}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=105}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.6
