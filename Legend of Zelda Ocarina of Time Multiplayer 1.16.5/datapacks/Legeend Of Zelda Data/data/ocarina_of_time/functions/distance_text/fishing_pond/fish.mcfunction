execute if entity @a[nbt={Inventory:[{tag:{2Pound:1b}}]}] run scoreboard players set @s timer 2
execute if entity @a[nbt={Inventory:[{tag:{3Pound:1b}}]}] run scoreboard players set @s timer 3
execute if entity @a[nbt={Inventory:[{tag:{4Pound:1b}}]}] run scoreboard players set @s timer 4
execute if entity @a[nbt={Inventory:[{tag:{5Pound:1b}}]}] run scoreboard players set @s timer 5
execute if entity @a[nbt={Inventory:[{tag:{6Pound:1b}}]}] run scoreboard players set @s timer 6
execute if entity @a[nbt={Inventory:[{tag:{7Pound:1b}}]}] run scoreboard players set @s timer 7
execute if entity @a[nbt={Inventory:[{tag:{8Pound:1b}}]}] run scoreboard players set @s timer 8
execute if entity @a[nbt={Inventory:[{tag:{9Pound:1b}}]}] run scoreboard players set @s timer 9
execute if entity @a[nbt={Inventory:[{tag:{10Pound:1b}}]}] run scoreboard players set @s timer 10
execute if entity @a[nbt={Inventory:[{tag:{11Pound:1b}}]}] run scoreboard players set @s timer 11
execute if entity @a[nbt={Inventory:[{tag:{12Pound:1b}}]}] run scoreboard players set @s timer 12
execute if entity @a[nbt={Inventory:[{tag:{13Pound:1b}}]}] run scoreboard players set @s timer 13
execute if entity @a[nbt={Inventory:[{tag:{14Pound:1b}}]}] run scoreboard players set @s timer 14
execute if entity @a[nbt={Inventory:[{tag:{15Pound:1b}}]}] run scoreboard players set @s timer 15
execute if entity @a[nbt={Inventory:[{tag:{16Pound:1b}}]}] run scoreboard players set @s timer 16
execute if entity @a[nbt={Inventory:[{tag:{17Pound:1b}}]}] run scoreboard players set @s timer 17
execute if entity @a[nbt={Inventory:[{tag:{18Pound:1b}}]}] run scoreboard players set @s timer 18
execute if entity @a[nbt={Inventory:[{tag:{19Pound:1b}}]}] run scoreboard players set @s timer 19
execute if entity @a[nbt={Inventory:[{tag:{20Pound:1b}}]}] run scoreboard players set @s timer 20
execute if entity @a[nbt={Inventory:[{tag:{21Pound:1b}}]}] run scoreboard players set @s timer 21
execute if entity @a[nbt={Inventory:[{tag:{Loach:1b}}]}] run scoreboard players set @s timer 22

#Loach
execute if entity @a[nbt={Inventory:[{tag:{Loach:1b}}]}] run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"Well, well... WOW! What a rare fish! This is a "},{"text":"Hyrule Loach","color":"red"},{"text":"! For this fish, size doesn't matter. I'll give you this prize!"}]
execute if entity @a[nbt={Inventory:[{tag:{Loach:1b}}]}] run give @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b}

#Bigger
execute if entity @a[tag=Adult] if score @s timer > @s lifetime if entity @s[scores={timer=2..21}] run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"WHOA! This fish is huge! It looks like a new record! It's at least "},{"score":{"name":"@s","objective":"timer"},"color":"red"},{"text":" pounds","color":"red"},{"text":"! Seriously! OK, here is your prize!"}]
execute unless entity @a[tag=Adult] if score @s timer > @s GameTimer if entity @s[scores={timer=2..21}] run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"WHOA! This fish is huge! It looks like a new record! It's at least "},{"score":{"name":"@s","objective":"timer"},"color":"red"},{"text":" pounds","color":"red"},{"text":"! Seriously! OK, here is your prize!"}]
execute unless entity @a[tag=Adult] if score @s timer > @s GameTimer if entity @s[scores={timer=7..9}] run give @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}
execute if block 411 57 2719 minecraft:gold_block if score @s timer > @s GameTimer if entity @s[scores={timer=11..12}] run give @a minecraft:red_dye{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b} 1
execute if entity @a[tag=Adult] if score @s timer > @s lifetime if entity @s[scores={timer=7..9}] run give @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}
execute if entity @a[tag=Adult] if score @s timer > @s lifetime if entity @s[scores={timer=10..12}] run give @a minecraft:red_dye{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b} 1
execute if block 411 57 2718 minecraft:gold_block if score @s timer > @s lifetime if entity @s[scores={timer=14..21}] run give @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b}
#Heart Piece
execute unless entity @a[tag=Adult] unless block 411 57 2719 minecraft:gold_block if score @s timer > @s GameTimer if entity @s[scores={timer=10..21}] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute unless entity @a[tag=Adult] unless block 411 57 2719 minecraft:gold_block if score @s timer > @s GameTimer if entity @s[scores={timer=10..21}] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute unless entity @a[tag=Adult] unless block 411 57 2719 minecraft:gold_block if score @s timer > @s GameTimer if entity @s[scores={timer=10..21}] run fill 411 57 2719 411 57 2719 minecraft:gold_block
#Golden Scale
execute unless block 411 57 2718 minecraft:gold_block if score @s timer > @s lifetime if entity @s[scores={timer=13..21}] run tellraw @a ["",{"text":"You got the "},{"text":"Golden Scale","color":"blue"},{"text":"! Now you can dive much deeper than you could before!"}]
execute unless block 411 57 2718 minecraft:gold_block if score @s timer > @s lifetime if entity @s[scores={timer=13..21}] run tag @e[type=area_effect_cloud,tag=Progress] add GoldenScale
execute unless block 411 57 2718 minecraft:gold_block if score @s timer > @s lifetime if entity @s[scores={timer=13..21}] run advancement grant @a only minecraft:_gear/golden_scale
execute unless block 411 57 2718 minecraft:gold_block if score @s timer > @s lifetime if entity @s[scores={timer=13..21}] run fill 411 57 2718 411 57 2718 minecraft:gold_block

#Smaller
execute if entity @a[tag=Adult] if score @s timer <= @s lifetime run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"Well, it's "},{"score":{"name":"@s","objective":"timer"},"color":"red"},{"text":" pounds","color":"red"},{"text":"... Not bad, but there are bigger fish in there!"}]
execute unless entity @a[tag=Adult] if score @s timer <= @s GameTimer run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"Well, it's "},{"score":{"name":"@s","objective":"timer"},"color":"red"},{"text":" pounds","color":"red"},{"text":"... Not bad, but there are bigger fish in there!"}]

#Finish
execute unless entity @a[tag=Adult] if score @s timer > @s GameTimer unless entity @s[scores={timer=22}] run scoreboard players operation @s GameTimer = @s timer
execute if score @s timer > @s lifetime unless entity @s[scores={timer=22}] run scoreboard players operation @s lifetime = @s timer
execute if score @s GameTimer > @s lifetime unless entity @s[scores={timer=22}] run scoreboard players operation @s lifetime = @s GameTimer
tag @s add stoptext
scoreboard players set @s timer 0
clear @a minecraft:cod{Fish:1b}
clear @a minecraft:salmon{Fish:1b}
