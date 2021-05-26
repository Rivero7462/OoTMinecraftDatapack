effect give @a minecraft:regeneration 1 10 true

execute unless entity @a[scores={click=0..}] run summon minecraft:armor_stand -134 254 308 {Tags:["Navi7"],NoGravity:1b,Small:0b,ShowArms:0b,Invisible:1b,Rotation:[180f],ArmorItems:[{},{},{},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Navi\"}",Id:[I;187647191,704335702,-1723810939,-35746885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNmUwN2UxZmYyZWRkNzJlNWUzMGJlYmRlZjExYjZhZTE0ODdiOWRhZGQzNzlhM2I1NjEwZWI3ZmU5ZWE4NSJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute unless entity @a[scores={click=0..}] run tag @a remove FinalZeldaGoodbye
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/princess_zelda
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0


execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Thank you, "},{"selector":"@p"},{"text":"..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Thanks to you, Ganondorf has been sealed inside the Evil Realm!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Thus, peace will once again reign in this world...for a time."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run data merge entity @s {Pose:{Head:[20f,-30f,0f]}}
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"All the tragedy that has befallen Hyrule was my doing..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"I was so young...I could not comprehend the consequences of trying to control the Sacred Realm."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"I dragged you into it too."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Now it is time for me to make up for my mistakes..."}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"You must lay the Master Sword to rest and close the Door of Time..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"However, by doing this, the road between times will be closed..."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run data merge entity @s {Pose:{LeftArm:[-40f,0f,0f]}}
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"selector":"@p"},{"text":", give the ocarina to me..."}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"As a Sage, I can return you to your original time with it."}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run kill @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}]
execute if entity @a[scores={click=23}] run clear @a minecraft:carrot_on_a_stick{OcarinaZelda:1b}
execute if entity @a[scores={click=23}] run data merge entity @s {HandItems:[{id:stone,Count:1b,tag:{CustomModelData:25}},{id:stone,Count:1b,tag:{CustomModelData:27}}]}
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Peace has returned to Hyrule..."}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"It is time for us to say good-bye..."}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Now go home, "},{"selector":"@p"},{"text":". Regain your lost time!"}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Home...where you are supposed to be... The way you are supposed to be..."}]
execute if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute if entity @a[scores={click=31..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run data merge entity @s {Pose:{LeftArm:[-30f,-5f,45f],RightArm:[-60f,-20f,10f]}}
execute if entity @s[scores={timer=10}] run stopsound @a music
execute if entity @s[scores={timer=10}] at @a run playsound minecraft:music_disc.mall music @a ~ ~ ~ 1 1

execute if entity @s[scores={timer=30}] run tp @a -135 1 309
execute if entity @s[scores={timer=60}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:25}},{id:stone,Count:1b,tag:{CustomModelData:25}}]}
execute if entity @s[scores={timer=60}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Thank you... "},{"selector":"@p"},{"text":"..."}]
execute if entity @s[scores={timer=120}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"Good-bye..."}]
execute if entity @s[scores={timer=120}] run kill @e[type=armor_stand,tag=Navi7]
execute if entity @s[scores={timer=180..}] at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["StaffRole"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={timer=180..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=180..}] run tag @a add StaffRole
execute if entity @s[scores={timer=180..}] run tag @a remove FinalZeldaGoodbye2
execute if entity @s[scores={timer=180..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=180..}] run scoreboard players set @s timer 0

#Navi
scoreboard players add @e[type=armor_stand,tag=Navi7] timer 1
execute as @e[type=armor_stand,tag=Navi7] at @s if entity @s[scores={timer=0..5}] run tp @s ~ 254 ~
execute as @e[type=armor_stand,tag=Navi7] at @s if entity @s[scores={timer=5..10}] run tp @s ~ ~.02 ~
execute as @e[type=armor_stand,tag=Navi7] at @s if entity @s[scores={timer=10..15}] run tp @s ~ ~-.03 ~
execute as @e[type=armor_stand,tag=Navi7] at @s if entity @s[scores={timer=15..20}] run tp @s ~ ~-.02 ~

execute as @e[type=armor_stand,tag=Navi7] if entity @s[scores={timer=20..}] run scoreboard players reset @s timer
