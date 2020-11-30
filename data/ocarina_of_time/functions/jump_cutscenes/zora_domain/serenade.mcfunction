execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 2027 33 2326 2027 33 2326 minecraft:barrier
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 2027 35 2326 2027 35 2326 minecraft:barrier
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 2026 33 2325 2026 33 2325 minecraft:barrier
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 2026 35 2325 2026 35 2325 minecraft:barrier
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 2025 33 2326 2025 33 2326 minecraft:barrier
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 2025 35 2326 2025 35 2326 minecraft:barrier
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 2026 33 2327 2026 33 2327 minecraft:barrier
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 2026 35 2327 2026 35 2327 minecraft:barrier
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tp @a 2026 33 2326
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run function ocarina_of_time:music/sheik
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tp @s 2023 33 2323 -45 ~
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[tag=PlaySong] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

execute unless entity @s[tag=Part2] if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"We meet again, "},{"selector":"@p"},{"text":"..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run tp @a 2026 33 2326 135 ~
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"If you came here to meet the Zoras, you wasted your time... This is all there is..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"With one exception, the Zoras are now sealed under this thick ice sheet..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"I managed to rescue the Zora princess from under the ice, but...she left to head for the "},{"text":"Water Temple","color":"blue"},{"text":"..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"This ice is created by an evil curse... The monster in the "},{"text":"Water Temple ","color":"blue"},{"text":"is the source of the curse."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Unless you shut off the source, this ice will never melt..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"If you have courage enough to confront the danger and save the Zoras, I will teach you the melody that leads to the temple."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute unless entity @s[tag=Part2] if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Time passes, people move... Like a river's flow, it never ends..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute unless entity @s[tag=Part2] if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"A childish mind will turn to noble ambition... Young love will become deep affection... The clear water's surface reflects growth..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute unless entity @s[tag=Part2] if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Now listen to the "},{"text":"Serenade of Water","color":"blue"},{"text":" to reflect upon yourself..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute unless entity @s[tag=Part2] if entity @a[scores={click=20}] run stopsound @a music
execute unless entity @s[tag=Part2] if entity @a[scores={click=20}] run tag @s add PlaySong
execute unless entity @s[tag=Part2] if entity @a[scores={click=20}] run scoreboard objectives remove click

execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"selector":"@p"},{"text":"... I'll see you again..."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run scoreboard players add @s timer 1
execute if entity @s[tag=Part2] if entity @s[scores={timer=1..10}] run tp @s ^ ^ ^-.1
execute if entity @s[tag=Part2] if entity @s[scores={timer=15}] at @a run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[tag=Part2] if entity @s[scores={timer=15}] at @s run particle minecraft:crit ~ ~ ~ .4 .7 .4 0 200 force
execute if entity @s[tag=Part2] if entity @s[scores={timer=15}] at @a run playsound minecraft:block.anvil.land ambient @a ~ ~ ~ 1 2
execute if entity @s[tag=Part2] if entity @s[scores={timer=15}] run tp @s ~ ~-5 ~
execute if entity @s[tag=Part2] if entity @s[scores={timer=18}] run tp @s 2026 30 2328
execute if entity @s[tag=Part2] if entity @s[scores={timer=18}] run tag @a add FinalKingZoraText

execute if entity @s[tag=Part2] if entity @s[scores={timer=18..}] run function ocarina_of_time:music/ice_cavern
execute if entity @s[tag=Part2] if entity @s[scores={timer=18..}] run fill 2025 33 2327 2027 35 2325 minecraft:air

execute if entity @s[tag=Part2] if entity @s[scores={timer=18..}] run tag @a remove NoTeleport
execute if entity @s[tag=Part2] if entity @s[scores={timer=18..}] run tag @a remove LearnSerenade
execute if entity @s[tag=Part2] if entity @s[scores={timer=18..}] run scoreboard objectives remove click
execute if entity @s[tag=Part2] if entity @s[scores={timer=18..}] run scoreboard players set @s timer 0

execute if entity @s[tag=PlaySong] run scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=50..}] run tag @e[type=area_effect_cloud,tag=Songs] add Water
execute if entity @s[scores={lifetime=50..}] run advancement grant @a only minecraft:_ocarina/water
execute if entity @s[scores={lifetime=50..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mellohi",Count:1b}]}] run tag @s add Part2
execute if entity @s[scores={lifetime=50..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mellohi",Count:1b}]}] run tag @s remove PlaySong
execute if entity @s[scores={lifetime=50..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mellohi",Count:1b}]}] run stopsound @a
execute if entity @s[scores={lifetime=50..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mellohi",Count:1b}]}] run tellraw @a ["",{"text":"You have learned the "},{"text":"Serenade of Water","color":"blue"},{"text":"!"}]
execute if entity @s[scores={lifetime=50..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mellohi",Count:1b}]}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={lifetime=50..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mellohi",Count:1b}]}] run scoreboard players set @s lifetime 0

execute if entity @s[scores={lifetime=10}] run tag @a add NoTeleport
execute if entity @s[scores={lifetime=10}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=10}] as @a at @s run playsound minecraft:block.note_block.harp music @a ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=20}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=30}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=40}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=50}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33

execute if entity @s[scores={lifetime=80}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=90}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=100}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=110}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=120}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33
