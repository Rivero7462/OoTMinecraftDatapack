scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run fill ~ ~ ~ ~ ~1 ~ minecraft:barrier replace minecraft:air

#Mask
execute if entity @a[distance=..2] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Mask of Truth\""}}}]}] run scoreboard players set @s text 2
execute if entity @a[distance=..2] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Mask of Truth\""}}}]}] run scoreboard players set @s text 1
execute if entity @a[distance=..2] run tag @s add Speak
execute unless entity @a[distance=..2] run tag @s remove Speak

#Navi
execute if entity @s[scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"What do you suppose this stone is? I feel like it's trying to tell us something... I think there's a ","color":"aqua"},{"text":"fairy "},{"text":"hiding inside it, too. Maybe you can lure it out somehow!","color":"aqua"}]
execute if entity @s[scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Grotto
execute if entity @s[tag=GrottoGossipStone,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that the horse Ganondorf rides is a solid black Gerudo stallion."}]
execute if entity @s[tag=GrottoGossipStone,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Bomb
execute if entity @s[tag=Rocket] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run tag @s remove Npc
execute if entity @s[scores={lifetime=30}] run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ .5 1.5
execute if entity @s[scores={lifetime=30}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .3 .3 .3 0 10
execute if entity @s[scores={lifetime=50}] run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ .5 1.5
execute if entity @s[scores={lifetime=50}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .3 .3 .3 0 10
execute if entity @s[scores={lifetime=70}] run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ .5 1.5
execute if entity @s[scores={lifetime=70}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .3 .3 .3 0 10
execute if entity @s[scores={lifetime=90}] run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ .5 2
execute if entity @s[scores={lifetime=90}] run particle minecraft:falling_dust red_wool ~ ~1 ~ .3 .3 .3 0 10
execute if entity @s[scores={lifetime=109}] run fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:barrier
execute if entity @s[scores={lifetime=110..250}] run tp @s ~ ~.5 ~
execute if entity @s[scores={lifetime=110..250}] run particle minecraft:flame ~ ~ ~ .1 0 .1 0 1
execute if entity @s[scores={lifetime=251..}] run kill @s

#Fairy
execute unless entity @s[tag=Fairy] if entity @a[distance=..3] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run summon minecraft:item ^ ^ ^1 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}},PickupDelay:0}
execute unless entity @s[tag=Fairy] if entity @a[distance=..3] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run tag @s add Fairy

#Big Fairy
execute unless entity @s[tag=Fairy] if entity @a[distance=..3] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run summon minecraft:item ^ ^ ^1 {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Big Fairy\"}"},Unbreakable:1b,Damage:33,HideFlags:63,BigFairy:1b,PickupItem:1b}}}
execute unless entity @s[tag=Fairy] if entity @a[distance=..3] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run tag @s add Fairy
