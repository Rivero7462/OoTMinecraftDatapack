execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 2681 41 1957 2682 41 1957 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 2682 39 1957 2681 39 1957 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 2680 41 1958 2680 41 1958 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 2680 39 1958 2680 39 1958 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 2681 39 1959 2682 39 1959 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 2682 41 1959 2681 41 1959 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 2683 41 1958 2683 41 1958 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 2683 39 1958 2683 39 1958 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run tp @a 2682.0 39 1958
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run tag @a add NoOcarina
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run tag @a add NoHookshot
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run function ocarina_of_time:music/sheik
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run tp @s 2682.0 45 1951
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run scoreboard players set @s timer 1

execute unless entity @s[tag=Part2] if entity @s[scores={timer=1..}] run scoreboard players add @s timer 1

#Sheik Appears
execute if entity @s[scores={timer=1..3}] run data merge entity @s {Pose:{Head:[70f,0f,0f],RightArm:[-20f,0f,0f],LeftArm:[0f,0f,-90f],Body:[5f,0f,0f],RightLeg:[40f,0f,0f],LeftLeg:[-50f,0f,0f]}}
execute if entity @s[x=2682,y=37,z=1951,dx=0,dz=0] unless entity @s[scores={timer=20..}] run tp @s 2682.0 36.7 1951
execute if entity @s[scores={timer=21}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=21}] run tp @s 2682.0 37 1951
execute if entity @s[scores={timer=30}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"It is something that grows over time...a true friendship. A feeling in the heart that becomes even stronger over time..."}]
execute if entity @s[scores={timer=42..44}] run tp @s ~ ~ ~.1
execute if entity @s[scores={timer=45}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=46..64}] run tp @s ~ ~ ~.1
execute if entity @s[scores={timer=65}] run tp @s ~ ~.5 ~
execute if entity @s[scores={timer=66..72}] run tp @s ~ ~ ~.1

execute if entity @s[scores={timer=72}] run scoreboard objectives add click minecraft.custom:minecraft.jump

#Text
execute unless entity @s[tag=Part2] unless entity @a[scores={click=1..}] run scoreboard players set @a click 0

execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"The passion of friendship will soon blossom into a righteous power, and through it, you will know which way to go..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"This song is dedicated to the power of the heart... Listen to the "},{"text":"Bolero of Fire","color":"red"},{"text":"..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @s[tag=Part2] if entity @a[scores={click=4}] run stopsound @a music
execute unless entity @s[tag=Part2] if entity @a[scores={click=4}] run tag @s add PlaySong
execute unless entity @s[tag=Part2] if entity @a[scores={click=4}] run scoreboard objectives remove click

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"selector":"@p"},{"text":"... I'll see you again..."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run scoreboard players add @s timer 1
execute if entity @s[tag=Part2] if entity @s[scores={timer=101..140}] run particle minecraft:flame 2682.0 39.5 1956 0.4 0.5 0 0 2 normal
execute if entity @s[tag=Part2] if entity @s[scores={timer=110..117}] run tp @s ~ ~ ~-.1
execute if entity @s[tag=Part2] if entity @s[scores={timer=118}] run tp @s ~ ~-.5 ~
execute if entity @s[tag=Part2] if entity @s[scores={timer=119..130}] run tp @s ~ ~ ~-.1
execute if entity @s[tag=Part2] if entity @s[scores={timer=131..139}] run tp @s 2682.0 37.5 1952
execute if entity @s[tag=Part2] if entity @s[scores={timer=140}] at @a run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[tag=Part2] if entity @s[scores={timer=140}] at @s run particle minecraft:crit ~ ~ ~ .4 .7 .4 0 200 force
execute if entity @s[tag=Part2] if entity @s[scores={timer=140}] at @a run playsound minecraft:block.anvil.land ambient @a ~ ~ ~ 1 2
execute if entity @s[tag=Part2] if entity @s[scores={timer=141}] run tp @s 2682 34 1950

execute if entity @s[tag=Part2] if entity @s[scores={timer=142}] run function ocarina_of_time:music/dodongo_cavern
execute if entity @s[tag=Part2] if entity @s[scores={timer=142}] run fill 2683 39 1959 2680 41 1957 minecraft:air
execute if entity @s[tag=Part2] if entity @s[scores={timer=142}] run fill 2683 34 1950 2683 34 1950 minecraft:gold_block

execute if entity @s[tag=Part2] if entity @s[scores={timer=142..}] run tag @a remove NoHookshot
execute if entity @s[tag=Part2] if entity @s[scores={timer=142..}] run tag @a remove NoTeleport
execute if entity @s[tag=Part2] if entity @s[scores={timer=142..}] run tag @a remove LearnBolero
execute if entity @s[tag=Part2] if entity @s[scores={timer=142..}] run scoreboard objectives remove click
execute if entity @s[tag=Part2] if entity @s[scores={timer=142..}] run scoreboard players set @s timer 0

execute if entity @s[tag=PlaySong] run scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=45..}] run tag @e[type=area_effect_cloud,tag=Songs] add Fire
execute if entity @s[scores={lifetime=45..}] run advancement grant @a only minecraft:_ocarina/fire
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_chirp",Count:1b}]}] run tag @s add Part2
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_chirp",Count:1b}]}] run tag @s remove PlaySong
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_chirp",Count:1b}]}] run scoreboard players set @s timer 100
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_chirp",Count:1b}]}] run stopsound @a
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_chirp",Count:1b}]}] run tellraw @a ["",{"text":"You have learned the ","color":"white"},{"text":"Bolero of Fire","color":"red"},{"text":"!"}]
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_chirp",Count:1b}]}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_chirp",Count:1b}]}] run scoreboard players set @s lifetime 0

execute if entity @s[scores={lifetime=10}] run tag @a add NoTeleport
execute if entity @s[scores={lifetime=10}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=10}] as @a at @s run playsound minecraft:block.note_block.harp music @a ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=15}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=20}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=25}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=30}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=35}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=40}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=45}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95

execute if entity @s[scores={lifetime=70}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=75}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=80}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=85}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=90}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=95}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=100}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=105}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
