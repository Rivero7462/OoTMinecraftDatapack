#Megaton Hammer
execute if entity @s[nbt={SelectedItem:{tag:{Hammer:1b}}}] run function ocarina_of_time:items/main_hand_items/holding_hammer

#Giant's Knife
execute if entity @s[nbt={SelectedItem:{tag:{GiantKnife:1b}}}] run function ocarina_of_time:items/main_hand_items/holding_knife

#Biggoron Sword
execute if entity @s[nbt={SelectedItem:{tag:{BiggoronSword:1b}}}] run function ocarina_of_time:items/main_hand_items/biggoron_sword

#Bombchu
execute if entity @s[nbt={SelectedItem:{tag:{Bombchu:1b}}}] unless entity @s[tag=BowlingGame] run scoreboard objectives setdisplay sidebar BombchuCount
execute if entity @s[nbt={SelectedItem:{tag:{Bombchu:1b}}}] unless entity @s[tag=BowlingGame] run tag @a add HideDisplayScore
execute if entity @a[tag=BowlingGame] if entity @a[nbt={SelectedItem:{tag:{Bombchu:1b}}}] run scoreboard objectives setdisplay sidebar MinigameBombchus
execute if entity @a[tag=BowlingGame] if entity @a[nbt={SelectedItem:{tag:{Bombchu:1b}}}] run tag @a add HideDisplayScore

#Deku Nuts
execute if entity @s[nbt={SelectedItem:{tag:{DekuNut:1b}}}] anchored feet rotated ~ 0 run function ocarina_of_time:items/deku_nuts

#Slingshot
execute if entity @s[nbt={SelectedItem:{tag:{Slingshot:1b}}}] run tag @s add HoldingSlingshot

#Fairy Bow
execute if entity @s[nbt={SelectedItem:{tag:{NormalArrow:1b}}}] unless entity @s[tag=FireArrow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] unless entity @s[tag=IceArrow] unless entity @s[tag=LightArrow] unless entity @s[tag=EmptyBow] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s remove NoBow
execute if entity @s[level=1..] if entity @s[nbt={SelectedItem:{tag:{FireArrow:1b}}}] unless entity @s[tag=NormalArrow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] unless entity @s[tag=IceArrow] unless entity @s[tag=LightArrow] unless entity @s[tag=EmptyBow] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s remove NoBow
execute if entity @s[level=1..] if entity @s[nbt={SelectedItem:{tag:{IceArrow:1b}}}] unless entity @s[tag=NormalArrow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] unless entity @s[tag=FireArrow] unless entity @s[tag=LightArrow] unless entity @s[tag=EmptyBow] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s remove NoBow
execute if entity @s[level=2..] if entity @s[nbt={SelectedItem:{tag:{LightArrow:1b}}}] unless entity @s[tag=NormalArrow] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] unless entity @s[tag=FireArrow] unless entity @s[tag=IceArrow] unless entity @s[tag=EmptyBow] unless block ~ ~.5 ~ minecraft:water unless block ~ ~-.2 ~ minecraft:water run tag @s remove NoBow
