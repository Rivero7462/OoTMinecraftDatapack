tp @s 1618 73 1959
scoreboard players set @s lifetime 0

execute unless entity @a[scores={click=0..}] run fill 1617 74 1957 1617 74 1957 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1618 74 1958 1618 74 1958 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1619 74 1957 1619 74 1957 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1618 74 1956 1618 74 1956 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 1618 73 1957 0 ~
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @s add CompleteMask
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Boy: ","color":"gold"},{"text":"Gyaah! It's Dampé the gravekeeper!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Boy: ","color":"gold"},{"text":"???"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Boy: ","color":"gold"},{"text":"Oh, it's just a mask. I get a different kind of fright from that mask than I get from Dampé..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Boy: ","color":"gold"},{"text":"With this mask, I'll be just like Dampé! Here's my money!"}]
execute if entity @a[scores={click=7}] run give @a minecraft:lime_dye{display:{Name:"{\"text\":\"Green Rupee\"}"},Item:1b} 30
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a {"text":"You sold the 30-Rupee mask to a kid for full price?! And he didn't mind paying at all!"}
execute if entity @a[scores={click=9}] run clear @a minecraft:player_head{display:{Name:"\"Spooky Mask\""}} 1
execute if entity @a[scores={click=9}] run data merge entity @s {ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:7025152}}},{id:"leather_leggings",Count:1,tag:{display:{color:149966}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Skull Owner",Id:[I;-982913690,-634369595,-1827121720,-2062195919],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGM0ZTlmYTg5MmIxYWFhNjljMTI1NTY3ZDZkOGY5YTI2MTQxNTI5MjI1YjVmMjYxYTVlMjQ2YmZhZTlhYzQifX19"}]}}}}]}
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Head back to the mask shop to pay "},{"text":"30 Rupees ","color":"red"},{"text":"for the mask. You can get the new mask model too."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12

execute if entity @a[scores={click=12}] run tag @a remove NoOcarina
execute if entity @a[scores={click=12}] run tag @a add Mask6
execute if entity @a[scores={click=12}] run fill 1611 69 1952 1611 69 1952 minecraft:gold_block
execute if entity @a[scores={click=12}] run scoreboard players set @s text 2
execute if entity @a[scores={click=12}] run fill 1619 74 1958 1617 74 1956 minecraft:air
execute if entity @a[scores={click=12}] run tag @a remove SpookyMask
execute if entity @a[scores={click=12}] run scoreboard objectives remove click
