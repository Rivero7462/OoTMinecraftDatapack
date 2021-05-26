execute unless entity @a[scores={click=0..}] run fill -613 77 -668 -614 77 -668 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -612 77 -667 -612 77 -666 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -613 77 -665 -614 77 -665 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -615 77 -666 -615 77 -667 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a -613.0 76 -666.0 140 -15
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @s add CompleteMask
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Skull Kid: ","color":"gold"},{"text":"Hee hee! Under that mask...aren't you that Kokiri kid?"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Skull Kid: ","color":"gold"},{"text":"Quite an unusual mask you have there. Hee hee! I like it! It may make me look a little bit tougher."}]
execute if entity @a[scores={click=3}] run tag @s add Walk
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Skull Kid: ","color":"gold"},{"text":"Yowza! I'm gonna wear this all the time!"}]
execute if entity @a[scores={click=5}] run clear @a minecraft:player_head{display:{Name:"\"Skull Mask\""}} 1
execute if entity @a[scores={click=5}] run data merge entity @s {ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:16736000}}},{id:"leather_leggings",Count:1,tag:{display:{color:1882624}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16736000}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Skull Owner",Id:[I;-547863011,-1244774300,-1494108304,1497066145],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2M3YTE4NmNjZWI3NDJmYTI3NDk5Y2NlOTVkMGE3OWNmYTg0MmE5MTM2ODYzZmU2OTU2NmQ3YWQyNDdkIn19fQ=="}]}}}}]}
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"He just gave you "},{"text":"10 Rupees","color":"red"},{"text":" for this 20-Rupee mask! You lost money on that deal!"}]
execute if entity @a[scores={click=7}] run give @a minecraft:lime_dye{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b} 10
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Go back to the mask shop and pay "},{"text":"20 Rupees","color":"red"},{"text":" for the mask. The difference will have to come out of your pocket."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10

execute if entity @a[scores={click=10}] run tag @a remove NoOcarina
execute if entity @a[scores={click=10}] run tag @s remove Walk
execute if entity @a[scores={click=10}] run tag @a add Mask4
execute if entity @a[scores={click=10}] run tp @s -618 72 -672
execute if entity @a[scores={click=10}] run scoreboard players set @s timer 0
execute if entity @a[scores={click=10}] run scoreboard players set @s text 2
execute if entity @a[scores={click=10}] run fill -612 77 -668 -615 77 -665 minecraft:air
execute if entity @a[scores={click=10}] run tag @a remove SkullMask
execute if entity @a[scores={click=10}] run scoreboard objectives remove click

execute if entity @s[tag=Walk] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run tp @s ~.5 ~ ~.6
execute if entity @s[scores={timer=4}] run tp @s ~.5 75 ~.6
execute if entity @s[scores={timer=7}] run tp @s ~.5 ~ ~.6
execute if entity @s[scores={timer=10}] run tp @s ~.5 ~ ~.6