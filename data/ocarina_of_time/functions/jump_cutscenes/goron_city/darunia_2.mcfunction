execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @a remove MeetDarunia2
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Heeey! What a nice tune!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=2}] run data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1088939652,90785587,-1485951281,-1895189175],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTNiYTk3NDcwNTg4NmMwYzFhY2FhNzk0MTY5NmE0ZTRiMjI0MDk1NGIzZWI3Nzk2OGVmNmJmZDdiOWFiZWI0NCJ9fX0="}]}}}}],Rotation:[0f],Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Just like that, my depression is all gone! Something just came over me! I suddenly wanted to dance like crazy!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"I am "},{"text":"Darunia","color":"red"},{"text":"!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"I'm the big boss of the Gorons! Was there something you wanted to ask me about?"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"What?"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"You want the "},{"text":"Spiritual Stone of Fire","color":"red"},{"text":" too?"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"The Spiritual Stone of Fire, also known as the "},{"text":"Goron's Ruby","color":"red"},{"text":", is our race's hidden treasure..."}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"But hold on-I'm not going to give it to you that easily. If you want it so badly..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Why don't you go destroy the monsters inside of "},{"text":"Dodongo's Cavern","color":"red"},{"text":" and prove you're a real man?"}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"That way, everybody will be happy again! If you do it, I will give you anything you want, even the Spiritual Stone!"}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"I have something for you. I'm not really giving you this in return for anything, but take it anyway."}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"If you wear this, even a little fella like you can pick a "},{"text":"Bomb Flower","color":"red"},{"text":" by walking right up to one."}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run advancement grant @a only minecraft:_gear/goron_bracelet
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"You got the "},{"text":"Goron's Bracelet","color":"red"},{"text":"! Now you can pull up Bomb Flowers. Stand next to one to pull it up! Then, crouch to throw it!"}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26

execute if entity @a[scores={click=26..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=26..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=8..}] run scoreboard players set @s lifetime 8
execute if entity @a[scores={click=26..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=2..}] run scoreboard players set @s text 2
execute if entity @a[scores={click=26..}] run tag @e[type=area_effect_cloud,tag=Progress] add GoronBracelet
execute if entity @a[scores={click=26..}] run scoreboard players set @s text 2
execute if entity @a[scores={click=26..}] run fill 2180 61 1797 2183 61 1795 minecraft:air

execute if entity @a[scores={click=26..}] run tag @a remove DaruniaStart
execute if entity @a[scores={click=26..}] run scoreboard objectives remove click
