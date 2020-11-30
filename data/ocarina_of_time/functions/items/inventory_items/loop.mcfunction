#Fairy
execute if entity @s[nbt={Inventory:[{tag:{BottledFairy:1b}}]}] run function ocarina_of_time:items/bottled_items/fairy_revive/health

#Claim Check
execute if entity @s[scores={time=23600..23605},nbt={Inventory:[{tag:{ClaimCheck:1b}}]}] unless entity @s[tag=ClaimCheckStart] run time set 23606
execute if entity @s[nbt={Inventory:[{tag:{ClaimCheck:1b}}]}] run tag @s add ClaimCheckStart

#Heart Piece
execute if entity @s[nbt={Inventory:[{tag:{HeartPiece:1b}}]}] run function ocarina_of_time:items/hearts/heart_piece

#Heart Container
execute if entity @s[nbt={Inventory:[{tag:{HeartContainer:1b}}]}] run function ocarina_of_time:items/hearts/heart_container
