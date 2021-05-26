execute unless entity @a[scores={click=0..}] run tag @a add FinishValley
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/chamber_of_sages
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1..}] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=15}] run tp @s 999 26 1469
execute if entity @a[scores={click=1}] run tag @a remove SpiritMedallion
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"Kid, let me thank you."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"Heheheh... Look what the little kid has become in the past seven years-a competent swordsman!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"By the way..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"I really messed up..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"I was brainwashed by those old witches and used by Ganondorf to do his evil will..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"But isn't it funny? That a person like me could turn out to be the "},{"text":"Sage of Spirit","color":"yellow"},{"text":"?"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"And now I'm going to fight them as one of the six Sages! Heh heh..."}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"I'm going to pay them back for what they did to me!"}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"Kid..."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"No... ","color":"white"},{"selector":"@p","color":"white"},{"text":", the Hero of Time!","color":"white"}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"Instead of keeping the promise I made back then, I give you this "},{"text":"Medallion","color":"yellow"},{"text":"!"}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"Take it!"}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run advancement grant @a only minecraft:_gear/spirit_medallion
execute if entity @a[scores={click=25}] run summon minecraft:item 995.9 36 1467 {Item:{id:shears,Count:1,tag:{CustomModelData:6}},Tags:["NoPickup"]}
execute if entity @a[scores={click=25..27}] run data merge entity @e[type=item,nbt={Item:{tag:{CustomModelData:6}}},limit=1] {PickupDelay:1000}
execute if entity @a[scores={click=25}] run data merge entity @s {Pose:{Head:[-45f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[-135f,20f,0f],RightArm:[-135f,-20f,0f]}}
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"You received the "},{"text":"Spirit Medallion","color":"yellow"},{"text":"! Nabooru awakens as a Sage and adds her power to yours!"}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"If only I'd known you would become such a handsome man..."}]
execute if entity @a[scores={click=27}] run tp @a 999 4 1386
execute if entity @a[scores={click=27}] run tp @s 999 21 1470
execute if entity @a[scores={click=27}] run kill @e[type=item,nbt={Item:{tag:{CustomModelData:6}}}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"I should have kept the promise I made back then..."}]
execute if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute if entity @a[scores={click=31..}] run tp @a 461 54.5 402 45 ~
execute if entity @a[scores={click=31..}] run time set day
execute if entity @a[scores={click=31..}] run function ocarina_of_time:music/hyrule_field
execute if entity @a[scores={click=31..}] run tag @e[type=area_effect_cloud,tag=Progress] add GotSpiritMedallion
execute if entity @a[scores={click=31..}] unless entity @e[type=area_effect_cloud,tag=Progress,tag=GotShadowMedallion,tag=GotSpiritMedallion] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=23..}] run scoreboard players set @s lifetime 23
execute if entity @a[scores={click=31..}] run tag @a remove SpiritMedallion2
execute if entity @a[scores={click=31..}] run scoreboard objectives remove click

execute as @e[type=armor_stand,tag=SpiritMedallion] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[type=armor_stand,tag=SpiritMedallion] at @s if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-.5 ~
