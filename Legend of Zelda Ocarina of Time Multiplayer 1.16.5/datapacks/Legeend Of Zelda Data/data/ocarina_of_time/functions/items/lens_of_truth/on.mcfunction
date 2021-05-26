#Hidden Wall Locations
execute unless entity @s[level=..0] unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:103b}]}] unless entity @s[tag=HoldLens] run function ocarina_of_time:items/lens_of_truth/places

execute unless entity @s[level=..0] if entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:103b}]}] run tellraw @a ["",{"text":"You can't use with "},{"text":"mask ","color":"red"},{"text":"on!"}]
execute if entity @s[level=..0] run tellraw @a ["",{"text":"Not enough "},{"text":"Magic","color":"green"},{"text":"!"}]
scoreboard players set @a UseItem 0
