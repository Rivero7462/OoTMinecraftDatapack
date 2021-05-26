execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run fill 1554 53 1950 1554 53 1949 minecraft:barrier
execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run fill 1555 53 1951 1555 53 1951 minecraft:barrier
execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run fill 1555 51 1951 1555 51 1951 minecraft:barrier
execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run fill 1556 53 1950 1556 53 1949 minecraft:barrier
execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run fill 1556 51 1950 1556 51 1949 minecraft:barrier
execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run fill 1555 53 1948 1555 53 1948 minecraft:barrier
execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run fill 1555 51 1948 1555 51 1948 minecraft:barrier
execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run tp @a 1555 51 1950.0
execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a timer 0
execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] unless entity @a[tag=Part2] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] unless entity @a[tag=Part2] run tellraw @a {"text":"This poem is dedicated to the memory of the dearly departed members of the Royal Family."}
execute if entity @a[scores={click=1}] unless entity @a[tag=Part2] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] unless entity @a[tag=Part2] run tellraw @a {"text":"\"The rising sun will eventually set, A newborn's life will fade."}
execute if entity @a[scores={click=3}] unless entity @a[tag=Part2] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] unless entity @a[tag=Part2] run tellraw @a {"text":"From sun to moon, moon to sun..."}
execute if entity @a[scores={click=5}] unless entity @a[tag=Part2] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] unless entity @a[tag=Part2] run tellraw @a {"text":"Give peaceful rest to the living dead.\""}
execute if entity @a[scores={click=7}] unless entity @a[tag=Part2] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] unless entity @a[tag=Part2] run tellraw @a {"text":"This is an interesting poem...huh?"}
execute if entity @a[scores={click=9}] unless entity @a[tag=Part2] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] unless entity @a[tag=Part2] run tellraw @a {"text":"Something else is inscribed on the tombstone..."}
execute if entity @a[scores={click=11}] unless entity @a[tag=Part2] run tp @a 1555 51 1950.0 60 2
execute if entity @a[scores={click=11}] unless entity @a[tag=Part2] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] unless entity @a[tag=Part2] run tellraw @a ["",{"text":"It's the "},{"text":"secret melody","color":"yellow"},{"text":" of the Composer Brothers!"}]
execute if entity @a[scores={click=13}] unless entity @a[tag=Part2] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] unless entity @a[tag=Part2] run tellraw @a ["",{"text":"Keep the "},{"text":"Sun's Song","color":"yellow"},{"text":" in your heart."}]
execute if entity @a[scores={click=15}] unless entity @a[tag=Part2] run tag @a add PlaySong
execute if entity @a[scores={click=15}] unless entity @a[tag=Part2] run scoreboard players set @a click 16

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

execute if entity @a[tag=PlaySong] run scoreboard players add @a timer 1

execute if entity @a[scores={timer=37..}] run tag @e[type=area_effect_cloud,tag=Songs] add Suns
execute if entity @a[scores={timer=37..}] run advancement grant @a only minecraft:_ocarina/sun_song
execute if entity @a[scores={timer=37..}] run tag @a add Part2
execute if entity @a[scores={timer=37..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] run tag @a remove PlaySong
execute if entity @a[scores={timer=37..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] run stopsound @a
execute if entity @a[scores={timer=37..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] run scoreboard players set @a click 0
execute if entity @a[scores={timer=37..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] run tellraw @a ["",{"text":"You've learned the "},{"text":"Sun's Song","color":"yellow"},{"text":"!"}]

execute if entity @a[scores={timer=1}] run tag @a add NoTeleport
execute if entity @a[scores={timer=1}] run tag @a remove NoOcarina
execute if entity @a[scores={timer=1}] run stopsound @a music
execute if entity @a[scores={timer=1}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @a[scores={timer=5}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95
execute if entity @a[scores={timer=11}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6
execute if entity @a[scores={timer=27}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @a[scores={timer=31}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95
execute if entity @a[scores={timer=37}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6
execute if entity @a[scores={timer=67}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @a[scores={timer=71}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95
execute if entity @a[scores={timer=77}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6
execute if entity @a[scores={timer=93}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @a[scores={timer=97}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95
execute if entity @a[scores={timer=103}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6

execute if entity @a[tag=Part2,scores={click=1}] run tellraw @a ["",{"text":"Restless souls wander where they don't belong, bring them calm with the "},{"text":"Sun's Song","color":"yellow"},{"text":"."}]
execute if entity @a[tag=Part2,scores={click=1}] run scoreboard players set @a click 2

execute if entity @a[tag=Part2,scores={click=2}] run tag @a remove NoTeleport
execute if entity @a[tag=Part2,scores={click=2}] run fill 1643 75 1946 1643 75 1946 minecraft:gold_block
execute if entity @a[tag=Part2,scores={click=2}] run fill 1554 53 1951 1556 51 1948 minecraft:air replace minecraft:barrier
execute if entity @a[tag=Part2,scores={click=2}] run function ocarina_of_time:music/dodongo_cavern
execute if entity @a[tag=Part2,scores={click=2}] run scoreboard players set @a timer 0
execute if entity @a[tag=Part2,scores={click=2}] run tag @a remove SunSong2
execute if entity @a[tag=Part2,scores={click=2}] run scoreboard objectives remove click
execute if entity @a[tag=Part2] unless entity @a[scores={click=1..}] run tag @a remove Part2

execute if entity @a[x=1554,y=52,z=1949,dx=0,dz=1] run tp @a 1555 51 1950.0
