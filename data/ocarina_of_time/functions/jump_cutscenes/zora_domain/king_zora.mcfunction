tag @e[type=armor_stand,tag=FakeKingZora] add stoptext

execute unless entity @a[scores={click=0..}] run fill 1773 58 2294 1773 58 2294 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1774 58 2293 1774 58 2293 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1775 58 2294 1775 58 2294 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1774 58 2295 1774 58 2295 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 1774 57 2294
execute unless entity @a[scores={click=0..}] run clear @a minecraft:shears{display:{Name:"{\"text\":\"Letter\"}"},Unbreakable:1b,Damage:14,HideFlags:63,BottleLetter:1b}
execute unless entity @a[scores={click=0..}] run scoreboard players add @e[type=area_effect_cloud,tag=Progress] Bottle 1
execute unless entity @a[scores={click=0..}] run give @a minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"Ho, this letter! It's from "},{"text":"Princess Ruto","color":"red"},{"text":"!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"Hmmm... Let's see... She's inside "},{"text":"Lord Jabu-Jabu","color":"red"},{"text":"? That's not possible!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"Our guardian god, Lord Jabu-Jabu, would never eat my dear Princess Ruto!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"But since that stranger, "},{"text":"Ganondorf","color":"red"},{"text":", came here, Lord Jabu-Jabu has been a little green around the gills..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"The evidence seems clear. Of course, you'll go find Ruto. You can pass through here to the altar of Lord Jabu-Jabu."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"I'll keep this letter. You keep the "},{"text":"bottle ","color":"red"},{"text":"it was in. Take it respectfully!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"King Zora: ","color":"gold"},{"text":"Please find my dear "},{"text":"Princess Ruto","color":"red"},{"text":" immediately!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tag @s add KingZoraMove
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16

execute if entity @s[tag=KingZoraMove] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=1}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=24}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=24}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=47}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=47}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=70}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=70}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=93}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=93}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=116}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=116}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=139}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=139}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=162}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=162}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=185}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=185}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=208}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=208}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=231}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=231}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=254}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=254}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=277}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=277}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=300}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=300}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=323}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=323}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=346}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=346}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=369}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=369}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=392}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=392}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=415}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=415}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=438}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=438}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=461}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=461}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=484}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=484}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=507}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=507}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=530}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=530}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=553}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=553}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=576}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=576}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~
execute if entity @s[scores={timer=600}] at @a run playsound minecraft:king_zora music @a ~ ~ ~ 4
execute if entity @s[scores={timer=600}] as @e[type=armor_stand,tag=KingZora] at @s run tp @s ~-.08 ~ ~

execute if entity @s[scores={timer=600..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=11..}] run scoreboard players set @s lifetime 11
execute if entity @s[scores={timer=600..}] run tag @a add MeetJabuJabu
execute if entity @s[scores={timer=600..}] run fill 1770 58 2287 1770 58 2287 minecraft:gold_block
execute if entity @s[scores={timer=601..}] run fill 1773 58 2293 1775 58 2295 minecraft:air
execute if entity @s[scores={timer=601..}] run fill 1775 59 2287 1773 62 2286 minecraft:air replace minecraft:barrier
execute if entity @s[scores={timer=601..}] run fill 1773 59 2287 1771 62 2286 minecraft:barrier replace minecraft:air
execute if entity @s[scores={timer=601..}] run scoreboard players set @e[type=armor_stand,tag=FakeKingZora] text 2
execute if entity @s[scores={timer=601..}] run tag @s remove KingZoraMove

execute if entity @s[scores={timer=601..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=601..}] run tag @a remove MeetKingZora
execute if entity @s[scores={timer=601..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=601..}] run scoreboard players set @s timer 0