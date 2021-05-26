execute unless entity @a[scores={click=0..}] run fill 1520 79 1892 1520 79 1892 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1521 79 1891 1521 79 1891 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1522 79 1892 1522 79 1892 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1521 79 1893 1521 79 1893 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 1521 78 1892
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @s add CompleteMask
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Wha-ha-ha-hah! Do you think you're in disguise, Mr. Hero?"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Oh?"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Is that a \"Kee...something...\" character mask? I heard he's very popular recently!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" He's my boy's favorite. That \"Kee...something...\" mask... If you don't mind..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" My boy will be very happy with this! You really are Mr. Hero! Wha ha ha hah!"}]
execute if entity @a[scores={click=9}] run clear @a minecraft:player_head{display:{Name:"\"Keaton Mask\""}} 1
execute if entity @a[scores={click=9}] run data merge entity @s {ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:8224125}}},{id:"leather_leggings",Count:1,tag:{display:{color:15319922}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Guard",Id:[I;123400141,-1898690085,-1127666178,897543716],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTlhYmFkYTRmNjY5Zjc4NTEzNjkyZGE0N2U5OWNkZjNkNzllMmE0ODgzZGE2YzUyMmFjZTlhZTIxOGUxIn19fQ=="}]}}}}]}
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" You sold the 10-Rupee mask for "},{"text":"15 Rupees","color":"red"},{"text":". You earned a little profit."}]
execute if entity @a[scores={click=11}] run give @a minecraft:lime_dye{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b} 15
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Head to the mask shop and pay back the mask price of "},{"text":"10 Rupees","color":"red"},{"text":"."}]

execute if entity @a[scores={click=13}] run tag @a remove NoOcarina
execute if entity @a[scores={click=13}] run scoreboard players set @s text 3
execute if entity @a[scores={click=13}] run tag @a add Mask2
execute if entity @a[scores={click=13}] run fill 1520 79 1891 1522 79 1893 minecraft:air
execute if entity @a[scores={click=13}] run tag @a remove KeatonMask
execute if entity @a[scores={click=13}] run scoreboard objectives remove click
